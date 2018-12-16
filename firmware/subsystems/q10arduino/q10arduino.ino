#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <Keypad.h>
#include <U8g2lib.h>

#include "Keypad_PCA955X.h"

// display
U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, U8X8_PIN_NONE);
const byte LCDROWS = 5;
const byte LCDCOLS = 21;
const byte FONTHEIGHT = 11;
char buf[LCDROWS][LCDCOLS + 1];
// cursor
short int pos = 0;

// keyboard
const byte ROWS = 7;
const byte COLS = 6;

const byte KS1 = '^'; // case shift character
const byte KS2 = '%'; // symbol lock character

char lowerKeys[ROWS][COLS] = {
    {'q', 'e', 'r', 'u', 'o', '1'},
    {'w', 's', 'g', 'h', 'l', '2'},
    {KS2, 'd', 't', 'y', 'i', '3'},
    {'a', 'p', KS1, '{', '<', '4'},
    {'>', 'x', 'v', 'b', '$', '5'},
    {' ', 'z', 'c', 'n', 'm', ' '},
    {'&', KS1, 'f', 'j', 'k', ' '}
};

char upperKeys[ROWS][COLS] = {
    {'Q', 'E', 'R', 'U', 'O', '1'},
    {'W', 'S', 'G', 'H', 'L', '2'},
    {KS2, 'D', 'T', 'Y', 'I', '3'},
    {'A', 'P', KS1, '{', '<', '4'},
    {'>', 'X', 'V', 'B', '$', '5'},
    {' ', 'Z', 'C', 'N', 'M', ' '},
    {'&', KS1, 'F', 'J', 'K', ' '}
};

char symKeys[ROWS][COLS] = {
    {'#', '2', '3', '_', '+', '1'},
    {'1', '4', '/', ':', '"', '2'},
    {KS2, '5', '(', ')', '-', '3'},
    {'*', '@', KS1, '{', '<', '4'},
    {'>', '8', '?', '!', '$', '5'},
    {' ', '7', '9', ',', '.', ' '},
    {'0', KS1, '6', ';', '\'', ' '}
};

// all numbers are +1 since 0 is equal to NO_KEY
// we're using this keyboard as a lookup table for the
// above character arrays
char indexKeys[ROWS][COLS] = {
    { 1,  2,  3,  4,  5, 6},
    { 7,  8,  9, 10, 11, 12},
    {13, 14, 15, 16, 17, 18},
    {19, 20, 21, 22, 23, 24},
    {25, 26, 27, 28, 29, 30},
    {31, 32, 33, 34, 35, 36},
    {37, 38, 39, 40, 41, 42}
};

//byte rowPins[ROWS] = {0, 1, 2, 3, 4, 5, 6};
//byte colPins[COLS] = {7, 8, 14, 15, 16};
//byte rowPins[ROWS] = {32, 25, 26, 27, 14, 12, 13};
//byte colPins[COLS] = {2, 0, 4, 16, 17};
byte rowPinsEx[ROWS] = {0, 1, 2, 3, 4, 5, 6};
byte colPinsEx[COLS] = {8, 9, 10, 11, 12, 13};

//Keypad indexedKeypad(makeKeymap(indexKeys), rowPins, colPins, ROWS, COLS);
Keypad_PCA955X indexedKeypad(makeKeymap(indexKeys), rowPinsEx, colPinsEx, ROWS, COLS, 0x20, PCA9555);

bool symbolShift = false;
bool capShift = false;


void setupDisplay(void) {
    u8g2.begin();
    u8g2.setFont(u8g2_font_t0_11_mr);
    u8g2.clearDisplay();
}

void draw(void) {
    u8g2.clearBuffer(); // clear the internal memory

    for (int i = 0; i < LCDROWS; i++) {
        // draw each row
        u8g2.drawStr(0, FONTHEIGHT * (i + 1), buf[i]);
    }

    u8g2.sendBuffer(); // transfer internal memory to the display
}

char setKeyXY(int n, int & x, int & y) {
    // account for off by one since indexKeys starts at 1
    if (n > 0) { --n; }

    if (n < COLS) {
        x = 0;
        y = n;
    } else {
        x = n / COLS;
        y = n % COLS;
    }
}

bool isSymShift(int x, int y) {
    return lowerKeys[x][y] == KS2;
}

bool isCaseShift(int x, int y) {
    return lowerKeys[x][y] == KS1;
}

char getKeypadChar() {
    char key = NO_KEY;
    char indexKeyChar = indexedKeypad.getKey();

    if (indexKeyChar != NO_KEY) {
        int x, y;
        setKeyXY((int)indexKeyChar, x, y);

        if (isSymShift(x, y)) {
            symbolShift = !symbolShift;
            capShift = false;
        } else if (isCaseShift(x, y)) {
            capShift = true;
        } else {
            if (symbolShift) {
                key = symKeys[x][y];
            } else if (capShift) {
                key = upperKeys[x][y];
                capShift = false;
            } else {
                key = lowerKeys[x][y];
            }
        }
    }
    return key;
}

void clearBuf() {
    for (int i = 0; i < LCDROWS; i++) {
        for (int j = 0; j < LCDCOLS; j++) {
            buf[i][j] = 0;
        }
    }
}

static int key_light_ms;

void checkKeyLight(char key)
{
    if (key != NO_KEY) {
        digitalWrite(15, HIGH);
        key_light_ms = millis() + 3000;
    } else {
        if (millis() > key_light_ms) digitalWrite(15, LOW);
    }
}

void setup() {
    Serial.begin(115200);
    pinMode(15, OUTPUT);
    checkKeyLight(1);

    clearBuf();
    strncpy(buf[0], "Hello!", 6);
    pos = LCDCOLS;
    setupDisplay();
    draw();

    Serial.println("end of setup");
}

void loop() {
    char key = getKeypadChar();
    checkKeyLight(key);

    if (key != NO_KEY) {
        Serial.println(key);

        int x = 0, y = 0;

        // basic cursor positioning
        if (pos == LCDROWS * LCDCOLS) {
            pos = 0;
            clearBuf();
        } else {
            x = pos / LCDCOLS;
            y = pos % LCDCOLS;
        }
        buf[x][y] = key;
        ++pos;

        u8g2.firstPage();
        do {
            draw();
        } while (u8g2.nextPage());
    }
}
