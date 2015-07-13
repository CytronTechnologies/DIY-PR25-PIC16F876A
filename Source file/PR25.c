//==========================================================================
//	Author              : Cytron Technologies
//	Project             : RFID door security
//	Project description	: Scan RFID tag, display ID on the lcd and enable 
//                        to save ID in this program.
//                        Only SW1 used in this program.Compatible with
//                        -MPLAB IDE with HITECH C compiler
//                        -MPLABX with HITECH C compiler v9.83/v9.82/v9.80 and XC8 compiler.
//==========================================================================
//	include
//==========================================================================
#if defined(__XC8)
  #include <xc.h>
 #pragma config CONFIG = 0x3F32
//FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
//WDTE = ON        // Watchdog Timer Enable bit (WDT enabled)
//PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
//BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
//LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
//CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#else
//#include <htc.h> //include the PIC microchip header file
#include <pic.h>

//	configuration
//==========================================================================
__CONFIG (0x3F32); //configuration of microcontroller

#endif

//	define
//==========================================================================									
#define	RS        	RA0				//RS pin of the LCD display
#define	E         	RC5				//E pin of the LCD display
#define	B_LIGHT   	RC4				//backlight of the LCD display (1 to on backlight)
#define RELAY     	RA1				//magnetic lock(active high)
#define	LCD_DATA  	PORTB 			//LCD 8-bit data PORT
#define	LED       	RC3				//led(active high)
#define DATA0     	RC1				//data0(green wire) of RFID reader
#define DATA1     	RC2				//data1(white wire) of RFID reader
#define SW1       	RA4				//button to save ID(active low)
#define RX_PIN 		RC7				//Rx pin on PIC
#define TX_PIN 		RC6				//Tx pin on PIC


//	function prototype				(every function must have a function prototype)
//==========================================================================
void init(void);
void delay(unsigned long data);			
void send_config(unsigned char data);
void send_char(unsigned char data);
void send_dec(unsigned long data,unsigned char num_dig);
void e_pulse(void);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);


//	main function					(main fucntion of the program)
//==========================================================================
void main(void)
{
	unsigned char i, repeat, a, b, database;						
	unsigned char data[26];							
	unsigned char convert1=0;							//clear convert1
	unsigned int convert2=0;							//clear convert2
	unsigned char mode=0;                 //clear mode
	unsigned char id1[2]={127,0};					//initialize 1st id1 in the array
	unsigned int id2[2]={22449,0};				//initialize 1st id2 in the array

	init();                               //initialization
	lcd_clr();                            //clear the lcd
	id1[1]=0;                             //clear second id1 in the array, first id1 is intialized
	id2[1]=0;                             //clear second id2 in the array, first id2 is intialized
	B_LIGHT=1;                            //on the back light
	lcd_goto(0);                          //set the lcd cursor to location 0
	send_string (" RFID door");						//display " RFID door"	
	lcd_goto(20);                         //set the lcd cursor to location 20
	send_string (" security");						//display " security"

	for(repeat=12; repeat>0; repeat--)    //repeat delay(1000000)for 12 times
	{
		delay(1000000);
	}

	while(1)
	{
		convert1=0;                         //clear convert1
		convert2=0;                         //clear convert2
		
		lcd_clr();                          //clear the lcd
		lcd_goto(0);                        //set the lcd cursor to location 0
		send_string ("Place your tag");			//display "Place your tag"
		lcd_goto(20);                       //set the lcd cursor to location 20
		send_string ("on the reader");			//display "on the reader"
		
		while(mode==0)											//no RFID tag is placed on RFID reader
		{
			if((DATA0 ==0)||(DATA1==0)) 	mode=1;	//RFID tag is placed on RFID reader (receive data stream from RFID tag)
			else if(SW1==0)	mode=2;								//push button is pressed, enter to save mode
		}

		//RFID tag is placed on RFID reader (RFID reader receive data stream from RFID tag)
		while(mode==1)											
		{
			while(i<26)                         //repeat the loop until all 26 bit data are sent (start from 0 to 25)
			{	
				while((DATA0==1)&&(DATA1==1));		//wait while data0 and data1 remain at high logic level (no changes at data0 and data1)
				if((DATA0==0)&&(DATA1==1))				//if data0 changes (data0 is active low)
				{
					data[i]=0;                      //save that the bit received is 0
					while((DATA0==0)&&(DATA1==1));	//wait for data stream finish sending from RFID tag again (data0 or data1 will back to high logic)
				}
				else if ((DATA0==1)&&(DATA1==0))	//if data1 received is 0 (data1 is active low)
				{
					data[i]=1;                      //save that the bit received is 1
					while((DATA0==1)&&(DATA1==0));	//wait for data stream finish sending from RFID tag again (data0 or data1 will back to high logic)
				}
				i+=1;                             //i+1
			}

			mode=0;															//after all data are sent, reset as no RFID tag is placed on RFID reader 
                                          //no data stream received from RFID tag
			i=0;                                //clear i
			lcd_clr();													//clear the lcd
			
			for(i=0;i<8;i++)										//loop for data[0]-data[7]
			{
				convert1=(convert1<<1)|data[i+1];	//shift current data and combine with previous data, store data in convert1			}
			}
			for(i=0;i<16;i++)										//loop for data[8]-data[25]
			{
				convert2=(convert2<<1)|data[i+9];	//shift current data and combine with previous data, store data in convert2
			}
			
			for(b=0;b<2;b++)										//compare with id[0] and id[1]
			{		
				if((convert1==id1[b])&&(convert2==id2[b])) database=1;		//id doesn't match, set database to 1
			}
			lcd_clr();                                                  //clear the lcd
		}

		//push button is pressed, enter to save mode	
		while(mode==2)											
		{
			lcd_clr();                          //clear the lcd
			lcd_goto(0);                        //set the lcd cursor to location 0
			send_string ("    Save mode   ");		//display " Save mode "
			lcd_goto(20);                       //set the lcd cursor to location 0
			send_string (" Place your tag");		//display " Save mode "
			
			while(i<26)                         //loop for data less than 26
			{	
				while((DATA0==1)&&(DATA1==1));		//wait for data0 and data1 to change
				if((DATA0==0)&&(DATA1==1))				//if data0 changes (data0 is active low)
				{
					data[i]=0;                      //save that the bit received is 0
					while((DATA0==0)&&(DATA1==1));	//wait until data0 and data1 back to high logic
				}
				else if ((DATA0==1)&&(DATA1==0))	//if data1 changes (data1 is active low)
				{
					data[i]=1;                      //save that the bit received is 1
					while((DATA0==1)&&(DATA1==0));	//wait until data0 and data1 back to high logic
				}
				i+=1;                             //i+1
			}
			
			mode=0;                             //clear mode
			i=0;                                //clear i
			lcd_clr();                          //clear the lcd

			for(i=0;i<8;i++)                    //loop for data[0]-data[7]
			{
				convert1=(convert1<<1)|data[i+1];	//shift previous data and combine with present data
			}  
			for(i=0;i<16;i++)                   //loop for data[8]-data[25]
			{	
				convert2=(convert2<<1)|data[i+9];	//shift previous data and combine with present data
			}
	
			id1[1]=convert1;                    //save convert1 to id1
			id2[1]=convert2;                    //save convert2 to id2
							
			database=2;                         //display ID no. and "User ID saved" on LCD
			lcd_clr();                          //clear the lcd
		}		

		switch(database)						
		{
			case 1:                             //id 1 match
				RELAY=1;                          //door lock released
				LED=0;                            //led off
				lcd_goto(0);                      //set lcd cursor to location 0
				send_string("ID no: ");						//display "ID no: "
				lcd_goto(7);                      //set lcd cursor to location 7
				send_dec(convert1,3);							//display convert1 in 3 decimal number
				lcd_goto(10);                     //set lcd cursor to location 10
				send_dec(convert2,5);							//display convert2 in 5 decimal number
				lcd_goto(20);                     //set lcd cursor to location 20
				send_string("User identified. ");	//display "User identified."
				for(repeat=12; repeat>0; repeat--)//repeat delay(100000) for 12 times
				{
					delay(1000000);
				}	
				lcd_clr();                        //clear the LCD
				lcd_goto(0);                      //set lcd cursor to location 0
				send_string("Door lock will"); 		//display "Door lock will be locked in"
				lcd_goto(20);
				send_string("be locked in ");					
	
				for(a=5;a>0;a--)                  //display number from 5 to 1
				{
					lcd_goto(34);                   //set lcd cursor to location 34
					send_dec(a, 1);                 //display a in 1 decimal number
					for(repeat=10; repeat>0; repeat--)//repeat delay(100000) for 10 times
					{
						delay(1000000);
					}			
				}
				break;
			
			case 2:                             //save id
				LED=0;                            //led off
				lcd_clr();                        //clear lcd
				lcd_goto(0);                      //set lcd cursor to location 0
				send_string("ID no: ");						//display "ID no: "					
				lcd_goto(7);                      //set lcd cursor to location 7
				send_dec(convert1,3);							//display convert1 in 3 decimal number
				lcd_goto(10);                     //set lcd cursor to location 10
				send_dec(convert2,5);							//display convert2 in 5 decimal number
				lcd_goto(20);                     //set lcd cursor to location 20
				send_string("User ID saved.");		//display "User ID saved."
				break;
	
			default:                            //id doesnt match
				RELAY=0;                          //door lock locked
				LED=1;                            //led light on
				lcd_goto(0);                      //set lcd cursor to location 0
				send_string("ID no: ");						//display "ID no: "
				lcd_goto(7);                      //set lcd cursor to location 7
				send_dec(convert1,3);							//display convert in 3 decimal number
				lcd_goto(10);                     //set lcd cursor to location 10
				send_dec(convert2,5);							//display convert in 5 decimal number
				lcd_goto(20);                     //set lcd cursor to location 20
				send_string("User not found.");		//display "User not found."
				break;
		}

		for(repeat=12; repeat>0; repeat--)		//repeat delay(100000) for 12 times
		{
			delay(1000000);
		}
		 
		i=0;                                  //clear i
		LED=0;                                //led off
		database=0;                           //no action taken, no RFID tag is placed on RFID reader
		RELAY=0;                              //off door lock
		convert1=0;                           //clear convert1
		convert2=0;                           //clear convert2
	}
}

// Initailization
//============================================================================================================
void init()
{
	//SET PORT A AS DIGITAL
	ADCON1 = 0X06;											//default all analog pin as digital

	// Tris configuration (input or output)
	TRISA = 0b00111100;										//set RA2, RA3, RA4, and RA5 as input, else as output
	TRISB = 0b00000000;										//set all PORTB pin as output
	TRISC = 0b00000111;										//set RC0 and RC1 as input, else as output

	// LCD configuration
	send_config(0b00000001);								//clear display at lcd
	send_config(0b00000010);								//Lcd Return to home 
	send_config(0b00000110);								//entry mode-cursor increase 1
	send_config(0b00001100);								//diplay on, cursor off and cursor blink off
	send_config(0b00111000);								//function

	B_LIGHT=0;												//on lcd back light
	delay(5000);											//delay
	LED=0;                            //off led
	RELAY=0;                          //off door lock
}

//	LCD	functions
//============================================================================================================
void delay(unsigned long data)						//delay function, the delay time
{	
	int i;
	for( i = data; i>0; i--);								//depend on the given value
}

void send_config(unsigned char data)			//send lcd configuration 
{
	RS=0;                                   //set lcd to config mode
	LCD_DATA=data;                          //lcd data port = data
	delay(400);								
	e_pulse();                              //pulse e to confirm the data
}

void send_char(unsigned char data)				//send lcd character
{
	RS=1;                                   //set lcd to display mode
	LCD_DATA = data;                        //lcd data port = data
	delay(400);
	e_pulse();                              //pulse e to confirm the data
}

void send_dec(unsigned long data,unsigned char num_dig)		//convert binary number and display number in decimal 
{
	if(num_dig>=10)											
	{
		data=data%10000000000;
		send_char(data/1000000000+0x30);
	}	
	if(num_dig>=9)
	{
		data=data%1000000000;
		send_char(data/100000000+0x30);
	}	
	if(num_dig>=8)
	{
		data=data%100000000;
		send_char(data/10000000+0x30);
	}	
	if(num_dig>=7)
	{
		data=data%10000000;
		send_char(data/1000000+0x30);
	}	
	if(num_dig>=6)
	{
		data=data%1000000;
		send_char(data/100000+0x30);
	}	
	if(num_dig>=5)
	{
		data=data%100000;
		send_char(data/10000+0x30);
	}	
	if(num_dig>=4)
	{
		data=data%10000;
		send_char(data/1000+0x30);
	}
	if(num_dig>=3)
	{
		data=data%1000;
		send_char(data/100+0x30);
	}
	if(num_dig>=2)
	{
		data=data%100;
		send_char(data/10+0x30);
	}
	if(num_dig>=1)
	{
		data=data%10;
		send_char(data+0x30);
	}
}

void e_pulse(void)										//pulse e to confirm the data
{
	E=1;
	delay(300);
	E=0;
	delay(300);
}

void lcd_goto(unsigned char data)				//set the location of the lcd cursor
{
 	if(data<16)                           //if the given value is (0-15) the
	{                                     //cursor will be at the upper line
	 	send_config(0x80+data);
	}
	else											//if the given value is (20-35) the 
	{													//cursor will be at the lower line
	 	data=data-20;						//location of the lcd cursor(2X16):
		send_config(0xc0+data);	// -----------------------------------------------------
	}													// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
}														// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
														// -----------------------------------------------------	

void lcd_clr(void)					//clear the lcd
{	
 	send_config(0x01);
	delay(350);	
}

void send_string(const char *s) 		//send a string to display in the lcd
{          
  	while (s && *s)send_char (*s++);
}









