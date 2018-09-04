/*	simple Hello World, for cc65, for NES
 *  switching BG tileset with mapper CNROM
 *	using neslib
 *	Doug Fraker 2018
 */	
 


#include "LIB/neslib.h"
#include "LIB/nesdoug.h"
#include "NES_ST/all_bgs.h"

#pragma bss-name(push, "ZEROPAGE")
unsigned char pad1;
unsigned char pad1_new;
unsigned char which_chr;



const unsigned char pal_apple[]={
0x08,0x16,0x27,0x38,
0,0,0,0,
0,0,0,0,
0,0,0,0
}; 

const unsigned char pal_ball[]={
0x06,0x27,0x12,0x16,
0,0,0,0,
0,0,0,0,
0,0,0,0
}; 

const unsigned char pal_snake[]={
0x0f,0x17,0x29,0x39,
0,0,0,0,
0,0,0,0,
0,0,0,0
}; 

const unsigned char pal_flower[]={
0x08,0x19,0x27,0x30,
0,0,0,0,
0,0,0,0,
0,0,0,0
}; 



const unsigned char * const palettes[]={
	pal_apple, pal_ball, pal_snake, pal_flower
};


const unsigned char bus_conflict_fix[]={0,1,2,3};





void main (void) {

	ppu_off(); // screen off
	
	pal_bg(pal_apple); // load the palette
					 
	vram_adr(NAMETABLE_A);
	
	vram_unrle(all_bgs);
	
					 
	ppu_on_all(); // turn on screen
	
	
	while (1){
		ppu_wait_nmi();
		
		pad1 = pad_poll(0);
		pad1_new = get_pad_new(0);
		
		
		if(pad1_new & PAD_START){
			++which_chr;
			if(which_chr >= 4) which_chr = 0;
			
			pal_bg(palettes[which_chr]); // change the bg palette
			
			POKE(bus_conflict_fix+which_chr, which_chr); // change the tileset
		}
	}
}
	
	