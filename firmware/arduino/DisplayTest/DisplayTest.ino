//-----------------------------------------------------
//File: main.c
// Adapted From Electonic Assembly Application Notes
// https://www.lcd-module.de/support/application-note.html
//Auth: ELECTRONIC ASSEMBLY JM
//DATE: 08-28-2013
//-----------------------------------------------------

#include <SPI.h>
#include "lcd_spi.h"


#define nss Serial

#define TIME 1000
#define CONTRSTART 35
#define CONTRSPAN  15

const int register_select = _EA_REGISTER_SELECT;
const int display_select = _EA_DISPLAY_SELECT;


uint8_t i=0, j=0;
char charset1[] = {0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F , 0};
char charset2[] = {0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF , 0};


void setup() {
  pinMode(register_select, OUTPUT);  
  pinMode(register_select, HIGH);
  pinMode(display_select, OUTPUT);
  pinMode(display_select, HIGH);
  
  nss.begin(9600);  // start serial for output

  SPI.begin();

  //Define own chars (arrow up and down)
  uint8_t arrowd[] = {0x04, 0x04, 0x04, 0x04, 0x15, 0x0E, 0x04, 0x00};
  uint8_t arrowu[8];

  for (i=0; i<7; i++)
    arrowu[i]=arrowd[6-i];

  //define own characters
  DefineCharacter(0, arrowd);
  DefineCharacter(2, arrowu);

  //Show demo content
  initDispl();
  SetPosition( LINE1 );
  WriteString((char *)"Hi World");
  SetPosition(LINE2);
  WriteString((char *)"4Ln, 10Ch");
  SetPosition(LINE3);
  WriteString((char *)"3. Zeile");
  SetPosition(LINE4);
  WriteString((char *)"Def 8 c:");
  WriteChar(0);
  WriteChar(2);
  
// SetView(TOPVIEW); 
  delay(TIME * 10);
  ClrDisplay();
  SetView(BOTTOMVIEW);
  DisplayOnOff(DISPLAY_ON); //Disable cursor
  i=CONTRSTART;

}

void loop() {
 // initDispl();
    switch(j++)
    {
      case 0:
        ClrDisplay();
        SetPosition(LINE1);
        WriteString((char *)"DOGM104-A");
        SetPosition(LINE2);
        WriteString((char *)"SPI,I2C,8/");
        SetPosition(LINE3);
        WriteString((char *)"4Bit, 3.3V");
        SetPosition(LINE4);
        WriteString((char *)"diff Bklts");
        break;
      case 1:
        ClrDisplay();
        SetROM(ROMA);
        SetPosition(LINE1);
        WriteString((char *)"3 char set");
        SetPosition(LINE2);
        WriteString((char *)"ROMA Euro1");
        SetPosition(LINE3);
        WriteString(charset1);
        SetPosition(LINE4);
        WriteString(charset2);
        break;
      case 2:
        ClrDisplay();
        SetROM(ROMB);
        SetPosition(LINE1);
        WriteString((char *)"3 char set");
        SetPosition(LINE2);
        WriteString((char *)"ROMB Euro2");
        SetPosition(LINE3);
        WriteString(charset1);
        SetPosition(LINE4);
        WriteString(charset2);
        break;
      case 3:
        ClrDisplay();
        SetROM(ROMC);
        SetPosition(LINE1);
        WriteString((char *)"3 char set");
        SetPosition(LINE2);
        WriteString((char *)"ROMC Jap.");
        SetPosition(LINE3);
        WriteString(charset1);
        SetPosition(LINE4);
        WriteString(charset2);
        j=0;
        break;
      default:
        j=0;
        break;
    }
    if(i > (CONTRSTART + CONTRSPAN))
      i=CONTRSTART;    
    SetContrast(i++);  //show different contrast levels, using i as increment
    delay(TIME * 3);
}

