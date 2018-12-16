/*
||
|| @file Keypad_PCA955X.cpp
|| @version 3.0 - PCA9554, PCA9554A, PCA9555 support G. D. Young
|| @version 2.0 - PCF8575 support added by Paul Williamson
|| @author G. D. (Joe) Young, ptw
|| @contact "G. D. (Joe) Young" <gdyoung@telus.net>
||
|| Nov 2018 Replaced unnecessary multiple inheritance by delegation.
|| Renamed Keypad_I2Ca to Keypad_PCA955X
||
|| @description
|| | Keypad_PCA955X provides an interface for using matrix keypads that
|| | are attached with I2C totem-pole output port expanders. It supports
|| | multiple keypads, user selectable pins, and user defined keymaps.
|| #
||
|| @license
|| | This library is free software; you can redistribute it and/or
|| | modify it under the terms of the GNU Lesser General Public
|| | License as published by the Free Software Foundation; version
|| | 2.1 of the License.
|| |
|| | This library is distributed in the hope that it will be useful,
|| | but WITHOUT ANY WARRANTY; without even the implied warranty of
|| | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
|| | Lesser General Public License for more details.
|| |
|| | You should have received a copy of the GNU Lesser General Public
|| | License along with this library; if not, write to the Free Software
|| | Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
|| #
||
*/

#include "Keypad_PCA955X.h"

#define IREG 0x00	// input port location
#define OREG 0x01	// output port
#define VREG 0x02	// polarity inversion (not used, but configured)
#define CREG 0x03	// configuration reg - IODIR
#define IODIR 0x03	// common alias for config

Keypad_PCA955X::Keypad_PCA955X(char* userKeymap, byte* row, byte* col, byte numRows, byte numCols,
                         byte address, byte width) :
    Keypad(userKeymap, row, col, numRows, numCols)
{
  Wire.begin();
  i2caddr = address;
  i2cwidth = width;
}  

// Let the user define a keymap - assume the same row/column count as defined in constructor
void Keypad_PCA955X::begin(char *userKeymap) {
    Keypad::begin(userKeymap);
	_begin( );
}


// configure port registers as if just power-on reset
void Keypad_PCA955X::_begin( ) {
	p_write( 0xffff, OREG );
	p_write( 0x0000, VREG );
	p_write( 0xffff, IODIR );
	iodir_state = 0xffff;
	pinState = pinState_set( );
} // _begin( )


void Keypad_PCA955X::pin_mode(byte pinNum, byte mode) {
	word mask = 1<<pinNum;
	if( mode == OUTPUT ) {
		iodir_state &= ~mask;
	} else {
		iodir_state |= mask;
	}
	p_write( iodir_state, IODIR );
} // pin_mode( )


void Keypad_PCA955X::pin_write(byte pinNum, boolean level) {
	word mask = 1<<pinNum;
	if( level == HIGH ) {
		pinState |= mask;
	} else {
		pinState &= ~mask;
	}
	p_write( pinState, OREG );
} // I2CxWrite( )


int Keypad_PCA955X::pin_read(byte pinNum) {
	word mask = 0x1<<pinNum;
	Wire.beginTransmission( (int)i2caddr );
	Wire.write( IREG );
	Wire.endTransmission( );
	Wire.requestFrom((int)i2caddr, (int)i2cwidth);
	word pinVal = Wire.read( );
	if (i2cwidth > 1) {
		pinVal |= Wire.read( ) << 8;
	} 
	pinVal &= mask;
	if( pinVal == mask ) {
		return 1;
	} else {
		return 0;
	}
} // pin_read( )

void Keypad_PCA955X::port_write( word i2cportval ) {
	p_write( i2cportval, OREG );
} // port_write( ) - public access


void Keypad_PCA955X::p_write( word i2cportval, byte reg ) {
	Wire.beginTransmission((int)i2caddr);
	Wire.write( reg<<(i2cwidth-1) );			//twice as many regs for 9555
	Wire.write( i2cportval & 0x00FF );
	if (i2cwidth > 1) {
		Wire.write( i2cportval >> 8 );
	}
	Wire.endTransmission();
//	if( reg == OREG) pinState = i2cportval;		//not quite right - re-read i/p??
	if( reg == OREG) pinState = pinState_set( );
} // p_write( ) - private


word Keypad_PCA955X::pinState_set( ) {
	Wire.beginTransmission( (int)i2caddr );
	Wire.write( IREG );
	Wire.endTransmission( );
	Wire.requestFrom( (int)i2caddr, (int)i2cwidth );
	pinState = Wire.read( );
	if (i2cwidth > 1) {
		pinState |= Wire.read( ) << 8;
	}
	return pinState;
} // set_pinState( )


word Keypad_PCA955X::iodir_read( ) {
//	Wire.requestFrom( (int)i2caddr, (int)i2cwidth );
//	iodir_state = Wire.read( );
//	if( i2cwidth > 1 ) {
//		iodir_state |= Wire.read( ) << 8;
//	}
	return iodir_state;
} // iodir_read( )


void Keypad_PCA955X::iodir_write( word iodir ) {
	p_write( iodir, IODIR );
	iodir_state = iodir;
} // iodir_write( )

/*
|| @changelog
|| | 2018-11-01 Updated to work with modern non-AVR Arduinos, ESP32. Renamed, removed
|| | unnecessary multiple inheritance.
|| |
|| | 3.0 2014-05-22 - GDY support totem-pole output ports PCA9554(8-bit), PCA9555(16-bit)
|| |
|| | 2.0 2013-08-31 - Paul Williamson : Added i2cwidth parameter for PCF8575 support
|| |
|| | 1.0 2012-07-12 - Joe Young : Initial Release
|| #
*/
