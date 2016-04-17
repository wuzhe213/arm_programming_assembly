.text

.type  Reset_Handler, %function
Reset_Handler:
	/*ldr   sp, =_estack     /* set stack pointer */
	mov r0, #0x03
	
.type Default_Handler, %function 
Default_Handler:
Infinite_Loop:
  b  Infinite_Loop
  
.section  .isr_vector

/* could call it isr_vector, but to differenciate with isr_vector, the section name */
isr_table: 
	.word  _estack
	.word  Reset_Handler
	.word Default_Handler
