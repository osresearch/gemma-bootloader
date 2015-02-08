; Project: GemmaBoot
; by Frank Zhao
; GemmaBoot is the bootloader that will be used in Gemma (from Adafruit Industries)
; 
; this file is used to generate the jump.hex that is appended to the top of boot.hex in order to generate flash_me.hex
; this avoids having the bootloader writing these jumps at runtime, saving some memory
;
; Copyright (c) 2013 Adafruit Industries
; All rights reserved.
; 
; GemmaBoot is free software: you can redistribute it and/or modify
; it under the terms of the GNU Lesser General Public License as
; published by the Free Software Foundation, either version 3 of
; the License, or (at your option) any later version.
; 
; GemmaBoot is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU Lesser General Public License for more details.
; 
; You should have received a copy of the GNU Lesser General Public
; License along with GemmaBoot. If not, see
; <http://www.gnu.org/licenses/>.

.org 0x0000
		rjmp BOOTLOADER_ADDRESS		; 0x00
		rjmp BOOTLOADER_ADDRESS + 2	; 0x02
		rjmp BOOTLOADER_ADDRESS + 4	; 0x04
		rjmp BOOTLOADER_ADDRESS + 6	; 0x06
		rjmp BOOTLOADER_ADDRESS + 8	; 0x08
		rjmp BOOTLOADER_ADDRESS + 10	; 0x0a
		rjmp BOOTLOADER_ADDRESS + 12	; 0x0c
		rjmp BOOTLOADER_ADDRESS + 14	; 0x0e
		rjmp BOOTLOADER_ADDRESS + 16	; 0x10
main:
		cli				; 0x12
		rjmp main			; 0x14
		nop				; 0x16
		nop				; 0x18
		nop				; 0x1a
		nop				; 0x1c
		nop				; 0x1e
		nop				; 0x16
		nop				; 0x18
		nop				; 0x1a
		nop				; 0x1c
		nop				; 0x1e

		nop				; 0x20
		nop				; 0x22
		nop				; 0x24
		nop				; 0x26
		nop				; 0x28
		nop				; 0x2a
		nop				; 0x2c
		nop				; 0x2e
		nop				; 0x30
		nop				; 0x32
		nop				; 0x34
		nop				; 0x36
		nop				; 0x38
		nop				; 0x3a
		nop				; 0x3c
		.byte 0xFF			; 0x3e
