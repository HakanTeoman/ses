	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"nrfx_uart.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Hakan_SES\\nRF5_SDK_17.1.0_ddde560\\modules\\nrfx\\drivers\\src\\nrfx_uart.c"
	.section	.text.__NVIC_EnableIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__NVIC_EnableIRQ, %function
__NVIC_EnableIRQ:
.LFB118:
	.file 2 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.loc 2 1680 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 1681 6
	ldrsb	r3, [sp, #7]
	cmp	r3, #0
	blt	.L3
	.loc 2 1683 5
	.loc 2 1684 81
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	.loc 2 1684 9
	ldr	r1, .L4
	.loc 2 1684 18
	ldrsb	r3, [sp, #7]
	.loc 2 1684 34
	lsrs	r3, r3, #5
	.loc 2 1684 45
	movs	r0, #1
	lsl	r2, r0, r2
	.loc 2 1684 43
	str	r2, [r1, r3, lsl #2]
	.loc 2 1685 5
.L3:
	.loc 2 1687 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L5:
	.align	2
.L4:
	.word	-536813312
	.cfi_endproc
.LFE118:
	.size	__NVIC_EnableIRQ, .-__NVIC_EnableIRQ
	.section	.text.__NVIC_DisableIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__NVIC_DisableIRQ, %function
__NVIC_DisableIRQ:
.LFB120:
	.loc 2 1718 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 1719 6
	ldrsb	r3, [sp, #7]
	cmp	r3, #0
	blt	.L8
	.loc 2 1721 81
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	.loc 2 1721 9
	ldr	r1, .L9
	.loc 2 1721 18
	ldrsb	r3, [sp, #7]
	.loc 2 1721 34
	lsrs	r3, r3, #5
	.loc 2 1721 45
	movs	r0, #1
	lsl	r2, r0, r2
	.loc 2 1721 43
	adds	r3, r3, #32
	str	r2, [r1, r3, lsl #2]
.LBB6:
.LBB7:
	.file 3 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 3 946 3
	.syntax unified
@ 946 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.loc 3 947 1
	.thumb
	.syntax unified
	nop
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 3 935 3
	.syntax unified
@ 935 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	isb 0xF
@ 0 "" 2
	.loc 3 936 1
	.thumb
	.syntax unified
	nop
.L8:
.LBE9:
.LBE8:
	.loc 2 1725 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L10:
	.align	2
.L9:
	.word	-536813312
	.cfi_endproc
.LFE120:
	.size	__NVIC_DisableIRQ, .-__NVIC_DisableIRQ
	.section	.text.__NVIC_SetPriority,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__NVIC_SetPriority, %function
__NVIC_SetPriority:
.LFB125:
	.loc 2 1810 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 2 1811 6
	ldrsb	r3, [sp, #7]
	cmp	r3, #0
	blt	.L12
	.loc 2 1813 48
	ldr	r3, [sp]
	uxtb	r2, r3
	.loc 2 1813 9
	ldr	r1, .L15
	.loc 2 1813 15
	ldrsb	r3, [sp, #7]
	.loc 2 1813 48
	lsls	r2, r2, #5
	uxtb	r2, r2
	.loc 2 1813 46
	add	r3, r3, r1
	strb	r2, [r3, #768]
	.loc 2 1819 1
	b	.L14
.L12:
	.loc 2 1817 48
	ldr	r3, [sp]
	uxtb	r2, r3
	.loc 2 1817 8
	ldr	r1, .L15+4
	.loc 2 1817 32
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #15
	.loc 2 1817 40
	subs	r3, r3, #4
	.loc 2 1817 48
	lsls	r2, r2, #5
	uxtb	r2, r2
	.loc 2 1817 46
	add	r3, r3, r1
	strb	r2, [r3, #24]
.L14:
	.loc 2 1819 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L16:
	.align	2
.L15:
	.word	-536813312
	.word	-536810240
	.cfi_endproc
.LFE125:
	.size	__NVIC_SetPriority, .-__NVIC_SetPriority
	.section	.text.nrfx_get_irq_number,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_get_irq_number, %function
nrfx_get_irq_number:
.LFB147:
	.file 4 "Files/nrfx/drivers/nrfx_common.h"
	.loc 4 318 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 4 319 23
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #12
	.loc 4 319 12
	sxtb	r3, r3
	.loc 4 320 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE147:
	.size	nrfx_get_irq_number, .-nrfx_get_irq_number
	.section	.text.sd_mbr_command,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_mbr_command, %function
sd_mbr_command:
.LFB150:
	.file 5 "../../../../../../components/softdevice/s140/headers/nrf52/nrf_mbr.h"
	.loc 5 257 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 257 1
	.syntax unified
@ 257 "../../../../../../components/softdevice/s140/headers/nrf52/nrf_mbr.h" 1
	svc #24
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE150:
	.size	sd_mbr_command, .-sd_mbr_command
	.section .rodata
	.align	2
.LC0:
	.ascii	"../../../../../../integration/nrfx/nrfx_glue.h\000"
	.section	.text._NRFX_IRQ_PRIORITY_SET,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_NRFX_IRQ_PRIORITY_SET, %function
_NRFX_IRQ_PRIORITY_SET:
.LFB169:
	.file 6 "../../../../../../integration/nrfx/nrfx_glue.h"
	.loc 6 106 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 6 107 5 discriminator 1
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L21
	.loc 6 107 5 is_stmt 0 discriminator 2
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L22
.L21:
	.loc 6 107 5 discriminator 4
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L23
	.loc 6 107 5 discriminator 5
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L22
.L23:
	.loc 6 107 5 discriminator 7
	ldr	r1, .L24
	movs	r0, #107
	bl	assert_nrf_callback
.L22:
	.loc 6 108 5 is_stmt 1
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	ldrsb	r3, [sp, #7]
	mov	r1, r2
	mov	r0, r3
	bl	__NVIC_SetPriority
	.loc 6 109 1
	nop
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L25:
	.align	2
.L24:
	.word	.LC0
	.cfi_endproc
.LFE169:
	.size	_NRFX_IRQ_PRIORITY_SET, .-_NRFX_IRQ_PRIORITY_SET
	.section	.text._NRFX_IRQ_ENABLE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_NRFX_IRQ_ENABLE, %function
_NRFX_IRQ_ENABLE:
.LFB170:
	.loc 6 118 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 6 119 5
	ldrsb	r3, [sp, #7]
	mov	r0, r3
	bl	__NVIC_EnableIRQ
	.loc 6 120 1
	nop
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE170:
	.size	_NRFX_IRQ_ENABLE, .-_NRFX_IRQ_ENABLE
	.section	.text._NRFX_IRQ_DISABLE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_NRFX_IRQ_DISABLE, %function
_NRFX_IRQ_DISABLE:
.LFB172:
	.loc 6 143 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 6 144 5
	ldrsb	r3, [sp, #7]
	mov	r0, r3
	bl	__NVIC_DisableIRQ
	.loc 6 145 1
	nop
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE172:
	.size	_NRFX_IRQ_DISABLE, .-_NRFX_IRQ_DISABLE
	.section	.text.sd_mutex_new,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_mutex_new, %function
sd_mutex_new:
.LFB176:
	.file 7 "../../../../../../components/softdevice/s140/headers/nrf_soc.h"
	.loc 7 452 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 452 1
	.syntax unified
@ 452 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #44
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE176:
	.size	sd_mutex_new, .-sd_mutex_new
	.section	.text.sd_mutex_acquire,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_mutex_acquire, %function
sd_mutex_acquire:
.LFB177:
	.loc 7 461 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 461 1
	.syntax unified
@ 461 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #45
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE177:
	.size	sd_mutex_acquire, .-sd_mutex_acquire
	.section	.text.sd_mutex_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_mutex_release, %function
sd_mutex_release:
.LFB178:
	.loc 7 469 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 469 1
	.syntax unified
@ 469 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #46
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE178:
	.size	sd_mutex_release, .-sd_mutex_release
	.section	.text.sd_rand_application_pool_capacity_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_rand_application_pool_capacity_get, %function
sd_rand_application_pool_capacity_get:
.LFB179:
	.loc 7 477 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 477 1
	.syntax unified
@ 477 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #47
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE179:
	.size	sd_rand_application_pool_capacity_get, .-sd_rand_application_pool_capacity_get
	.section	.text.sd_rand_application_bytes_available_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_rand_application_bytes_available_get, %function
sd_rand_application_bytes_available_get:
.LFB180:
	.loc 7 485 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 485 1
	.syntax unified
@ 485 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #48
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE180:
	.size	sd_rand_application_bytes_available_get, .-sd_rand_application_bytes_available_get
	.section	.text.sd_rand_application_vector_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_rand_application_vector_get, %function
sd_rand_application_vector_get:
.LFB181:
	.loc 7 495 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 495 1
	.syntax unified
@ 495 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #49
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE181:
	.size	sd_rand_application_vector_get, .-sd_rand_application_vector_get
	.section	.text.sd_power_reset_reason_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_reset_reason_get, %function
sd_power_reset_reason_get:
.LFB182:
	.loc 7 503 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 503 1
	.syntax unified
@ 503 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #52
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE182:
	.size	sd_power_reset_reason_get, .-sd_power_reset_reason_get
	.section	.text.sd_power_reset_reason_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_reset_reason_clr, %function
sd_power_reset_reason_clr:
.LFB183:
	.loc 7 511 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 511 1
	.syntax unified
@ 511 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #53
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE183:
	.size	sd_power_reset_reason_clr, .-sd_power_reset_reason_clr
	.section	.text.sd_power_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_mode_set, %function
sd_power_mode_set:
.LFB184:
	.loc 7 520 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 520 1
	.syntax unified
@ 520 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #50
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE184:
	.size	sd_power_mode_set, .-sd_power_mode_set
	.section	.text.sd_power_system_off,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_system_off, %function
sd_power_system_off:
.LFB185:
	.loc 7 526 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 526 1
	.syntax unified
@ 526 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #51
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE185:
	.size	sd_power_system_off, .-sd_power_system_off
	.section	.text.sd_power_pof_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_pof_enable, %function
sd_power_pof_enable:
.LFB186:
	.loc 7 537 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 537 1
	.syntax unified
@ 537 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #54
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE186:
	.size	sd_power_pof_enable, .-sd_power_pof_enable
	.section	.text.sd_power_usbpwrrdy_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_usbpwrrdy_enable, %function
sd_power_usbpwrrdy_enable:
.LFB187:
	.loc 7 550 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 550 1
	.syntax unified
@ 550 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #77
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE187:
	.size	sd_power_usbpwrrdy_enable, .-sd_power_usbpwrrdy_enable
	.section	.text.sd_power_usbdetected_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_usbdetected_enable, %function
sd_power_usbdetected_enable:
.LFB188:
	.loc 7 563 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 563 1
	.syntax unified
@ 563 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #78
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE188:
	.size	sd_power_usbdetected_enable, .-sd_power_usbdetected_enable
	.section	.text.sd_power_usbremoved_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_usbremoved_enable, %function
sd_power_usbremoved_enable:
.LFB189:
	.loc 7 576 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 576 1
	.syntax unified
@ 576 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #79
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE189:
	.size	sd_power_usbremoved_enable, .-sd_power_usbremoved_enable
	.section	.text.sd_power_usbregstatus_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_usbregstatus_get, %function
sd_power_usbregstatus_get:
.LFB190:
	.loc 7 586 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 586 1
	.syntax unified
@ 586 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #80
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE190:
	.size	sd_power_usbregstatus_get, .-sd_power_usbregstatus_get
	.section	.text.sd_power_pof_threshold_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_pof_threshold_set, %function
sd_power_pof_threshold_set:
.LFB191:
	.loc 7 599 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 599 1
	.syntax unified
@ 599 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #55
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE191:
	.size	sd_power_pof_threshold_set, .-sd_power_pof_threshold_set
	.section	.text.sd_power_pof_thresholdvddh_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_pof_thresholdvddh_set, %function
sd_power_pof_thresholdvddh_set:
.LFB192:
	.loc 7 612 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 612 1
	.syntax unified
@ 612 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #56
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE192:
	.size	sd_power_pof_thresholdvddh_set, .-sd_power_pof_thresholdvddh_set
	.section	.text.sd_power_ram_power_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_ram_power_set, %function
sd_power_ram_power_set:
.LFB193:
	.loc 7 621 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 621 1
	.syntax unified
@ 621 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #57
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE193:
	.size	sd_power_ram_power_set, .-sd_power_ram_power_set
	.section	.text.sd_power_ram_power_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_ram_power_clr, %function
sd_power_ram_power_clr:
.LFB194:
	.loc 7 630 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 630 1
	.syntax unified
@ 630 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #58
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE194:
	.size	sd_power_ram_power_clr, .-sd_power_ram_power_clr
	.section	.text.sd_power_ram_power_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_ram_power_get, %function
sd_power_ram_power_get:
.LFB195:
	.loc 7 639 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 639 1
	.syntax unified
@ 639 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #59
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE195:
	.size	sd_power_ram_power_get, .-sd_power_ram_power_get
	.section	.text.sd_power_gpregret_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_gpregret_set, %function
sd_power_gpregret_set:
.LFB196:
	.loc 7 648 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 648 1
	.syntax unified
@ 648 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #60
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE196:
	.size	sd_power_gpregret_set, .-sd_power_gpregret_set
	.section	.text.sd_power_gpregret_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_gpregret_clr, %function
sd_power_gpregret_clr:
.LFB197:
	.loc 7 657 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 657 1
	.syntax unified
@ 657 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #61
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE197:
	.size	sd_power_gpregret_clr, .-sd_power_gpregret_clr
	.section	.text.sd_power_gpregret_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_gpregret_get, %function
sd_power_gpregret_get:
.LFB198:
	.loc 7 666 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 666 1
	.syntax unified
@ 666 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #62
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE198:
	.size	sd_power_gpregret_get, .-sd_power_gpregret_get
	.section	.text.sd_power_dcdc_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_dcdc_mode_set, %function
sd_power_dcdc_mode_set:
.LFB199:
	.loc 7 675 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 675 1
	.syntax unified
@ 675 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #63
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE199:
	.size	sd_power_dcdc_mode_set, .-sd_power_dcdc_mode_set
	.section	.text.sd_power_dcdc0_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_dcdc0_mode_set, %function
sd_power_dcdc0_mode_set:
.LFB200:
	.loc 7 686 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 686 1
	.syntax unified
@ 686 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #64
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE200:
	.size	sd_power_dcdc0_mode_set, .-sd_power_dcdc0_mode_set
	.section	.text.sd_clock_hfclk_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_clock_hfclk_request, %function
sd_clock_hfclk_request:
.LFB201:
	.loc 7 698 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 698 1
	.syntax unified
@ 698 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #66
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE201:
	.size	sd_clock_hfclk_request, .-sd_clock_hfclk_request
	.section	.text.sd_clock_hfclk_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_clock_hfclk_release, %function
sd_clock_hfclk_release:
.LFB202:
	.loc 7 709 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 709 1
	.syntax unified
@ 709 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #67
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE202:
	.size	sd_clock_hfclk_release, .-sd_clock_hfclk_release
	.section	.text.sd_clock_hfclk_is_running,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_clock_hfclk_is_running, %function
sd_clock_hfclk_is_running:
.LFB203:
	.loc 7 720 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 720 1
	.syntax unified
@ 720 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #68
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE203:
	.size	sd_clock_hfclk_is_running, .-sd_clock_hfclk_is_running
	.section	.text.sd_app_evt_wait,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_app_evt_wait, %function
sd_app_evt_wait:
.LFB204:
	.loc 7 748 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 748 1
	.syntax unified
@ 748 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #65
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE204:
	.size	sd_app_evt_wait, .-sd_app_evt_wait
	.section	.text.sd_ppi_channel_enable_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_enable_get, %function
sd_ppi_channel_enable_get:
.LFB205:
	.loc 7 756 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 756 1
	.syntax unified
@ 756 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #32
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE205:
	.size	sd_ppi_channel_enable_get, .-sd_ppi_channel_enable_get
	.section	.text.sd_ppi_channel_enable_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_enable_set, %function
sd_ppi_channel_enable_set:
.LFB206:
	.loc 7 764 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 764 1
	.syntax unified
@ 764 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #33
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE206:
	.size	sd_ppi_channel_enable_set, .-sd_ppi_channel_enable_set
	.section	.text.sd_ppi_channel_enable_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_enable_clr, %function
sd_ppi_channel_enable_clr:
.LFB207:
	.loc 7 772 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 772 1
	.syntax unified
@ 772 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #34
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE207:
	.size	sd_ppi_channel_enable_clr, .-sd_ppi_channel_enable_clr
	.section	.text.sd_ppi_channel_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_assign, %function
sd_ppi_channel_assign:
.LFB208:
	.loc 7 783 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 783 1
	.syntax unified
@ 783 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #35
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE208:
	.size	sd_ppi_channel_assign, .-sd_ppi_channel_assign
	.section	.text.sd_ppi_group_task_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_task_enable, %function
sd_ppi_group_task_enable:
.LFB209:
	.loc 7 792 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 792 1
	.syntax unified
@ 792 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #36
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE209:
	.size	sd_ppi_group_task_enable, .-sd_ppi_group_task_enable
	.section	.text.sd_ppi_group_task_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_task_disable, %function
sd_ppi_group_task_disable:
.LFB210:
	.loc 7 801 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 801 1
	.syntax unified
@ 801 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #37
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE210:
	.size	sd_ppi_group_task_disable, .-sd_ppi_group_task_disable
	.section	.text.sd_ppi_group_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_assign, %function
sd_ppi_group_assign:
.LFB211:
	.loc 7 811 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 811 1
	.syntax unified
@ 811 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #38
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE211:
	.size	sd_ppi_group_assign, .-sd_ppi_group_assign
	.section	.text.sd_ppi_group_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_get, %function
sd_ppi_group_get:
.LFB212:
	.loc 7 821 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 821 1
	.syntax unified
@ 821 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #39
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE212:
	.size	sd_ppi_group_get, .-sd_ppi_group_get
	.section	.text.sd_radio_notification_cfg_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_notification_cfg_set, %function
sd_radio_notification_cfg_set:
.LFB213:
	.loc 7 852 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 852 1
	.syntax unified
@ 852 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #69
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE213:
	.size	sd_radio_notification_cfg_set, .-sd_radio_notification_cfg_set
	.section	.text.sd_ecb_block_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ecb_block_encrypt, %function
sd_ecb_block_encrypt:
.LFB214:
	.loc 7 868 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 868 1
	.syntax unified
@ 868 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #70
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE214:
	.size	sd_ecb_block_encrypt, .-sd_ecb_block_encrypt
	.section	.text.sd_ecb_blocks_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ecb_blocks_encrypt, %function
sd_ecb_blocks_encrypt:
.LFB215:
	.loc 7 885 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 885 1
	.syntax unified
@ 885 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #71
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE215:
	.size	sd_ecb_blocks_encrypt, .-sd_ecb_blocks_encrypt
	.section	.text.sd_evt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_evt_get, %function
sd_evt_get:
.LFB216:
	.loc 7 896 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 896 1
	.syntax unified
@ 896 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #75
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE216:
	.size	sd_evt_get, .-sd_evt_get
	.section	.text.sd_temp_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_temp_get, %function
sd_temp_get:
.LFB217:
	.loc 7 907 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 907 1
	.syntax unified
@ 907 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #76
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE217:
	.size	sd_temp_get, .-sd_temp_get
	.section	.text.sd_flash_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_flash_write, %function
sd_flash_write:
.LFB218:
	.loc 7 944 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 944 1
	.syntax unified
@ 944 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #41
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE218:
	.size	sd_flash_write, .-sd_flash_write
	.section	.text.sd_flash_page_erase,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_flash_page_erase, %function
sd_flash_page_erase:
.LFB219:
	.loc 7 976 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 976 1
	.syntax unified
@ 976 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #40
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE219:
	.size	sd_flash_page_erase, .-sd_flash_page_erase
	.section	.text.sd_radio_session_open,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_session_open, %function
sd_radio_session_open:
.LFB220:
	.loc 7 1000 2
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 1000 2
	.syntax unified
@ 1000 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #72
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE220:
	.size	sd_radio_session_open, .-sd_radio_session_open
	.section	.text.sd_radio_session_close,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_session_close, %function
sd_radio_session_close:
.LFB221:
	.loc 7 1013 2
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 1013 2
	.syntax unified
@ 1013 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #73
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE221:
	.size	sd_radio_session_close, .-sd_radio_session_close
	.section	.text.sd_radio_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_request, %function
sd_radio_request:
.LFB222:
	.loc 7 1050 2
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 1050 2
	.syntax unified
@ 1050 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #74
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE222:
	.size	sd_radio_request, .-sd_radio_request
	.section	.text.sd_protected_register_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_protected_register_write, %function
sd_protected_register_write:
.LFB223:
	.loc 7 1071 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 1071 1
	.syntax unified
@ 1071 "../../../../../../components/softdevice/s140/headers/nrf_soc.h" 1
	svc #43
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
	.cfi_endproc
.LFE223:
	.size	sd_protected_register_write, .-sd_protected_register_write
	.section	.text.nrf_uart_event_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_event_clear, %function
nrf_uart_event_clear:
.LFB239:
	.file 8 "Files/nrfx/hal/nrf_uart.h"
	.loc 8 346 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 8 347 48
	ldrh	r3, [sp, #2]
	.loc 8 347 7
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 347 66
	movs	r2, #0
	str	r2, [r3]
	.loc 8 349 74
	ldrh	r3, [sp, #2]
	.loc 8 349 33
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 349 31
	ldr	r3, [r3]
	.loc 8 349 23
	str	r3, [sp, #12]
	.loc 8 350 5
	ldr	r3, [sp, #12]
	.loc 8 352 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE239:
	.size	nrf_uart_event_clear, .-nrf_uart_event_clear
	.section	.text.nrf_uart_event_check,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_event_check, %function
nrf_uart_event_check:
.LFB240:
	.loc 8 355 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 8 356 60
	ldrh	r3, [sp, #2]
	.loc 8 356 19
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 356 18
	ldr	r3, [r3]
	.loc 8 356 12
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 8 357 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE240:
	.size	nrf_uart_event_check, .-nrf_uart_event_check
	.section	.text.nrf_uart_int_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_int_enable, %function
nrf_uart_int_enable:
.LFB242:
	.loc 8 366 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 367 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #772]
	.loc 8 368 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE242:
	.size	nrf_uart_int_enable, .-nrf_uart_int_enable
	.section	.text.nrf_uart_int_enable_check,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_int_enable_check, %function
nrf_uart_int_enable_check:
.LFB243:
	.loc 8 371 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 372 24
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #772]
	.loc 8 372 35
	ldr	r3, [sp]
	ands	r3, r3, r2
	.loc 8 372 12
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 8 373 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE243:
	.size	nrf_uart_int_enable_check, .-nrf_uart_int_enable_check
	.section	.text.nrf_uart_int_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_int_disable, %function
nrf_uart_int_disable:
.LFB244:
	.loc 8 376 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 377 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #776]
	.loc 8 378 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE244:
	.size	nrf_uart_int_disable, .-nrf_uart_int_disable
	.section	.text.nrf_uart_errorsrc_get_and_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_errorsrc_get_and_clear, %function
nrf_uart_errorsrc_get_and_clear:
.LFB245:
	.loc 8 381 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 8 382 14
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1152]
	str	r3, [sp, #12]
	.loc 8 383 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #12]
	str	r2, [r3, #1152]
	.loc 8 384 12
	ldr	r3, [sp, #12]
	.loc 8 385 1
	mov	r0, r3
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE245:
	.size	nrf_uart_errorsrc_get_and_clear, .-nrf_uart_errorsrc_get_and_clear
	.section	.text.nrf_uart_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_enable, %function
nrf_uart_enable:
.LFB246:
	.loc 8 388 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 389 19
	ldr	r3, [sp, #4]
	movs	r2, #4
	str	r2, [r3, #1280]
	.loc 8 390 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE246:
	.size	nrf_uart_enable, .-nrf_uart_enable
	.section	.text.nrf_uart_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_disable, %function
nrf_uart_disable:
.LFB247:
	.loc 8 393 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 394 19
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #1280]
	.loc 8 395 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE247:
	.size	nrf_uart_disable, .-nrf_uart_disable
	.section	.text.nrf_uart_txrx_pins_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_txrx_pins_set, %function
nrf_uart_txrx_pins_set:
.LFB248:
	.loc 8 398 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 8 400 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #1300]
	.loc 8 405 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #1292]
	.loc 8 409 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE248:
	.size	nrf_uart_txrx_pins_set, .-nrf_uart_txrx_pins_set
	.section	.text.nrf_uart_txrx_pins_disconnect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_txrx_pins_disconnect, %function
nrf_uart_txrx_pins_disconnect:
.LFB249:
	.loc 8 412 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 8 413 5
	mov	r2, #-1
	mov	r1, #-1
	ldr	r0, [sp, #4]
	bl	nrf_uart_txrx_pins_set
	.loc 8 414 1
	nop
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE249:
	.size	nrf_uart_txrx_pins_disconnect, .-nrf_uart_txrx_pins_disconnect
	.section	.text.nrf_uart_tx_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_tx_pin_get, %function
nrf_uart_tx_pin_get:
.LFB250:
	.loc 8 417 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 419 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1292]
	.loc 8 423 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE250:
	.size	nrf_uart_tx_pin_get, .-nrf_uart_tx_pin_get
	.section	.text.nrf_uart_rx_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_rx_pin_get, %function
nrf_uart_rx_pin_get:
.LFB251:
	.loc 8 426 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 428 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1300]
	.loc 8 432 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE251:
	.size	nrf_uart_rx_pin_get, .-nrf_uart_rx_pin_get
	.section	.text.nrf_uart_rts_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_rts_pin_get, %function
nrf_uart_rts_pin_get:
.LFB252:
	.loc 8 435 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 437 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1288]
	.loc 8 441 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE252:
	.size	nrf_uart_rts_pin_get, .-nrf_uart_rts_pin_get
	.section	.text.nrf_uart_cts_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_cts_pin_get, %function
nrf_uart_cts_pin_get:
.LFB253:
	.loc 8 444 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 446 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1296]
	.loc 8 450 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE253:
	.size	nrf_uart_cts_pin_get, .-nrf_uart_cts_pin_get
	.section	.text.nrf_uart_hwfc_pins_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_hwfc_pins_set, %function
nrf_uart_hwfc_pins_set:
.LFB254:
	.loc 8 453 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 8 455 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #1288]
	.loc 8 461 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #1296]
	.loc 8 465 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE254:
	.size	nrf_uart_hwfc_pins_set, .-nrf_uart_hwfc_pins_set
	.section	.text.nrf_uart_hwfc_pins_disconnect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_hwfc_pins_disconnect, %function
nrf_uart_hwfc_pins_disconnect:
.LFB255:
	.loc 8 468 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 8 469 5
	mov	r2, #-1
	mov	r1, #-1
	ldr	r0, [sp, #4]
	bl	nrf_uart_hwfc_pins_set
	.loc 8 470 1
	nop
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE255:
	.size	nrf_uart_hwfc_pins_disconnect, .-nrf_uart_hwfc_pins_disconnect
	.section	.text.nrf_uart_rxd_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_rxd_get, %function
nrf_uart_rxd_get:
.LFB256:
	.loc 8 473 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 474 17
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1304]
	uxtb	r3, r3
	.loc 8 475 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE256:
	.size	nrf_uart_rxd_get, .-nrf_uart_rxd_get
	.section	.text.nrf_uart_txd_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_txd_set, %function
nrf_uart_txd_set:
.LFB257:
	.loc 8 478 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 8 479 16
	ldrb	r2, [sp, #3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	str	r2, [r3, #1308]
	.loc 8 480 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE257:
	.size	nrf_uart_txd_set, .-nrf_uart_txd_set
	.section	.text.nrf_uart_task_trigger,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_task_trigger, %function
nrf_uart_task_trigger:
.LFB258:
	.loc 8 483 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 8 484 48
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	.loc 8 484 7
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 484 65
	movs	r2, #1
	str	r2, [r3]
	.loc 8 485 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE258:
	.size	nrf_uart_task_trigger, .-nrf_uart_task_trigger
	.section	.text.nrf_uart_configure,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_configure, %function
nrf_uart_configure:
.LFB260:
	.loc 8 495 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	mov	r3, r2
	strb	r3, [sp, #2]
	.loc 8 496 38
	ldrb	r2, [sp, #3]
	ldrb	r3, [sp, #2]
	orrs	r3, r3, r2
	uxtb	r3, r3
	mov	r2, r3
	.loc 8 496 19
	ldr	r3, [sp, #4]
	str	r2, [r3, #1388]
	.loc 8 497 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE260:
	.size	nrf_uart_configure, .-nrf_uart_configure
	.section	.text.nrf_uart_baudrate_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_baudrate_set, %function
nrf_uart_baudrate_set:
.LFB261:
	.loc 8 500 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 501 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #1316]
	.loc 8 502 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE261:
	.size	nrf_uart_baudrate_set, .-nrf_uart_baudrate_set
	.section	.text.nrf51_errata_1,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_1, %function
nrf51_errata_1:
.LFB264:
	.file 9 "Files/nrfx/mdk/nrf51_erratas.h"
	.loc 9 142 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 144 16
	movs	r3, #0
	.loc 9 190 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE264:
	.size	nrf51_errata_1, .-nrf51_errata_1
	.section	.text.nrf51_errata_2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_2, %function
nrf51_errata_2:
.LFB265:
	.loc 9 206 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 208 16
	movs	r3, #0
	.loc 9 254 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE265:
	.size	nrf51_errata_2, .-nrf51_errata_2
	.section	.text.nrf51_errata_3,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_3, %function
nrf51_errata_3:
.LFB266:
	.loc 9 270 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 272 16
	movs	r3, #0
	.loc 9 318 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE266:
	.size	nrf51_errata_3, .-nrf51_errata_3
	.section	.text.nrf51_errata_4,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_4, %function
nrf51_errata_4:
.LFB267:
	.loc 9 328 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 330 16
	movs	r3, #0
	.loc 9 334 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE267:
	.size	nrf51_errata_4, .-nrf51_errata_4
	.section	.text.nrf51_errata_5,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_5, %function
nrf51_errata_5:
.LFB268:
	.loc 9 344 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 346 16
	movs	r3, #0
	.loc 9 350 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE268:
	.size	nrf51_errata_5, .-nrf51_errata_5
	.section	.text.nrf51_errata_6,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_6, %function
nrf51_errata_6:
.LFB269:
	.loc 9 366 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 368 16
	movs	r3, #0
	.loc 9 414 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE269:
	.size	nrf51_errata_6, .-nrf51_errata_6
	.section	.text.nrf51_errata_7,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_7, %function
nrf51_errata_7:
.LFB270:
	.loc 9 430 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 432 16
	movs	r3, #0
	.loc 9 478 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE270:
	.size	nrf51_errata_7, .-nrf51_errata_7
	.section	.text.nrf51_errata_8,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_8, %function
nrf51_errata_8:
.LFB271:
	.loc 9 494 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 496 16
	movs	r3, #0
	.loc 9 542 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE271:
	.size	nrf51_errata_8, .-nrf51_errata_8
	.section	.text.nrf51_errata_9,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_9, %function
nrf51_errata_9:
.LFB272:
	.loc 9 558 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 560 16
	movs	r3, #0
	.loc 9 606 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE272:
	.size	nrf51_errata_9, .-nrf51_errata_9
	.section	.text.nrf51_errata_10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_10, %function
nrf51_errata_10:
.LFB273:
	.loc 9 622 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 624 16
	movs	r3, #0
	.loc 9 670 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE273:
	.size	nrf51_errata_10, .-nrf51_errata_10
	.section	.text.nrf51_errata_11,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_11, %function
nrf51_errata_11:
.LFB274:
	.loc 9 686 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 688 16
	movs	r3, #0
	.loc 9 734 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE274:
	.size	nrf51_errata_11, .-nrf51_errata_11
	.section	.text.nrf51_errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_12, %function
nrf51_errata_12:
.LFB275:
	.loc 9 750 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 752 16
	movs	r3, #0
	.loc 9 798 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE275:
	.size	nrf51_errata_12, .-nrf51_errata_12
	.section	.text.nrf51_errata_13,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_13, %function
nrf51_errata_13:
.LFB276:
	.loc 9 814 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 816 16
	movs	r3, #0
	.loc 9 862 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE276:
	.size	nrf51_errata_13, .-nrf51_errata_13
	.section	.text.nrf51_errata_14,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_14, %function
nrf51_errata_14:
.LFB277:
	.loc 9 878 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 880 16
	movs	r3, #0
	.loc 9 926 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE277:
	.size	nrf51_errata_14, .-nrf51_errata_14
	.section	.text.nrf51_errata_15,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_15, %function
nrf51_errata_15:
.LFB278:
	.loc 9 942 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 944 16
	movs	r3, #0
	.loc 9 990 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE278:
	.size	nrf51_errata_15, .-nrf51_errata_15
	.section	.text.nrf51_errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_16, %function
nrf51_errata_16:
.LFB279:
	.loc 9 1006 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1008 16
	movs	r3, #0
	.loc 9 1054 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE279:
	.size	nrf51_errata_16, .-nrf51_errata_16
	.section	.text.nrf51_errata_17,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_17, %function
nrf51_errata_17:
.LFB280:
	.loc 9 1070 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1072 16
	movs	r3, #0
	.loc 9 1118 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE280:
	.size	nrf51_errata_17, .-nrf51_errata_17
	.section	.text.nrf51_errata_18,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_18, %function
nrf51_errata_18:
.LFB281:
	.loc 9 1134 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1136 16
	movs	r3, #0
	.loc 9 1182 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE281:
	.size	nrf51_errata_18, .-nrf51_errata_18
	.section	.text.nrf51_errata_19,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_19, %function
nrf51_errata_19:
.LFB282:
	.loc 9 1198 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1200 16
	movs	r3, #0
	.loc 9 1246 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE282:
	.size	nrf51_errata_19, .-nrf51_errata_19
	.section	.text.nrf51_errata_20,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_20, %function
nrf51_errata_20:
.LFB283:
	.loc 9 1262 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1264 16
	movs	r3, #0
	.loc 9 1310 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE283:
	.size	nrf51_errata_20, .-nrf51_errata_20
	.section	.text.nrf51_errata_21,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_21, %function
nrf51_errata_21:
.LFB284:
	.loc 9 1326 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1328 16
	movs	r3, #0
	.loc 9 1374 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE284:
	.size	nrf51_errata_21, .-nrf51_errata_21
	.section	.text.nrf51_errata_22,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_22, %function
nrf51_errata_22:
.LFB285:
	.loc 9 1390 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1392 16
	movs	r3, #0
	.loc 9 1438 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE285:
	.size	nrf51_errata_22, .-nrf51_errata_22
	.section	.text.nrf51_errata_23,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_23, %function
nrf51_errata_23:
.LFB286:
	.loc 9 1454 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1456 16
	movs	r3, #0
	.loc 9 1502 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE286:
	.size	nrf51_errata_23, .-nrf51_errata_23
	.section	.text.nrf51_errata_24,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_24, %function
nrf51_errata_24:
.LFB287:
	.loc 9 1518 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1520 16
	movs	r3, #0
	.loc 9 1566 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE287:
	.size	nrf51_errata_24, .-nrf51_errata_24
	.section	.text.nrf51_errata_25,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_25, %function
nrf51_errata_25:
.LFB288:
	.loc 9 1582 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1584 16
	movs	r3, #0
	.loc 9 1630 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE288:
	.size	nrf51_errata_25, .-nrf51_errata_25
	.section	.text.nrf51_errata_26,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_26, %function
nrf51_errata_26:
.LFB289:
	.loc 9 1646 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1648 16
	movs	r3, #0
	.loc 9 1694 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE289:
	.size	nrf51_errata_26, .-nrf51_errata_26
	.section	.text.nrf51_errata_27,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_27, %function
nrf51_errata_27:
.LFB290:
	.loc 9 1710 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1712 16
	movs	r3, #0
	.loc 9 1758 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE290:
	.size	nrf51_errata_27, .-nrf51_errata_27
	.section	.text.nrf51_errata_28,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_28, %function
nrf51_errata_28:
.LFB291:
	.loc 9 1774 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1776 16
	movs	r3, #0
	.loc 9 1822 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE291:
	.size	nrf51_errata_28, .-nrf51_errata_28
	.section	.text.nrf51_errata_29,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_29, %function
nrf51_errata_29:
.LFB292:
	.loc 9 1838 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1840 16
	movs	r3, #0
	.loc 9 1886 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE292:
	.size	nrf51_errata_29, .-nrf51_errata_29
	.section	.text.nrf51_errata_30,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_30, %function
nrf51_errata_30:
.LFB293:
	.loc 9 1902 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1904 16
	movs	r3, #0
	.loc 9 1950 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE293:
	.size	nrf51_errata_30, .-nrf51_errata_30
	.section	.text.nrf51_errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_31, %function
nrf51_errata_31:
.LFB294:
	.loc 9 1966 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 1968 16
	movs	r3, #0
	.loc 9 2014 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE294:
	.size	nrf51_errata_31, .-nrf51_errata_31
	.section	.text.nrf51_errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_32, %function
nrf51_errata_32:
.LFB295:
	.loc 9 2030 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2032 16
	movs	r3, #0
	.loc 9 2078 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE295:
	.size	nrf51_errata_32, .-nrf51_errata_32
	.section	.text.nrf51_errata_33,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_33, %function
nrf51_errata_33:
.LFB296:
	.loc 9 2094 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2096 16
	movs	r3, #0
	.loc 9 2142 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE296:
	.size	nrf51_errata_33, .-nrf51_errata_33
	.section	.text.nrf51_errata_34,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_34, %function
nrf51_errata_34:
.LFB297:
	.loc 9 2158 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2160 16
	movs	r3, #0
	.loc 9 2206 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE297:
	.size	nrf51_errata_34, .-nrf51_errata_34
	.section	.text.nrf51_errata_35,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_35, %function
nrf51_errata_35:
.LFB298:
	.loc 9 2222 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2224 16
	movs	r3, #0
	.loc 9 2270 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE298:
	.size	nrf51_errata_35, .-nrf51_errata_35
	.section	.text.nrf51_errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_36, %function
nrf51_errata_36:
.LFB299:
	.loc 9 2286 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2288 16
	movs	r3, #0
	.loc 9 2334 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE299:
	.size	nrf51_errata_36, .-nrf51_errata_36
	.section	.text.nrf51_errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_37, %function
nrf51_errata_37:
.LFB300:
	.loc 9 2350 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2352 16
	movs	r3, #0
	.loc 9 2398 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE300:
	.size	nrf51_errata_37, .-nrf51_errata_37
	.section	.text.nrf51_errata_38,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_38, %function
nrf51_errata_38:
.LFB301:
	.loc 9 2414 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2416 16
	movs	r3, #0
	.loc 9 2462 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE301:
	.size	nrf51_errata_38, .-nrf51_errata_38
	.section	.text.nrf51_errata_39,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_39, %function
nrf51_errata_39:
.LFB302:
	.loc 9 2478 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2480 16
	movs	r3, #0
	.loc 9 2526 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE302:
	.size	nrf51_errata_39, .-nrf51_errata_39
	.section	.text.nrf51_errata_40,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_40, %function
nrf51_errata_40:
.LFB303:
	.loc 9 2542 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2544 16
	movs	r3, #0
	.loc 9 2590 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE303:
	.size	nrf51_errata_40, .-nrf51_errata_40
	.section	.text.nrf51_errata_41,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_41, %function
nrf51_errata_41:
.LFB304:
	.loc 9 2606 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2608 16
	movs	r3, #0
	.loc 9 2654 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE304:
	.size	nrf51_errata_41, .-nrf51_errata_41
	.section	.text.nrf51_errata_42,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_42, %function
nrf51_errata_42:
.LFB305:
	.loc 9 2670 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2672 16
	movs	r3, #0
	.loc 9 2718 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE305:
	.size	nrf51_errata_42, .-nrf51_errata_42
	.section	.text.nrf51_errata_43,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_43, %function
nrf51_errata_43:
.LFB306:
	.loc 9 2734 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2736 16
	movs	r3, #0
	.loc 9 2782 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE306:
	.size	nrf51_errata_43, .-nrf51_errata_43
	.section	.text.nrf51_errata_44,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_44, %function
nrf51_errata_44:
.LFB307:
	.loc 9 2798 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2800 16
	movs	r3, #0
	.loc 9 2846 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE307:
	.size	nrf51_errata_44, .-nrf51_errata_44
	.section	.text.nrf51_errata_45,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_45, %function
nrf51_errata_45:
.LFB308:
	.loc 9 2862 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2864 16
	movs	r3, #0
	.loc 9 2910 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE308:
	.size	nrf51_errata_45, .-nrf51_errata_45
	.section	.text.nrf51_errata_46,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_46, %function
nrf51_errata_46:
.LFB309:
	.loc 9 2926 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2928 16
	movs	r3, #0
	.loc 9 2974 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE309:
	.size	nrf51_errata_46, .-nrf51_errata_46
	.section	.text.nrf51_errata_47,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_47, %function
nrf51_errata_47:
.LFB310:
	.loc 9 2990 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 2992 16
	movs	r3, #0
	.loc 9 3038 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE310:
	.size	nrf51_errata_47, .-nrf51_errata_47
	.section	.text.nrf51_errata_48,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_48, %function
nrf51_errata_48:
.LFB311:
	.loc 9 3054 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3056 16
	movs	r3, #0
	.loc 9 3102 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE311:
	.size	nrf51_errata_48, .-nrf51_errata_48
	.section	.text.nrf51_errata_49,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_49, %function
nrf51_errata_49:
.LFB312:
	.loc 9 3118 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3120 16
	movs	r3, #0
	.loc 9 3166 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE312:
	.size	nrf51_errata_49, .-nrf51_errata_49
	.section	.text.nrf51_errata_50,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_50, %function
nrf51_errata_50:
.LFB313:
	.loc 9 3176 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3178 16
	movs	r3, #0
	.loc 9 3182 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE313:
	.size	nrf51_errata_50, .-nrf51_errata_50
	.section	.text.nrf51_errata_51,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_51, %function
nrf51_errata_51:
.LFB314:
	.loc 9 3192 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3194 16
	movs	r3, #0
	.loc 9 3198 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE314:
	.size	nrf51_errata_51, .-nrf51_errata_51
	.section	.text.nrf51_errata_52,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_52, %function
nrf51_errata_52:
.LFB315:
	.loc 9 3208 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3210 16
	movs	r3, #0
	.loc 9 3214 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE315:
	.size	nrf51_errata_52, .-nrf51_errata_52
	.section	.text.nrf51_errata_53,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_53, %function
nrf51_errata_53:
.LFB316:
	.loc 9 3224 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3226 16
	movs	r3, #0
	.loc 9 3230 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE316:
	.size	nrf51_errata_53, .-nrf51_errata_53
	.section	.text.nrf51_errata_54,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_54, %function
nrf51_errata_54:
.LFB317:
	.loc 9 3240 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3242 16
	movs	r3, #0
	.loc 9 3246 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE317:
	.size	nrf51_errata_54, .-nrf51_errata_54
	.section	.text.nrf51_errata_55,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_55, %function
nrf51_errata_55:
.LFB318:
	.loc 9 3262 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3264 16
	movs	r3, #0
	.loc 9 3310 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE318:
	.size	nrf51_errata_55, .-nrf51_errata_55
	.section	.text.nrf51_errata_56,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_56, %function
nrf51_errata_56:
.LFB319:
	.loc 9 3326 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3328 16
	movs	r3, #0
	.loc 9 3374 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE319:
	.size	nrf51_errata_56, .-nrf51_errata_56
	.section	.text.nrf51_errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_57, %function
nrf51_errata_57:
.LFB320:
	.loc 9 3390 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3392 16
	movs	r3, #0
	.loc 9 3438 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE320:
	.size	nrf51_errata_57, .-nrf51_errata_57
	.section	.text.nrf51_errata_58,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_58, %function
nrf51_errata_58:
.LFB321:
	.loc 9 3454 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3456 16
	movs	r3, #0
	.loc 9 3502 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE321:
	.size	nrf51_errata_58, .-nrf51_errata_58
	.section	.text.nrf51_errata_59,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_59, %function
nrf51_errata_59:
.LFB322:
	.loc 9 3518 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3520 16
	movs	r3, #0
	.loc 9 3566 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE322:
	.size	nrf51_errata_59, .-nrf51_errata_59
	.section	.text.nrf51_errata_60,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_60, %function
nrf51_errata_60:
.LFB323:
	.loc 9 3582 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3584 16
	movs	r3, #0
	.loc 9 3630 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE323:
	.size	nrf51_errata_60, .-nrf51_errata_60
	.section	.text.nrf51_errata_61,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_61, %function
nrf51_errata_61:
.LFB324:
	.loc 9 3646 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3648 16
	movs	r3, #0
	.loc 9 3694 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE324:
	.size	nrf51_errata_61, .-nrf51_errata_61
	.section	.text.nrf51_errata_62,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_62, %function
nrf51_errata_62:
.LFB325:
	.loc 9 3710 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3712 16
	movs	r3, #0
	.loc 9 3758 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE325:
	.size	nrf51_errata_62, .-nrf51_errata_62
	.section	.text.nrf51_errata_63,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_63, %function
nrf51_errata_63:
.LFB326:
	.loc 9 3774 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3776 16
	movs	r3, #0
	.loc 9 3822 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE326:
	.size	nrf51_errata_63, .-nrf51_errata_63
	.section	.text.nrf51_errata_64,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_64, %function
nrf51_errata_64:
.LFB327:
	.loc 9 3838 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3840 16
	movs	r3, #0
	.loc 9 3886 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE327:
	.size	nrf51_errata_64, .-nrf51_errata_64
	.section	.text.nrf51_errata_65,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_65, %function
nrf51_errata_65:
.LFB328:
	.loc 9 3902 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3904 16
	movs	r3, #0
	.loc 9 3950 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE328:
	.size	nrf51_errata_65, .-nrf51_errata_65
	.section	.text.nrf51_errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_66, %function
nrf51_errata_66:
.LFB329:
	.loc 9 3966 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 3968 16
	movs	r3, #0
	.loc 9 4014 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE329:
	.size	nrf51_errata_66, .-nrf51_errata_66
	.section	.text.nrf51_errata_67,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_67, %function
nrf51_errata_67:
.LFB330:
	.loc 9 4030 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4032 16
	movs	r3, #0
	.loc 9 4078 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE330:
	.size	nrf51_errata_67, .-nrf51_errata_67
	.section	.text.nrf51_errata_68,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_68, %function
nrf51_errata_68:
.LFB331:
	.loc 9 4094 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4096 16
	movs	r3, #0
	.loc 9 4142 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE331:
	.size	nrf51_errata_68, .-nrf51_errata_68
	.section	.text.nrf51_errata_69,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_69, %function
nrf51_errata_69:
.LFB332:
	.loc 9 4158 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4160 16
	movs	r3, #0
	.loc 9 4206 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE332:
	.size	nrf51_errata_69, .-nrf51_errata_69
	.section	.text.nrf51_errata_70,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_70, %function
nrf51_errata_70:
.LFB333:
	.loc 9 4222 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4224 16
	movs	r3, #0
	.loc 9 4270 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE333:
	.size	nrf51_errata_70, .-nrf51_errata_70
	.section	.text.nrf51_errata_71,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_71, %function
nrf51_errata_71:
.LFB334:
	.loc 9 4286 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4288 16
	movs	r3, #0
	.loc 9 4334 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE334:
	.size	nrf51_errata_71, .-nrf51_errata_71
	.section	.text.nrf51_errata_72,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_72, %function
nrf51_errata_72:
.LFB335:
	.loc 9 4350 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4352 16
	movs	r3, #0
	.loc 9 4398 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE335:
	.size	nrf51_errata_72, .-nrf51_errata_72
	.section	.text.nrf51_errata_73,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_73, %function
nrf51_errata_73:
.LFB336:
	.loc 9 4414 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4416 16
	movs	r3, #0
	.loc 9 4462 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE336:
	.size	nrf51_errata_73, .-nrf51_errata_73
	.section	.text.nrf51_errata_74,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_74, %function
nrf51_errata_74:
.LFB337:
	.loc 9 4478 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4480 16
	movs	r3, #0
	.loc 9 4526 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE337:
	.size	nrf51_errata_74, .-nrf51_errata_74
	.section	.text.nrf51_errata_75,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_75, %function
nrf51_errata_75:
.LFB338:
	.loc 9 4542 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4544 16
	movs	r3, #0
	.loc 9 4590 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE338:
	.size	nrf51_errata_75, .-nrf51_errata_75
	.section	.text.nrf51_errata_76,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_76, %function
nrf51_errata_76:
.LFB339:
	.loc 9 4606 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4608 16
	movs	r3, #0
	.loc 9 4654 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE339:
	.size	nrf51_errata_76, .-nrf51_errata_76
	.section	.text.nrf51_errata_77,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_77, %function
nrf51_errata_77:
.LFB340:
	.loc 9 4664 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4666 16
	movs	r3, #0
	.loc 9 4670 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE340:
	.size	nrf51_errata_77, .-nrf51_errata_77
	.section	.text.nrf51_errata_78,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_78, %function
nrf51_errata_78:
.LFB341:
	.loc 9 4686 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 4688 16
	movs	r3, #0
	.loc 9 4734 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE341:
	.size	nrf51_errata_78, .-nrf51_errata_78
	.section	.text.nrf52_errata_1,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_1, %function
nrf52_errata_1:
.LFB342:
	.file 10 "Files/nrfx/mdk/nrf52_erratas.h"
	.loc 10 248 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 278 16
	movs	r3, #0
	.loc 10 280 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE342:
	.size	nrf52_errata_1, .-nrf52_errata_1
	.section	.text.nrf52_errata_2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_2, %function
nrf52_errata_2:
.LFB343:
	.loc 10 295 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 325 16
	movs	r3, #0
	.loc 10 327 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE343:
	.size	nrf52_errata_2, .-nrf52_errata_2
	.section	.text.nrf52_errata_3,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_3, %function
nrf52_errata_3:
.LFB344:
	.loc 10 342 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 372 16
	movs	r3, #0
	.loc 10 374 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE344:
	.size	nrf52_errata_3, .-nrf52_errata_3
	.section	.text.nrf52_errata_4,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_4, %function
nrf52_errata_4:
.LFB345:
	.loc 10 389 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 419 16
	movs	r3, #0
	.loc 10 421 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE345:
	.size	nrf52_errata_4, .-nrf52_errata_4
	.section	.text.nrf52_errata_7,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_7, %function
nrf52_errata_7:
.LFB346:
	.loc 10 436 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 466 16
	movs	r3, #0
	.loc 10 468 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE346:
	.size	nrf52_errata_7, .-nrf52_errata_7
	.section	.text.nrf52_errata_8,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_8, %function
nrf52_errata_8:
.LFB347:
	.loc 10 483 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 513 16
	movs	r3, #0
	.loc 10 515 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE347:
	.size	nrf52_errata_8, .-nrf52_errata_8
	.section	.text.nrf52_errata_9,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_9, %function
nrf52_errata_9:
.LFB348:
	.loc 10 530 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 560 16
	movs	r3, #0
	.loc 10 562 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE348:
	.size	nrf52_errata_9, .-nrf52_errata_9
	.section	.text.nrf52_errata_10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_10, %function
nrf52_errata_10:
.LFB349:
	.loc 10 577 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 607 16
	movs	r3, #0
	.loc 10 609 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE349:
	.size	nrf52_errata_10, .-nrf52_errata_10
	.section	.text.nrf52_errata_11,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_11, %function
nrf52_errata_11:
.LFB350:
	.loc 10 624 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 654 16
	movs	r3, #0
	.loc 10 656 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE350:
	.size	nrf52_errata_11, .-nrf52_errata_11
	.section	.text.nrf52_errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_12, %function
nrf52_errata_12:
.LFB351:
	.loc 10 671 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 712 16
	movs	r3, #0
	.loc 10 714 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE351:
	.size	nrf52_errata_12, .-nrf52_errata_12
	.section	.text.nrf52_errata_15,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_15, %function
nrf52_errata_15:
.LFB352:
	.loc 10 733 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 756 29
	ldr	r3, .L292
	.loc 10 756 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 757 29
	ldr	r3, .L292+4
	.loc 10 757 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 781 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L282
	.loc 10 783 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L283
	adr	r2, .L285
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L285:
	.word	.L290+1
	.word	.L289+1
	.word	.L288+1
	.word	.L287+1
	.word	.L286+1
	.word	.L284+1
	.p2align 1
.L290:
	.loc 10 786 32
	movs	r3, #1
	b	.L291
.L289:
	.loc 10 788 32
	movs	r3, #0
	b	.L291
.L288:
	.loc 10 790 32
	movs	r3, #0
	b	.L291
.L287:
	.loc 10 792 32
	movs	r3, #0
	b	.L291
.L286:
	.loc 10 794 32
	movs	r3, #0
	b	.L291
.L284:
	.loc 10 796 32
	movs	r3, #0
	b	.L291
.L283:
	.loc 10 798 32
	movs	r3, #0
	b	.L291
.L282:
	.loc 10 840 16
	movs	r3, #0
.L291:
	.loc 10 842 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L293:
	.align	2
.L292:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE352:
	.size	nrf52_errata_15, .-nrf52_errata_15
	.section	.text.nrf52_errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_16, %function
nrf52_errata_16:
.LFB353:
	.loc 10 857 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 887 16
	movs	r3, #0
	.loc 10 889 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE353:
	.size	nrf52_errata_16, .-nrf52_errata_16
	.section	.text.nrf52_errata_17,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_17, %function
nrf52_errata_17:
.LFB354:
	.loc 10 904 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 934 16
	movs	r3, #0
	.loc 10 936 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE354:
	.size	nrf52_errata_17, .-nrf52_errata_17
	.section	.text.nrf52_errata_20,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_20, %function
nrf52_errata_20:
.LFB355:
	.loc 10 957 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 982 29
	ldr	r3, .L309
	.loc 10 982 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 983 29
	ldr	r3, .L309+4
	.loc 10 983 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 1007 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L299
	.loc 10 1009 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L300
	adr	r2, .L302
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L302:
	.word	.L307+1
	.word	.L306+1
	.word	.L305+1
	.word	.L304+1
	.word	.L303+1
	.word	.L301+1
	.p2align 1
.L307:
	.loc 10 1012 32
	movs	r3, #1
	b	.L308
.L306:
	.loc 10 1014 32
	movs	r3, #1
	b	.L308
.L305:
	.loc 10 1016 32
	movs	r3, #1
	b	.L308
.L304:
	.loc 10 1018 32
	movs	r3, #1
	b	.L308
.L303:
	.loc 10 1020 32
	movs	r3, #1
	b	.L308
.L301:
	.loc 10 1022 32
	movs	r3, #1
	b	.L308
.L300:
	.loc 10 1024 32
	movs	r3, #1
	b	.L308
.L299:
	.loc 10 1100 16
	movs	r3, #0
.L308:
	.loc 10 1102 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L310:
	.align	2
.L309:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE355:
	.size	nrf52_errata_20, .-nrf52_errata_20
	.section	.text.nrf52_errata_23,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_23, %function
nrf52_errata_23:
.LFB356:
	.loc 10 1117 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1147 16
	movs	r3, #0
	.loc 10 1149 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE356:
	.size	nrf52_errata_23, .-nrf52_errata_23
	.section	.text.nrf52_errata_24,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_24, %function
nrf52_errata_24:
.LFB357:
	.loc 10 1164 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1194 16
	movs	r3, #0
	.loc 10 1196 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE357:
	.size	nrf52_errata_24, .-nrf52_errata_24
	.section	.text.nrf52_errata_25,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_25, %function
nrf52_errata_25:
.LFB358:
	.loc 10 1211 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1241 16
	movs	r3, #0
	.loc 10 1243 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE358:
	.size	nrf52_errata_25, .-nrf52_errata_25
	.section	.text.nrf52_errata_26,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_26, %function
nrf52_errata_26:
.LFB359:
	.loc 10 1258 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1288 16
	movs	r3, #0
	.loc 10 1290 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE359:
	.size	nrf52_errata_26, .-nrf52_errata_26
	.section	.text.nrf52_errata_27,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_27, %function
nrf52_errata_27:
.LFB360:
	.loc 10 1305 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1335 16
	movs	r3, #0
	.loc 10 1337 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE360:
	.size	nrf52_errata_27, .-nrf52_errata_27
	.section	.text.nrf52_errata_28,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_28, %function
nrf52_errata_28:
.LFB361:
	.loc 10 1352 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1382 16
	movs	r3, #0
	.loc 10 1384 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE361:
	.size	nrf52_errata_28, .-nrf52_errata_28
	.section	.text.nrf52_errata_29,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_29, %function
nrf52_errata_29:
.LFB362:
	.loc 10 1399 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1429 16
	movs	r3, #0
	.loc 10 1431 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE362:
	.size	nrf52_errata_29, .-nrf52_errata_29
	.section	.text.nrf52_errata_30,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_30, %function
nrf52_errata_30:
.LFB363:
	.loc 10 1446 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1476 16
	movs	r3, #0
	.loc 10 1478 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE363:
	.size	nrf52_errata_30, .-nrf52_errata_30
	.section	.text.nrf52_errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_31, %function
nrf52_errata_31:
.LFB364:
	.loc 10 1496 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1580 16
	movs	r3, #0
	.loc 10 1582 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE364:
	.size	nrf52_errata_31, .-nrf52_errata_31
	.section	.text.nrf52_errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_32, %function
nrf52_errata_32:
.LFB365:
	.loc 10 1597 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1627 16
	movs	r3, #0
	.loc 10 1629 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE365:
	.size	nrf52_errata_32, .-nrf52_errata_32
	.section	.text.nrf52_errata_33,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_33, %function
nrf52_errata_33:
.LFB366:
	.loc 10 1644 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1674 16
	movs	r3, #0
	.loc 10 1676 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE366:
	.size	nrf52_errata_33, .-nrf52_errata_33
	.section	.text.nrf52_errata_34,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_34, %function
nrf52_errata_34:
.LFB367:
	.loc 10 1691 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1721 16
	movs	r3, #0
	.loc 10 1723 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE367:
	.size	nrf52_errata_34, .-nrf52_errata_34
	.section	.text.nrf52_errata_35,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_35, %function
nrf52_errata_35:
.LFB368:
	.loc 10 1738 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1768 16
	movs	r3, #0
	.loc 10 1770 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE368:
	.size	nrf52_errata_35, .-nrf52_errata_35
	.section	.text.nrf52_errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_36, %function
nrf52_errata_36:
.LFB369:
	.loc 10 1791 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 1816 29
	ldr	r3, .L348
	.loc 10 1816 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 1817 29
	ldr	r3, .L348+4
	.loc 10 1817 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 1841 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L338
	.loc 10 1843 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L339
	adr	r2, .L341
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L341:
	.word	.L346+1
	.word	.L345+1
	.word	.L344+1
	.word	.L343+1
	.word	.L342+1
	.word	.L340+1
	.p2align 1
.L346:
	.loc 10 1846 32
	movs	r3, #1
	b	.L347
.L345:
	.loc 10 1848 32
	movs	r3, #1
	b	.L347
.L344:
	.loc 10 1850 32
	movs	r3, #1
	b	.L347
.L343:
	.loc 10 1852 32
	movs	r3, #1
	b	.L347
.L342:
	.loc 10 1854 32
	movs	r3, #1
	b	.L347
.L340:
	.loc 10 1856 32
	movs	r3, #1
	b	.L347
.L339:
	.loc 10 1858 32
	movs	r3, #1
	b	.L347
.L338:
	.loc 10 1934 16
	movs	r3, #0
.L347:
	.loc 10 1936 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L349:
	.align	2
.L348:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE369:
	.size	nrf52_errata_36, .-nrf52_errata_36
	.section	.text.nrf52_errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_37, %function
nrf52_errata_37:
.LFB370:
	.loc 10 1951 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 1981 16
	movs	r3, #0
	.loc 10 1983 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE370:
	.size	nrf52_errata_37, .-nrf52_errata_37
	.section	.text.nrf52_errata_38,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_38, %function
nrf52_errata_38:
.LFB371:
	.loc 10 1998 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2028 16
	movs	r3, #0
	.loc 10 2030 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE371:
	.size	nrf52_errata_38, .-nrf52_errata_38
	.section	.text.nrf52_errata_39,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_39, %function
nrf52_errata_39:
.LFB372:
	.loc 10 2045 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2075 16
	movs	r3, #0
	.loc 10 2077 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE372:
	.size	nrf52_errata_39, .-nrf52_errata_39
	.section	.text.nrf52_errata_40,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_40, %function
nrf52_errata_40:
.LFB373:
	.loc 10 2092 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2122 16
	movs	r3, #0
	.loc 10 2124 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE373:
	.size	nrf52_errata_40, .-nrf52_errata_40
	.section	.text.nrf52_errata_41,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_41, %function
nrf52_errata_41:
.LFB374:
	.loc 10 2139 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2169 16
	movs	r3, #0
	.loc 10 2171 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE374:
	.size	nrf52_errata_41, .-nrf52_errata_41
	.section	.text.nrf52_errata_42,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_42, %function
nrf52_errata_42:
.LFB375:
	.loc 10 2186 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2216 16
	movs	r3, #0
	.loc 10 2218 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE375:
	.size	nrf52_errata_42, .-nrf52_errata_42
	.section	.text.nrf52_errata_43,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_43, %function
nrf52_errata_43:
.LFB376:
	.loc 10 2233 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2263 16
	movs	r3, #0
	.loc 10 2265 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE376:
	.size	nrf52_errata_43, .-nrf52_errata_43
	.section	.text.nrf52_errata_44,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_44, %function
nrf52_errata_44:
.LFB377:
	.loc 10 2280 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2310 16
	movs	r3, #0
	.loc 10 2312 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE377:
	.size	nrf52_errata_44, .-nrf52_errata_44
	.section	.text.nrf52_errata_46,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_46, %function
nrf52_errata_46:
.LFB378:
	.loc 10 2327 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2357 16
	movs	r3, #0
	.loc 10 2359 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE378:
	.size	nrf52_errata_46, .-nrf52_errata_46
	.section	.text.nrf52_errata_47,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_47, %function
nrf52_errata_47:
.LFB379:
	.loc 10 2374 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2404 16
	movs	r3, #0
	.loc 10 2406 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE379:
	.size	nrf52_errata_47, .-nrf52_errata_47
	.section	.text.nrf52_errata_48,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_48, %function
nrf52_errata_48:
.LFB380:
	.loc 10 2421 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2451 16
	movs	r3, #0
	.loc 10 2453 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE380:
	.size	nrf52_errata_48, .-nrf52_errata_48
	.section	.text.nrf52_errata_49,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_49, %function
nrf52_errata_49:
.LFB381:
	.loc 10 2468 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2498 16
	movs	r3, #0
	.loc 10 2500 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE381:
	.size	nrf52_errata_49, .-nrf52_errata_49
	.section	.text.nrf52_errata_51,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_51, %function
nrf52_errata_51:
.LFB382:
	.loc 10 2515 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2556 16
	movs	r3, #0
	.loc 10 2558 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE382:
	.size	nrf52_errata_51, .-nrf52_errata_51
	.section	.text.nrf52_errata_54,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_54, %function
nrf52_errata_54:
.LFB383:
	.loc 10 2574 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 2594 29
	ldr	r3, .L387
	.loc 10 2594 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 2595 29
	ldr	r3, .L387+4
	.loc 10 2595 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 2619 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L377
	.loc 10 2621 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L378
	adr	r2, .L380
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L380:
	.word	.L385+1
	.word	.L384+1
	.word	.L383+1
	.word	.L382+1
	.word	.L381+1
	.word	.L379+1
	.p2align 1
.L385:
	.loc 10 2624 32
	movs	r3, #1
	b	.L386
.L384:
	.loc 10 2626 32
	movs	r3, #0
	b	.L386
.L383:
	.loc 10 2628 32
	movs	r3, #0
	b	.L386
.L382:
	.loc 10 2630 32
	movs	r3, #0
	b	.L386
.L381:
	.loc 10 2632 32
	movs	r3, #0
	b	.L386
.L379:
	.loc 10 2634 32
	movs	r3, #0
	b	.L386
.L378:
	.loc 10 2636 32
	movs	r3, #0
	b	.L386
.L377:
	.loc 10 2640 16
	movs	r3, #0
.L386:
	.loc 10 2642 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L388:
	.align	2
.L387:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE383:
	.size	nrf52_errata_54, .-nrf52_errata_54
	.section	.text.nrf52_errata_55,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_55, %function
nrf52_errata_55:
.LFB384:
	.loc 10 2660 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 2682 29
	ldr	r3, .L400
	.loc 10 2682 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 2683 29
	ldr	r3, .L400+4
	.loc 10 2683 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 2707 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L390
	.loc 10 2709 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L391
	adr	r2, .L393
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L393:
	.word	.L398+1
	.word	.L397+1
	.word	.L396+1
	.word	.L395+1
	.word	.L394+1
	.word	.L392+1
	.p2align 1
.L398:
	.loc 10 2712 32
	movs	r3, #1
	b	.L399
.L397:
	.loc 10 2714 32
	movs	r3, #1
	b	.L399
.L396:
	.loc 10 2716 32
	movs	r3, #1
	b	.L399
.L395:
	.loc 10 2718 32
	movs	r3, #1
	b	.L399
.L394:
	.loc 10 2720 32
	movs	r3, #1
	b	.L399
.L392:
	.loc 10 2722 32
	movs	r3, #1
	b	.L399
.L391:
	.loc 10 2724 32
	movs	r3, #1
	b	.L399
.L390:
	.loc 10 2762 16
	movs	r3, #0
.L399:
	.loc 10 2764 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L401:
	.align	2
.L400:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE384:
	.size	nrf52_errata_55, .-nrf52_errata_55
	.section	.text.nrf52_errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_57, %function
nrf52_errata_57:
.LFB385:
	.loc 10 2779 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2809 16
	movs	r3, #0
	.loc 10 2811 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE385:
	.size	nrf52_errata_57, .-nrf52_errata_57
	.section	.text.nrf52_errata_58,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_58, %function
nrf52_errata_58:
.LFB386:
	.loc 10 2827 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 2847 29
	ldr	r3, .L415
	.loc 10 2847 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 2848 29
	ldr	r3, .L415+4
	.loc 10 2848 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 2872 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L405
	.loc 10 2874 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L406
	adr	r2, .L408
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L408:
	.word	.L413+1
	.word	.L412+1
	.word	.L411+1
	.word	.L410+1
	.word	.L409+1
	.word	.L407+1
	.p2align 1
.L413:
	.loc 10 2877 32
	movs	r3, #1
	b	.L414
.L412:
	.loc 10 2879 32
	movs	r3, #0
	b	.L414
.L411:
	.loc 10 2881 32
	movs	r3, #0
	b	.L414
.L410:
	.loc 10 2883 32
	movs	r3, #0
	b	.L414
.L409:
	.loc 10 2885 32
	movs	r3, #0
	b	.L414
.L407:
	.loc 10 2887 32
	movs	r3, #0
	b	.L414
.L406:
	.loc 10 2889 32
	movs	r3, #0
	b	.L414
.L405:
	.loc 10 2893 16
	movs	r3, #0
.L414:
	.loc 10 2895 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L416:
	.align	2
.L415:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE386:
	.size	nrf52_errata_58, .-nrf52_errata_58
	.section	.text.nrf52_errata_62,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_62, %function
nrf52_errata_62:
.LFB387:
	.loc 10 2910 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2940 16
	movs	r3, #0
	.loc 10 2942 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE387:
	.size	nrf52_errata_62, .-nrf52_errata_62
	.section	.text.nrf52_errata_63,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_63, %function
nrf52_errata_63:
.LFB388:
	.loc 10 2957 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 2987 16
	movs	r3, #0
	.loc 10 2989 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE388:
	.size	nrf52_errata_63, .-nrf52_errata_63
	.section	.text.nrf52_errata_64,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_64, %function
nrf52_errata_64:
.LFB389:
	.loc 10 3004 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3045 16
	movs	r3, #0
	.loc 10 3047 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE389:
	.size	nrf52_errata_64, .-nrf52_errata_64
	.section	.text.nrf52_errata_65,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_65, %function
nrf52_errata_65:
.LFB390:
	.loc 10 3062 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3092 16
	movs	r3, #0
	.loc 10 3094 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE390:
	.size	nrf52_errata_65, .-nrf52_errata_65
	.section	.text.nrf52_errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_66, %function
nrf52_errata_66:
.LFB391:
	.loc 10 3115 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 3140 29
	ldr	r3, .L436
	.loc 10 3140 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 3141 29
	ldr	r3, .L436+4
	.loc 10 3141 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 3165 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L426
	.loc 10 3167 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L427
	adr	r2, .L429
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L429:
	.word	.L434+1
	.word	.L433+1
	.word	.L432+1
	.word	.L431+1
	.word	.L430+1
	.word	.L428+1
	.p2align 1
.L434:
	.loc 10 3170 32
	movs	r3, #1
	b	.L435
.L433:
	.loc 10 3172 32
	movs	r3, #1
	b	.L435
.L432:
	.loc 10 3174 32
	movs	r3, #1
	b	.L435
.L431:
	.loc 10 3176 32
	movs	r3, #1
	b	.L435
.L430:
	.loc 10 3178 32
	movs	r3, #1
	b	.L435
.L428:
	.loc 10 3180 32
	movs	r3, #1
	b	.L435
.L427:
	.loc 10 3182 32
	movs	r3, #1
	b	.L435
.L426:
	.loc 10 3258 16
	movs	r3, #0
.L435:
	.loc 10 3260 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L437:
	.align	2
.L436:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE391:
	.size	nrf52_errata_66, .-nrf52_errata_66
	.section	.text.nrf52_errata_67,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_67, %function
nrf52_errata_67:
.LFB392:
	.loc 10 3275 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3316 16
	movs	r3, #0
	.loc 10 3318 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE392:
	.size	nrf52_errata_67, .-nrf52_errata_67
	.section	.text.nrf52_errata_68,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_68, %function
nrf52_errata_68:
.LFB393:
	.loc 10 3337 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 3360 29
	ldr	r3, .L451
	.loc 10 3360 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 3361 29
	ldr	r3, .L451+4
	.loc 10 3361 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 3385 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L441
	.loc 10 3387 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L442
	adr	r2, .L444
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L444:
	.word	.L449+1
	.word	.L448+1
	.word	.L447+1
	.word	.L446+1
	.word	.L445+1
	.word	.L443+1
	.p2align 1
.L449:
	.loc 10 3390 32
	movs	r3, #1
	b	.L450
.L448:
	.loc 10 3392 32
	movs	r3, #0
	b	.L450
.L447:
	.loc 10 3394 32
	movs	r3, #0
	b	.L450
.L446:
	.loc 10 3396 32
	movs	r3, #0
	b	.L450
.L445:
	.loc 10 3398 32
	movs	r3, #0
	b	.L450
.L443:
	.loc 10 3400 32
	movs	r3, #0
	b	.L450
.L442:
	.loc 10 3402 32
	movs	r3, #0
	b	.L450
.L441:
	.loc 10 3444 16
	movs	r3, #0
.L450:
	.loc 10 3446 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L452:
	.align	2
.L451:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE393:
	.size	nrf52_errata_68, .-nrf52_errata_68
	.section	.text.nrf52_errata_70,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_70, %function
nrf52_errata_70:
.LFB394:
	.loc 10 3461 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3491 16
	movs	r3, #0
	.loc 10 3493 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE394:
	.size	nrf52_errata_70, .-nrf52_errata_70
	.section	.text.nrf52_errata_71,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_71, %function
nrf52_errata_71:
.LFB395:
	.loc 10 3508 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3538 16
	movs	r3, #0
	.loc 10 3540 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE395:
	.size	nrf52_errata_71, .-nrf52_errata_71
	.section	.text.nrf52_errata_72,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_72, %function
nrf52_errata_72:
.LFB396:
	.loc 10 3555 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3596 16
	movs	r3, #0
	.loc 10 3598 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE396:
	.size	nrf52_errata_72, .-nrf52_errata_72
	.section	.text.nrf52_errata_73,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_73, %function
nrf52_errata_73:
.LFB397:
	.loc 10 3613 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3643 16
	movs	r3, #0
	.loc 10 3645 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE397:
	.size	nrf52_errata_73, .-nrf52_errata_73
	.section	.text.nrf52_errata_74,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_74, %function
nrf52_errata_74:
.LFB398:
	.loc 10 3660 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3701 16
	movs	r3, #0
	.loc 10 3703 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE398:
	.size	nrf52_errata_74, .-nrf52_errata_74
	.section	.text.nrf52_errata_75,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_75, %function
nrf52_errata_75:
.LFB399:
	.loc 10 3718 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3759 16
	movs	r3, #0
	.loc 10 3761 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE399:
	.size	nrf52_errata_75, .-nrf52_errata_75
	.section	.text.nrf52_errata_76,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_76, %function
nrf52_errata_76:
.LFB400:
	.loc 10 3776 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3817 16
	movs	r3, #0
	.loc 10 3819 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE400:
	.size	nrf52_errata_76, .-nrf52_errata_76
	.section	.text.nrf52_errata_77,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_77, %function
nrf52_errata_77:
.LFB401:
	.loc 10 3837 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 3921 16
	movs	r3, #0
	.loc 10 3923 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE401:
	.size	nrf52_errata_77, .-nrf52_errata_77
	.section	.text.nrf52_errata_78,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_78, %function
nrf52_errata_78:
.LFB402:
	.loc 10 3944 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 3969 29
	ldr	r3, .L480
	.loc 10 3969 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 3970 29
	ldr	r3, .L480+4
	.loc 10 3970 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 3994 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L470
	.loc 10 3996 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L471
	adr	r2, .L473
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L473:
	.word	.L478+1
	.word	.L477+1
	.word	.L476+1
	.word	.L475+1
	.word	.L474+1
	.word	.L472+1
	.p2align 1
.L478:
	.loc 10 3999 32
	movs	r3, #1
	b	.L479
.L477:
	.loc 10 4001 32
	movs	r3, #1
	b	.L479
.L476:
	.loc 10 4003 32
	movs	r3, #1
	b	.L479
.L475:
	.loc 10 4005 32
	movs	r3, #1
	b	.L479
.L474:
	.loc 10 4007 32
	movs	r3, #1
	b	.L479
.L472:
	.loc 10 4009 32
	movs	r3, #1
	b	.L479
.L471:
	.loc 10 4011 32
	movs	r3, #1
	b	.L479
.L470:
	.loc 10 4087 16
	movs	r3, #0
.L479:
	.loc 10 4089 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L481:
	.align	2
.L480:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE402:
	.size	nrf52_errata_78, .-nrf52_errata_78
	.section	.text.nrf52_errata_79,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_79, %function
nrf52_errata_79:
.LFB403:
	.loc 10 4104 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 4145 16
	movs	r3, #0
	.loc 10 4147 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE403:
	.size	nrf52_errata_79, .-nrf52_errata_79
	.section	.text.nrf52_errata_81,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_81, %function
nrf52_errata_81:
.LFB404:
	.loc 10 4166 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4189 29
	ldr	r3, .L495
	.loc 10 4189 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4190 29
	ldr	r3, .L495+4
	.loc 10 4190 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4214 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L485
	.loc 10 4216 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L486
	adr	r2, .L488
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L488:
	.word	.L493+1
	.word	.L492+1
	.word	.L491+1
	.word	.L490+1
	.word	.L489+1
	.word	.L487+1
	.p2align 1
.L493:
	.loc 10 4219 32
	movs	r3, #1
	b	.L494
.L492:
	.loc 10 4221 32
	movs	r3, #1
	b	.L494
.L491:
	.loc 10 4223 32
	movs	r3, #1
	b	.L494
.L490:
	.loc 10 4225 32
	movs	r3, #1
	b	.L494
.L489:
	.loc 10 4227 32
	movs	r3, #1
	b	.L494
.L487:
	.loc 10 4229 32
	movs	r3, #1
	b	.L494
.L486:
	.loc 10 4231 32
	movs	r3, #1
	b	.L494
.L485:
	.loc 10 4273 16
	movs	r3, #0
.L494:
	.loc 10 4275 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L496:
	.align	2
.L495:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE404:
	.size	nrf52_errata_81, .-nrf52_errata_81
	.section	.text.nrf52_errata_83,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_83, %function
nrf52_errata_83:
.LFB405:
	.loc 10 4294 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4317 29
	ldr	r3, .L508
	.loc 10 4317 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4318 29
	ldr	r3, .L508+4
	.loc 10 4318 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4342 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L498
	.loc 10 4344 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L499
	adr	r2, .L501
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L501:
	.word	.L506+1
	.word	.L505+1
	.word	.L504+1
	.word	.L503+1
	.word	.L502+1
	.word	.L500+1
	.p2align 1
.L506:
	.loc 10 4347 32
	movs	r3, #1
	b	.L507
.L505:
	.loc 10 4349 32
	movs	r3, #0
	b	.L507
.L504:
	.loc 10 4351 32
	movs	r3, #0
	b	.L507
.L503:
	.loc 10 4353 32
	movs	r3, #0
	b	.L507
.L502:
	.loc 10 4355 32
	movs	r3, #0
	b	.L507
.L500:
	.loc 10 4357 32
	movs	r3, #0
	b	.L507
.L499:
	.loc 10 4359 32
	movs	r3, #0
	b	.L507
.L498:
	.loc 10 4401 16
	movs	r3, #0
.L507:
	.loc 10 4403 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L509:
	.align	2
.L508:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE405:
	.size	nrf52_errata_83, .-nrf52_errata_83
	.section	.text.nrf52_errata_84,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_84, %function
nrf52_errata_84:
.LFB406:
	.loc 10 4418 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 4459 16
	movs	r3, #0
	.loc 10 4461 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE406:
	.size	nrf52_errata_84, .-nrf52_errata_84
	.section	.text.nrf52_errata_86,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_86, %function
nrf52_errata_86:
.LFB407:
	.loc 10 4476 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 4517 16
	movs	r3, #0
	.loc 10 4519 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE407:
	.size	nrf52_errata_86, .-nrf52_errata_86
	.section	.text.nrf52_errata_87,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_87, %function
nrf52_errata_87:
.LFB408:
	.loc 10 4537 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4559 29
	ldr	r3, .L525
	.loc 10 4559 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4560 29
	ldr	r3, .L525+4
	.loc 10 4560 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4584 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L515
	.loc 10 4586 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L516
	adr	r2, .L518
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L518:
	.word	.L523+1
	.word	.L522+1
	.word	.L521+1
	.word	.L520+1
	.word	.L519+1
	.word	.L517+1
	.p2align 1
.L523:
	.loc 10 4589 32
	movs	r3, #1
	b	.L524
.L522:
	.loc 10 4591 32
	movs	r3, #1
	b	.L524
.L521:
	.loc 10 4593 32
	movs	r3, #1
	b	.L524
.L520:
	.loc 10 4595 32
	movs	r3, #1
	b	.L524
.L519:
	.loc 10 4597 32
	movs	r3, #1
	b	.L524
.L517:
	.loc 10 4599 32
	movs	r3, #1
	b	.L524
.L516:
	.loc 10 4601 32
	movs	r3, #1
	b	.L524
.L515:
	.loc 10 4639 16
	movs	r3, #0
.L524:
	.loc 10 4641 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L526:
	.align	2
.L525:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE408:
	.size	nrf52_errata_87, .-nrf52_errata_87
	.section	.text.nrf52_errata_88,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_88, %function
nrf52_errata_88:
.LFB409:
	.loc 10 4659 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 4743 16
	movs	r3, #0
	.loc 10 4745 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE409:
	.size	nrf52_errata_88, .-nrf52_errata_88
	.section	.text.nrf52_errata_89,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_89, %function
nrf52_errata_89:
.LFB410:
	.loc 10 4761 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4781 29
	ldr	r3, .L540
	.loc 10 4781 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4782 29
	ldr	r3, .L540+4
	.loc 10 4782 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4806 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L530
	.loc 10 4808 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L531
	adr	r2, .L533
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L533:
	.word	.L538+1
	.word	.L537+1
	.word	.L536+1
	.word	.L535+1
	.word	.L534+1
	.word	.L532+1
	.p2align 1
.L538:
	.loc 10 4811 32
	movs	r3, #1
	b	.L539
.L537:
	.loc 10 4813 32
	movs	r3, #0
	b	.L539
.L536:
	.loc 10 4815 32
	movs	r3, #0
	b	.L539
.L535:
	.loc 10 4817 32
	movs	r3, #0
	b	.L539
.L534:
	.loc 10 4819 32
	movs	r3, #0
	b	.L539
.L532:
	.loc 10 4821 32
	movs	r3, #0
	b	.L539
.L531:
	.loc 10 4823 32
	movs	r3, #0
	b	.L539
.L530:
	.loc 10 4827 16
	movs	r3, #0
.L539:
	.loc 10 4829 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L541:
	.align	2
.L540:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE410:
	.size	nrf52_errata_89, .-nrf52_errata_89
	.section	.text.nrf52_errata_91,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_91, %function
nrf52_errata_91:
.LFB411:
	.loc 10 4844 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 4885 16
	movs	r3, #0
	.loc 10 4887 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE411:
	.size	nrf52_errata_91, .-nrf52_errata_91
	.section	.text.nrf52_errata_94,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_94, %function
nrf52_errata_94:
.LFB412:
	.loc 10 4901 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4906 29
	ldr	r3, .L555
	.loc 10 4906 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4907 29
	ldr	r3, .L555+4
	.loc 10 4907 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4910 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L545
	.loc 10 4912 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L546
	adr	r2, .L548
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L548:
	.word	.L553+1
	.word	.L552+1
	.word	.L551+1
	.word	.L550+1
	.word	.L549+1
	.word	.L547+1
	.p2align 1
.L553:
	.loc 10 4915 32
	movs	r3, #1
	b	.L554
.L552:
	.loc 10 4917 32
	movs	r3, #1
	b	.L554
.L551:
	.loc 10 4919 32
	movs	r3, #0
	b	.L554
.L550:
	.loc 10 4921 32
	movs	r3, #0
	b	.L554
.L549:
	.loc 10 4923 32
	movs	r3, #0
	b	.L554
.L547:
	.loc 10 4925 32
	movs	r3, #0
	b	.L554
.L546:
	.loc 10 4927 32
	movs	r3, #0
	b	.L554
.L545:
	.loc 10 4931 16
	movs	r3, #0
.L554:
	.loc 10 4933 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L556:
	.align	2
.L555:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE412:
	.size	nrf52_errata_94, .-nrf52_errata_94
	.section	.text.nrf52_errata_96,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_96, %function
nrf52_errata_96:
.LFB413:
	.loc 10 4947 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4952 29
	ldr	r3, .L568
	.loc 10 4952 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4953 29
	ldr	r3, .L568+4
	.loc 10 4953 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4956 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L558
	.loc 10 4958 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L559
	adr	r2, .L561
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L561:
	.word	.L566+1
	.word	.L565+1
	.word	.L564+1
	.word	.L563+1
	.word	.L562+1
	.word	.L560+1
	.p2align 1
.L566:
	.loc 10 4961 32
	movs	r3, #1
	b	.L567
.L565:
	.loc 10 4963 32
	movs	r3, #0
	b	.L567
.L564:
	.loc 10 4965 32
	movs	r3, #0
	b	.L567
.L563:
	.loc 10 4967 32
	movs	r3, #0
	b	.L567
.L562:
	.loc 10 4969 32
	movs	r3, #0
	b	.L567
.L560:
	.loc 10 4971 32
	movs	r3, #0
	b	.L567
.L559:
	.loc 10 4973 32
	movs	r3, #0
	b	.L567
.L558:
	.loc 10 4977 16
	movs	r3, #0
.L567:
	.loc 10 4979 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L569:
	.align	2
.L568:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE413:
	.size	nrf52_errata_96, .-nrf52_errata_96
	.section	.text.nrf52_errata_97,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_97, %function
nrf52_errata_97:
.LFB414:
	.loc 10 4995 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5015 29
	ldr	r3, .L581
	.loc 10 5015 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5016 29
	ldr	r3, .L581+4
	.loc 10 5016 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5040 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L571
	.loc 10 5042 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L572
	adr	r2, .L574
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L574:
	.word	.L579+1
	.word	.L578+1
	.word	.L577+1
	.word	.L576+1
	.word	.L575+1
	.word	.L573+1
	.p2align 1
.L579:
	.loc 10 5045 32
	movs	r3, #1
	b	.L580
.L578:
	.loc 10 5047 32
	movs	r3, #0
	b	.L580
.L577:
	.loc 10 5049 32
	movs	r3, #0
	b	.L580
.L576:
	.loc 10 5051 32
	movs	r3, #0
	b	.L580
.L575:
	.loc 10 5053 32
	movs	r3, #0
	b	.L580
.L573:
	.loc 10 5055 32
	movs	r3, #0
	b	.L580
.L572:
	.loc 10 5057 32
	movs	r3, #0
	b	.L580
.L571:
	.loc 10 5061 16
	movs	r3, #0
.L580:
	.loc 10 5063 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L582:
	.align	2
.L581:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE414:
	.size	nrf52_errata_97, .-nrf52_errata_97
	.section	.text.nrf52_errata_98,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_98, %function
nrf52_errata_98:
.LFB415:
	.loc 10 5077 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5082 29
	ldr	r3, .L594
	.loc 10 5082 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5083 29
	ldr	r3, .L594+4
	.loc 10 5083 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5086 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L584
	.loc 10 5088 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L585
	adr	r2, .L587
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L587:
	.word	.L592+1
	.word	.L591+1
	.word	.L590+1
	.word	.L589+1
	.word	.L588+1
	.word	.L586+1
	.p2align 1
.L592:
	.loc 10 5091 32
	movs	r3, #1
	b	.L593
.L591:
	.loc 10 5093 32
	movs	r3, #0
	b	.L593
.L590:
	.loc 10 5095 32
	movs	r3, #0
	b	.L593
.L589:
	.loc 10 5097 32
	movs	r3, #0
	b	.L593
.L588:
	.loc 10 5099 32
	movs	r3, #0
	b	.L593
.L586:
	.loc 10 5101 32
	movs	r3, #0
	b	.L593
.L585:
	.loc 10 5103 32
	movs	r3, #0
	b	.L593
.L584:
	.loc 10 5107 16
	movs	r3, #0
.L593:
	.loc 10 5109 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L595:
	.align	2
.L594:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE415:
	.size	nrf52_errata_98, .-nrf52_errata_98
	.section	.text.nrf52_errata_101,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_101, %function
nrf52_errata_101:
.LFB416:
	.loc 10 5124 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 5165 16
	movs	r3, #0
	.loc 10 5167 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE416:
	.size	nrf52_errata_101, .-nrf52_errata_101
	.section	.text.nrf52_errata_102,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_102, %function
nrf52_errata_102:
.LFB417:
	.loc 10 5182 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 5223 16
	movs	r3, #0
	.loc 10 5225 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE417:
	.size	nrf52_errata_102, .-nrf52_errata_102
	.section	.text.nrf52_errata_103,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_103, %function
nrf52_errata_103:
.LFB418:
	.loc 10 5239 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5244 29
	ldr	r3, .L611
	.loc 10 5244 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5245 29
	ldr	r3, .L611+4
	.loc 10 5245 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5248 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L601
	.loc 10 5250 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L602
	adr	r2, .L604
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L604:
	.word	.L609+1
	.word	.L608+1
	.word	.L607+1
	.word	.L606+1
	.word	.L605+1
	.word	.L603+1
	.p2align 1
.L609:
	.loc 10 5253 32
	movs	r3, #1
	b	.L610
.L608:
	.loc 10 5255 32
	movs	r3, #0
	b	.L610
.L607:
	.loc 10 5257 32
	movs	r3, #0
	b	.L610
.L606:
	.loc 10 5259 32
	movs	r3, #0
	b	.L610
.L605:
	.loc 10 5261 32
	movs	r3, #0
	b	.L610
.L603:
	.loc 10 5263 32
	movs	r3, #0
	b	.L610
.L602:
	.loc 10 5265 32
	movs	r3, #0
	b	.L610
.L601:
	.loc 10 5269 16
	movs	r3, #0
.L610:
	.loc 10 5271 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L612:
	.align	2
.L611:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE418:
	.size	nrf52_errata_103, .-nrf52_errata_103
	.section	.text.nrf52_errata_104,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_104, %function
nrf52_errata_104:
.LFB419:
	.loc 10 5285 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5290 29
	ldr	r3, .L624
	.loc 10 5290 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5291 29
	ldr	r3, .L624+4
	.loc 10 5291 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5294 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L614
	.loc 10 5296 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L615
	adr	r2, .L617
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L617:
	.word	.L622+1
	.word	.L621+1
	.word	.L620+1
	.word	.L619+1
	.word	.L618+1
	.word	.L616+1
	.p2align 1
.L622:
	.loc 10 5299 32
	movs	r3, #1
	b	.L623
.L621:
	.loc 10 5301 32
	movs	r3, #0
	b	.L623
.L620:
	.loc 10 5303 32
	movs	r3, #0
	b	.L623
.L619:
	.loc 10 5305 32
	movs	r3, #0
	b	.L623
.L618:
	.loc 10 5307 32
	movs	r3, #0
	b	.L623
.L616:
	.loc 10 5309 32
	movs	r3, #0
	b	.L623
.L615:
	.loc 10 5311 32
	movs	r3, #0
	b	.L623
.L614:
	.loc 10 5315 16
	movs	r3, #0
.L623:
	.loc 10 5317 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L625:
	.align	2
.L624:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE419:
	.size	nrf52_errata_104, .-nrf52_errata_104
	.section	.text.nrf52_errata_106,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_106, %function
nrf52_errata_106:
.LFB420:
	.loc 10 5332 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 5373 16
	movs	r3, #0
	.loc 10 5375 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE420:
	.size	nrf52_errata_106, .-nrf52_errata_106
	.section	.text.nrf52_errata_107,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_107, %function
nrf52_errata_107:
.LFB421:
	.loc 10 5390 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 5431 16
	movs	r3, #0
	.loc 10 5433 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE421:
	.size	nrf52_errata_107, .-nrf52_errata_107
	.section	.text.nrf52_errata_108,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_108, %function
nrf52_errata_108:
.LFB422:
	.loc 10 5448 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 5489 16
	movs	r3, #0
	.loc 10 5491 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE422:
	.size	nrf52_errata_108, .-nrf52_errata_108
	.section	.text.nrf52_errata_109,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_109, %function
nrf52_errata_109:
.LFB423:
	.loc 10 5506 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 5547 16
	movs	r3, #0
	.loc 10 5549 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE423:
	.size	nrf52_errata_109, .-nrf52_errata_109
	.section	.text.nrf52_errata_110,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_110, %function
nrf52_errata_110:
.LFB424:
	.loc 10 5563 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5568 29
	ldr	r3, .L645
	.loc 10 5568 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5569 29
	ldr	r3, .L645+4
	.loc 10 5569 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5572 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L635
	.loc 10 5574 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L636
	adr	r2, .L638
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L638:
	.word	.L643+1
	.word	.L642+1
	.word	.L641+1
	.word	.L640+1
	.word	.L639+1
	.word	.L637+1
	.p2align 1
.L643:
	.loc 10 5577 32
	movs	r3, #1
	b	.L644
.L642:
	.loc 10 5579 32
	movs	r3, #0
	b	.L644
.L641:
	.loc 10 5581 32
	movs	r3, #0
	b	.L644
.L640:
	.loc 10 5583 32
	movs	r3, #0
	b	.L644
.L639:
	.loc 10 5585 32
	movs	r3, #0
	b	.L644
.L637:
	.loc 10 5587 32
	movs	r3, #0
	b	.L644
.L636:
	.loc 10 5589 32
	movs	r3, #0
	b	.L644
.L635:
	.loc 10 5593 16
	movs	r3, #0
.L644:
	.loc 10 5595 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L646:
	.align	2
.L645:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE424:
	.size	nrf52_errata_110, .-nrf52_errata_110
	.section	.text.nrf52_errata_111,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_111, %function
nrf52_errata_111:
.LFB425:
	.loc 10 5609 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5614 29
	ldr	r3, .L658
	.loc 10 5614 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5615 29
	ldr	r3, .L658+4
	.loc 10 5615 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5618 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L648
	.loc 10 5620 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L649
	adr	r2, .L651
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L651:
	.word	.L656+1
	.word	.L655+1
	.word	.L654+1
	.word	.L653+1
	.word	.L652+1
	.word	.L650+1
	.p2align 1
.L656:
	.loc 10 5623 32
	movs	r3, #1
	b	.L657
.L655:
	.loc 10 5625 32
	movs	r3, #0
	b	.L657
.L654:
	.loc 10 5627 32
	movs	r3, #0
	b	.L657
.L653:
	.loc 10 5629 32
	movs	r3, #0
	b	.L657
.L652:
	.loc 10 5631 32
	movs	r3, #0
	b	.L657
.L650:
	.loc 10 5633 32
	movs	r3, #0
	b	.L657
.L649:
	.loc 10 5635 32
	movs	r3, #0
	b	.L657
.L648:
	.loc 10 5639 16
	movs	r3, #0
.L657:
	.loc 10 5641 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L659:
	.align	2
.L658:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE425:
	.size	nrf52_errata_111, .-nrf52_errata_111
	.section	.text.nrf52_errata_112,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_112, %function
nrf52_errata_112:
.LFB426:
	.loc 10 5655 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5660 29
	ldr	r3, .L671
	.loc 10 5660 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5661 29
	ldr	r3, .L671+4
	.loc 10 5661 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5664 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L661
	.loc 10 5666 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L662
	adr	r2, .L664
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L664:
	.word	.L669+1
	.word	.L668+1
	.word	.L667+1
	.word	.L666+1
	.word	.L665+1
	.word	.L663+1
	.p2align 1
.L669:
	.loc 10 5669 32
	movs	r3, #1
	b	.L670
.L668:
	.loc 10 5671 32
	movs	r3, #0
	b	.L670
.L667:
	.loc 10 5673 32
	movs	r3, #0
	b	.L670
.L666:
	.loc 10 5675 32
	movs	r3, #0
	b	.L670
.L665:
	.loc 10 5677 32
	movs	r3, #0
	b	.L670
.L663:
	.loc 10 5679 32
	movs	r3, #0
	b	.L670
.L662:
	.loc 10 5681 32
	movs	r3, #0
	b	.L670
.L661:
	.loc 10 5685 16
	movs	r3, #0
.L670:
	.loc 10 5687 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L672:
	.align	2
.L671:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE426:
	.size	nrf52_errata_112, .-nrf52_errata_112
	.section	.text.nrf52_errata_113,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_113, %function
nrf52_errata_113:
.LFB427:
	.loc 10 5703 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5723 29
	ldr	r3, .L684
	.loc 10 5723 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5724 29
	ldr	r3, .L684+4
	.loc 10 5724 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5748 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L674
	.loc 10 5750 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L675
	adr	r2, .L677
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L677:
	.word	.L682+1
	.word	.L681+1
	.word	.L680+1
	.word	.L679+1
	.word	.L678+1
	.word	.L676+1
	.p2align 1
.L682:
	.loc 10 5753 32
	movs	r3, #1
	b	.L683
.L681:
	.loc 10 5755 32
	movs	r3, #0
	b	.L683
.L680:
	.loc 10 5757 32
	movs	r3, #0
	b	.L683
.L679:
	.loc 10 5759 32
	movs	r3, #0
	b	.L683
.L678:
	.loc 10 5761 32
	movs	r3, #0
	b	.L683
.L676:
	.loc 10 5763 32
	movs	r3, #0
	b	.L683
.L675:
	.loc 10 5765 32
	movs	r3, #0
	b	.L683
.L674:
	.loc 10 5769 16
	movs	r3, #0
.L683:
	.loc 10 5771 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L685:
	.align	2
.L684:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE427:
	.size	nrf52_errata_113, .-nrf52_errata_113
	.section	.text.nrf52_errata_115,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_115, %function
nrf52_errata_115:
.LFB428:
	.loc 10 5785 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5790 29
	ldr	r3, .L697
	.loc 10 5790 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5791 29
	ldr	r3, .L697+4
	.loc 10 5791 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5794 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L687
	.loc 10 5796 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L688
	adr	r2, .L690
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L690:
	.word	.L695+1
	.word	.L694+1
	.word	.L693+1
	.word	.L692+1
	.word	.L691+1
	.word	.L689+1
	.p2align 1
.L695:
	.loc 10 5799 32
	movs	r3, #1
	b	.L696
.L694:
	.loc 10 5801 32
	movs	r3, #0
	b	.L696
.L693:
	.loc 10 5803 32
	movs	r3, #0
	b	.L696
.L692:
	.loc 10 5805 32
	movs	r3, #0
	b	.L696
.L691:
	.loc 10 5807 32
	movs	r3, #0
	b	.L696
.L689:
	.loc 10 5809 32
	movs	r3, #0
	b	.L696
.L688:
	.loc 10 5811 32
	movs	r3, #0
	b	.L696
.L687:
	.loc 10 5815 16
	movs	r3, #0
.L696:
	.loc 10 5817 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L698:
	.align	2
.L697:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE428:
	.size	nrf52_errata_115, .-nrf52_errata_115
	.section	.text.nrf52_errata_116,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_116, %function
nrf52_errata_116:
.LFB429:
	.loc 10 5831 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5836 29
	ldr	r3, .L710
	.loc 10 5836 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5837 29
	ldr	r3, .L710+4
	.loc 10 5837 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5840 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L700
	.loc 10 5842 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L701
	adr	r2, .L703
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L703:
	.word	.L708+1
	.word	.L707+1
	.word	.L706+1
	.word	.L705+1
	.word	.L704+1
	.word	.L702+1
	.p2align 1
.L708:
	.loc 10 5845 32
	movs	r3, #1
	b	.L709
.L707:
	.loc 10 5847 32
	movs	r3, #0
	b	.L709
.L706:
	.loc 10 5849 32
	movs	r3, #0
	b	.L709
.L705:
	.loc 10 5851 32
	movs	r3, #0
	b	.L709
.L704:
	.loc 10 5853 32
	movs	r3, #0
	b	.L709
.L702:
	.loc 10 5855 32
	movs	r3, #0
	b	.L709
.L701:
	.loc 10 5857 32
	movs	r3, #0
	b	.L709
.L700:
	.loc 10 5861 16
	movs	r3, #0
.L709:
	.loc 10 5863 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L711:
	.align	2
.L710:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE429:
	.size	nrf52_errata_116, .-nrf52_errata_116
	.section	.text.nrf52_errata_117,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_117, %function
nrf52_errata_117:
.LFB430:
	.loc 10 5877 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5882 29
	ldr	r3, .L723
	.loc 10 5882 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5883 29
	ldr	r3, .L723+4
	.loc 10 5883 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5886 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L713
	.loc 10 5888 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L714
	adr	r2, .L716
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L716:
	.word	.L721+1
	.word	.L720+1
	.word	.L719+1
	.word	.L718+1
	.word	.L717+1
	.word	.L715+1
	.p2align 1
.L721:
	.loc 10 5891 32
	movs	r3, #1
	b	.L722
.L720:
	.loc 10 5893 32
	movs	r3, #0
	b	.L722
.L719:
	.loc 10 5895 32
	movs	r3, #0
	b	.L722
.L718:
	.loc 10 5897 32
	movs	r3, #0
	b	.L722
.L717:
	.loc 10 5899 32
	movs	r3, #0
	b	.L722
.L715:
	.loc 10 5901 32
	movs	r3, #0
	b	.L722
.L714:
	.loc 10 5903 32
	movs	r3, #0
	b	.L722
.L713:
	.loc 10 5907 16
	movs	r3, #0
.L722:
	.loc 10 5909 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L724:
	.align	2
.L723:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE430:
	.size	nrf52_errata_117, .-nrf52_errata_117
	.section	.text.nrf52_errata_118,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_118, %function
nrf52_errata_118:
.LFB431:
	.loc 10 5923 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5928 29
	ldr	r3, .L736
	.loc 10 5928 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5929 29
	ldr	r3, .L736+4
	.loc 10 5929 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5932 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L726
	.loc 10 5934 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L727
	adr	r2, .L729
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L729:
	.word	.L734+1
	.word	.L733+1
	.word	.L732+1
	.word	.L731+1
	.word	.L730+1
	.word	.L728+1
	.p2align 1
.L734:
	.loc 10 5937 32
	movs	r3, #1
	b	.L735
.L733:
	.loc 10 5939 32
	movs	r3, #0
	b	.L735
.L732:
	.loc 10 5941 32
	movs	r3, #0
	b	.L735
.L731:
	.loc 10 5943 32
	movs	r3, #0
	b	.L735
.L730:
	.loc 10 5945 32
	movs	r3, #0
	b	.L735
.L728:
	.loc 10 5947 32
	movs	r3, #0
	b	.L735
.L727:
	.loc 10 5949 32
	movs	r3, #0
	b	.L735
.L726:
	.loc 10 5953 16
	movs	r3, #0
.L735:
	.loc 10 5955 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L737:
	.align	2
.L736:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE431:
	.size	nrf52_errata_118, .-nrf52_errata_118
	.section	.text.nrf52_errata_119,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_119, %function
nrf52_errata_119:
.LFB432:
	.loc 10 5969 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5974 29
	ldr	r3, .L749
	.loc 10 5974 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5975 29
	ldr	r3, .L749+4
	.loc 10 5975 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5978 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L739
	.loc 10 5980 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L740
	adr	r2, .L742
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L742:
	.word	.L747+1
	.word	.L746+1
	.word	.L745+1
	.word	.L744+1
	.word	.L743+1
	.word	.L741+1
	.p2align 1
.L747:
	.loc 10 5983 32
	movs	r3, #1
	b	.L748
.L746:
	.loc 10 5985 32
	movs	r3, #0
	b	.L748
.L745:
	.loc 10 5987 32
	movs	r3, #0
	b	.L748
.L744:
	.loc 10 5989 32
	movs	r3, #0
	b	.L748
.L743:
	.loc 10 5991 32
	movs	r3, #0
	b	.L748
.L741:
	.loc 10 5993 32
	movs	r3, #0
	b	.L748
.L740:
	.loc 10 5995 32
	movs	r3, #0
	b	.L748
.L739:
	.loc 10 5999 16
	movs	r3, #0
.L748:
	.loc 10 6001 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L750:
	.align	2
.L749:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE432:
	.size	nrf52_errata_119, .-nrf52_errata_119
	.section	.text.nrf52_errata_120,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_120, %function
nrf52_errata_120:
.LFB433:
	.loc 10 6015 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6020 29
	ldr	r3, .L762
	.loc 10 6020 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6021 29
	ldr	r3, .L762+4
	.loc 10 6021 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6024 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L752
	.loc 10 6026 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L753
	adr	r2, .L755
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L755:
	.word	.L760+1
	.word	.L759+1
	.word	.L758+1
	.word	.L757+1
	.word	.L756+1
	.word	.L754+1
	.p2align 1
.L760:
	.loc 10 6029 32
	movs	r3, #1
	b	.L761
.L759:
	.loc 10 6031 32
	movs	r3, #0
	b	.L761
.L758:
	.loc 10 6033 32
	movs	r3, #0
	b	.L761
.L757:
	.loc 10 6035 32
	movs	r3, #0
	b	.L761
.L756:
	.loc 10 6037 32
	movs	r3, #0
	b	.L761
.L754:
	.loc 10 6039 32
	movs	r3, #0
	b	.L761
.L753:
	.loc 10 6041 32
	movs	r3, #0
	b	.L761
.L752:
	.loc 10 6045 16
	movs	r3, #0
.L761:
	.loc 10 6047 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L763:
	.align	2
.L762:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE433:
	.size	nrf52_errata_120, .-nrf52_errata_120
	.section	.text.nrf52_errata_121,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_121, %function
nrf52_errata_121:
.LFB434:
	.loc 10 6061 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6066 29
	ldr	r3, .L775
	.loc 10 6066 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6067 29
	ldr	r3, .L775+4
	.loc 10 6067 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6070 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L765
	.loc 10 6072 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L766
	adr	r2, .L768
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L768:
	.word	.L773+1
	.word	.L772+1
	.word	.L771+1
	.word	.L770+1
	.word	.L769+1
	.word	.L767+1
	.p2align 1
.L773:
	.loc 10 6075 32
	movs	r3, #1
	b	.L774
.L772:
	.loc 10 6077 32
	movs	r3, #0
	b	.L774
.L771:
	.loc 10 6079 32
	movs	r3, #0
	b	.L774
.L770:
	.loc 10 6081 32
	movs	r3, #0
	b	.L774
.L769:
	.loc 10 6083 32
	movs	r3, #0
	b	.L774
.L767:
	.loc 10 6085 32
	movs	r3, #0
	b	.L774
.L766:
	.loc 10 6087 32
	movs	r3, #0
	b	.L774
.L765:
	.loc 10 6091 16
	movs	r3, #0
.L774:
	.loc 10 6093 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L776:
	.align	2
.L775:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE434:
	.size	nrf52_errata_121, .-nrf52_errata_121
	.section	.text.nrf52_errata_122,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_122, %function
nrf52_errata_122:
.LFB435:
	.loc 10 6107 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6112 29
	ldr	r3, .L788
	.loc 10 6112 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6113 29
	ldr	r3, .L788+4
	.loc 10 6113 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6116 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L778
	.loc 10 6118 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L779
	adr	r2, .L781
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L781:
	.word	.L786+1
	.word	.L785+1
	.word	.L784+1
	.word	.L783+1
	.word	.L782+1
	.word	.L780+1
	.p2align 1
.L786:
	.loc 10 6121 32
	movs	r3, #1
	b	.L787
.L785:
	.loc 10 6123 32
	movs	r3, #1
	b	.L787
.L784:
	.loc 10 6125 32
	movs	r3, #1
	b	.L787
.L783:
	.loc 10 6127 32
	movs	r3, #1
	b	.L787
.L782:
	.loc 10 6129 32
	movs	r3, #1
	b	.L787
.L780:
	.loc 10 6131 32
	movs	r3, #1
	b	.L787
.L779:
	.loc 10 6133 32
	movs	r3, #1
	b	.L787
.L778:
	.loc 10 6137 16
	movs	r3, #0
.L787:
	.loc 10 6139 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L789:
	.align	2
.L788:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE435:
	.size	nrf52_errata_122, .-nrf52_errata_122
	.section	.text.nrf52_errata_127,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_127, %function
nrf52_errata_127:
.LFB436:
	.loc 10 6153 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6158 29
	ldr	r3, .L801
	.loc 10 6158 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6159 29
	ldr	r3, .L801+4
	.loc 10 6159 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6162 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L791
	.loc 10 6164 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L792
	adr	r2, .L794
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L794:
	.word	.L799+1
	.word	.L798+1
	.word	.L797+1
	.word	.L796+1
	.word	.L795+1
	.word	.L793+1
	.p2align 1
.L799:
	.loc 10 6167 32
	movs	r3, #1
	b	.L800
.L798:
	.loc 10 6169 32
	movs	r3, #0
	b	.L800
.L797:
	.loc 10 6171 32
	movs	r3, #0
	b	.L800
.L796:
	.loc 10 6173 32
	movs	r3, #0
	b	.L800
.L795:
	.loc 10 6175 32
	movs	r3, #0
	b	.L800
.L793:
	.loc 10 6177 32
	movs	r3, #0
	b	.L800
.L792:
	.loc 10 6179 32
	movs	r3, #0
	b	.L800
.L791:
	.loc 10 6183 16
	movs	r3, #0
.L800:
	.loc 10 6185 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L802:
	.align	2
.L801:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE436:
	.size	nrf52_errata_127, .-nrf52_errata_127
	.section	.text.nrf52_errata_128,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_128, %function
nrf52_errata_128:
.LFB437:
	.loc 10 6199 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6204 29
	ldr	r3, .L814
	.loc 10 6204 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6205 29
	ldr	r3, .L814+4
	.loc 10 6205 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6208 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L804
	.loc 10 6210 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L805
	adr	r2, .L807
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L807:
	.word	.L812+1
	.word	.L811+1
	.word	.L810+1
	.word	.L809+1
	.word	.L808+1
	.word	.L806+1
	.p2align 1
.L812:
	.loc 10 6213 32
	movs	r3, #1
	b	.L813
.L811:
	.loc 10 6215 32
	movs	r3, #0
	b	.L813
.L810:
	.loc 10 6217 32
	movs	r3, #0
	b	.L813
.L809:
	.loc 10 6219 32
	movs	r3, #0
	b	.L813
.L808:
	.loc 10 6221 32
	movs	r3, #0
	b	.L813
.L806:
	.loc 10 6223 32
	movs	r3, #0
	b	.L813
.L805:
	.loc 10 6225 32
	movs	r3, #0
	b	.L813
.L804:
	.loc 10 6229 16
	movs	r3, #0
.L813:
	.loc 10 6231 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L815:
	.align	2
.L814:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE437:
	.size	nrf52_errata_128, .-nrf52_errata_128
	.section	.text.nrf52_errata_131,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_131, %function
nrf52_errata_131:
.LFB438:
	.loc 10 6245 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6250 29
	ldr	r3, .L827
	.loc 10 6250 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6251 29
	ldr	r3, .L827+4
	.loc 10 6251 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6254 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L817
	.loc 10 6256 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L818
	adr	r2, .L820
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L820:
	.word	.L825+1
	.word	.L824+1
	.word	.L823+1
	.word	.L822+1
	.word	.L821+1
	.word	.L819+1
	.p2align 1
.L825:
	.loc 10 6259 32
	movs	r3, #1
	b	.L826
.L824:
	.loc 10 6261 32
	movs	r3, #0
	b	.L826
.L823:
	.loc 10 6263 32
	movs	r3, #0
	b	.L826
.L822:
	.loc 10 6265 32
	movs	r3, #0
	b	.L826
.L821:
	.loc 10 6267 32
	movs	r3, #0
	b	.L826
.L819:
	.loc 10 6269 32
	movs	r3, #0
	b	.L826
.L818:
	.loc 10 6271 32
	movs	r3, #0
	b	.L826
.L817:
	.loc 10 6275 16
	movs	r3, #0
.L826:
	.loc 10 6277 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L828:
	.align	2
.L827:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE438:
	.size	nrf52_errata_131, .-nrf52_errata_131
	.section	.text.nrf52_errata_132,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_132, %function
nrf52_errata_132:
.LFB439:
	.loc 10 6292 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 6333 16
	movs	r3, #0
	.loc 10 6335 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE439:
	.size	nrf52_errata_132, .-nrf52_errata_132
	.section	.text.nrf52_errata_133,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_133, %function
nrf52_errata_133:
.LFB440:
	.loc 10 6349 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6354 29
	ldr	r3, .L842
	.loc 10 6354 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6355 29
	ldr	r3, .L842+4
	.loc 10 6355 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6358 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L832
	.loc 10 6360 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L833
	adr	r2, .L835
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L835:
	.word	.L840+1
	.word	.L839+1
	.word	.L838+1
	.word	.L837+1
	.word	.L836+1
	.word	.L834+1
	.p2align 1
.L840:
	.loc 10 6363 32
	movs	r3, #1
	b	.L841
.L839:
	.loc 10 6365 32
	movs	r3, #0
	b	.L841
.L838:
	.loc 10 6367 32
	movs	r3, #0
	b	.L841
.L837:
	.loc 10 6369 32
	movs	r3, #0
	b	.L841
.L836:
	.loc 10 6371 32
	movs	r3, #0
	b	.L841
.L834:
	.loc 10 6373 32
	movs	r3, #0
	b	.L841
.L833:
	.loc 10 6375 32
	movs	r3, #0
	b	.L841
.L832:
	.loc 10 6379 16
	movs	r3, #0
.L841:
	.loc 10 6381 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L843:
	.align	2
.L842:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE440:
	.size	nrf52_errata_133, .-nrf52_errata_133
	.section	.text.nrf52_errata_134,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_134, %function
nrf52_errata_134:
.LFB441:
	.loc 10 6395 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6400 29
	ldr	r3, .L855
	.loc 10 6400 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6401 29
	ldr	r3, .L855+4
	.loc 10 6401 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6404 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L845
	.loc 10 6406 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L846
	adr	r2, .L848
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L848:
	.word	.L853+1
	.word	.L852+1
	.word	.L851+1
	.word	.L850+1
	.word	.L849+1
	.word	.L847+1
	.p2align 1
.L853:
	.loc 10 6409 32
	movs	r3, #1
	b	.L854
.L852:
	.loc 10 6411 32
	movs	r3, #0
	b	.L854
.L851:
	.loc 10 6413 32
	movs	r3, #0
	b	.L854
.L850:
	.loc 10 6415 32
	movs	r3, #0
	b	.L854
.L849:
	.loc 10 6417 32
	movs	r3, #0
	b	.L854
.L847:
	.loc 10 6419 32
	movs	r3, #0
	b	.L854
.L846:
	.loc 10 6421 32
	movs	r3, #0
	b	.L854
.L845:
	.loc 10 6425 16
	movs	r3, #0
.L854:
	.loc 10 6427 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L856:
	.align	2
.L855:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE441:
	.size	nrf52_errata_134, .-nrf52_errata_134
	.section	.text.nrf52_errata_135,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_135, %function
nrf52_errata_135:
.LFB442:
	.loc 10 6441 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6446 29
	ldr	r3, .L868
	.loc 10 6446 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6447 29
	ldr	r3, .L868+4
	.loc 10 6447 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6450 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L858
	.loc 10 6452 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L859
	adr	r2, .L861
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L861:
	.word	.L866+1
	.word	.L865+1
	.word	.L864+1
	.word	.L863+1
	.word	.L862+1
	.word	.L860+1
	.p2align 1
.L866:
	.loc 10 6455 32
	movs	r3, #1
	b	.L867
.L865:
	.loc 10 6457 32
	movs	r3, #0
	b	.L867
.L864:
	.loc 10 6459 32
	movs	r3, #0
	b	.L867
.L863:
	.loc 10 6461 32
	movs	r3, #0
	b	.L867
.L862:
	.loc 10 6463 32
	movs	r3, #0
	b	.L867
.L860:
	.loc 10 6465 32
	movs	r3, #0
	b	.L867
.L859:
	.loc 10 6467 32
	movs	r3, #0
	b	.L867
.L858:
	.loc 10 6471 16
	movs	r3, #0
.L867:
	.loc 10 6473 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L869:
	.align	2
.L868:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE442:
	.size	nrf52_errata_135, .-nrf52_errata_135
	.section	.text.nrf52_errata_136,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_136, %function
nrf52_errata_136:
.LFB443:
	.loc 10 6494 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6519 29
	ldr	r3, .L881
	.loc 10 6519 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6520 29
	ldr	r3, .L881+4
	.loc 10 6520 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6544 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L871
	.loc 10 6546 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L872
	adr	r2, .L874
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L874:
	.word	.L879+1
	.word	.L878+1
	.word	.L877+1
	.word	.L876+1
	.word	.L875+1
	.word	.L873+1
	.p2align 1
.L879:
	.loc 10 6549 32
	movs	r3, #1
	b	.L880
.L878:
	.loc 10 6551 32
	movs	r3, #1
	b	.L880
.L877:
	.loc 10 6553 32
	movs	r3, #1
	b	.L880
.L876:
	.loc 10 6555 32
	movs	r3, #1
	b	.L880
.L875:
	.loc 10 6557 32
	movs	r3, #1
	b	.L880
.L873:
	.loc 10 6559 32
	movs	r3, #1
	b	.L880
.L872:
	.loc 10 6561 32
	movs	r3, #1
	b	.L880
.L871:
	.loc 10 6637 16
	movs	r3, #0
.L880:
	.loc 10 6639 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L882:
	.align	2
.L881:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE443:
	.size	nrf52_errata_136, .-nrf52_errata_136
	.section	.text.nrf52_errata_138,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_138, %function
nrf52_errata_138:
.LFB444:
	.loc 10 6654 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 6695 16
	movs	r3, #0
	.loc 10 6697 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE444:
	.size	nrf52_errata_138, .-nrf52_errata_138
	.section	.text.nrf52_errata_140,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_140, %function
nrf52_errata_140:
.LFB445:
	.loc 10 6711 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6716 29
	ldr	r3, .L896
	.loc 10 6716 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6717 29
	ldr	r3, .L896+4
	.loc 10 6717 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6720 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L886
	.loc 10 6722 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L887
	adr	r2, .L889
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L889:
	.word	.L894+1
	.word	.L893+1
	.word	.L892+1
	.word	.L891+1
	.word	.L890+1
	.word	.L888+1
	.p2align 1
.L894:
	.loc 10 6725 32
	movs	r3, #1
	b	.L895
.L893:
	.loc 10 6727 32
	movs	r3, #0
	b	.L895
.L892:
	.loc 10 6729 32
	movs	r3, #0
	b	.L895
.L891:
	.loc 10 6731 32
	movs	r3, #0
	b	.L895
.L890:
	.loc 10 6733 32
	movs	r3, #0
	b	.L895
.L888:
	.loc 10 6735 32
	movs	r3, #0
	b	.L895
.L887:
	.loc 10 6737 32
	movs	r3, #0
	b	.L895
.L886:
	.loc 10 6741 16
	movs	r3, #0
.L895:
	.loc 10 6743 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L897:
	.align	2
.L896:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE445:
	.size	nrf52_errata_140, .-nrf52_errata_140
	.section	.text.nrf52_errata_141,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_141, %function
nrf52_errata_141:
.LFB446:
	.loc 10 6758 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 6799 16
	movs	r3, #0
	.loc 10 6801 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE446:
	.size	nrf52_errata_141, .-nrf52_errata_141
	.section	.text.nrf52_errata_142,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_142, %function
nrf52_errata_142:
.LFB447:
	.loc 10 6815 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6820 29
	ldr	r3, .L911
	.loc 10 6820 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6821 29
	ldr	r3, .L911+4
	.loc 10 6821 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6824 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L901
	.loc 10 6826 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L902
	adr	r2, .L904
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L904:
	.word	.L909+1
	.word	.L908+1
	.word	.L907+1
	.word	.L906+1
	.word	.L905+1
	.word	.L903+1
	.p2align 1
.L909:
	.loc 10 6829 32
	movs	r3, #1
	b	.L910
.L908:
	.loc 10 6831 32
	movs	r3, #0
	b	.L910
.L907:
	.loc 10 6833 32
	movs	r3, #0
	b	.L910
.L906:
	.loc 10 6835 32
	movs	r3, #0
	b	.L910
.L905:
	.loc 10 6837 32
	movs	r3, #0
	b	.L910
.L903:
	.loc 10 6839 32
	movs	r3, #0
	b	.L910
.L902:
	.loc 10 6841 32
	movs	r3, #0
	b	.L910
.L901:
	.loc 10 6845 16
	movs	r3, #0
.L910:
	.loc 10 6847 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L912:
	.align	2
.L911:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE447:
	.size	nrf52_errata_142, .-nrf52_errata_142
	.section	.text.nrf52_errata_143,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_143, %function
nrf52_errata_143:
.LFB448:
	.loc 10 6863 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6883 29
	ldr	r3, .L924
	.loc 10 6883 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6884 29
	ldr	r3, .L924+4
	.loc 10 6884 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6908 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L914
	.loc 10 6910 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L915
	adr	r2, .L917
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L917:
	.word	.L922+1
	.word	.L921+1
	.word	.L920+1
	.word	.L919+1
	.word	.L918+1
	.word	.L916+1
	.p2align 1
.L922:
	.loc 10 6913 32
	movs	r3, #1
	b	.L923
.L921:
	.loc 10 6915 32
	movs	r3, #0
	b	.L923
.L920:
	.loc 10 6917 32
	movs	r3, #0
	b	.L923
.L919:
	.loc 10 6919 32
	movs	r3, #0
	b	.L923
.L918:
	.loc 10 6921 32
	movs	r3, #0
	b	.L923
.L916:
	.loc 10 6923 32
	movs	r3, #0
	b	.L923
.L915:
	.loc 10 6925 32
	movs	r3, #0
	b	.L923
.L914:
	.loc 10 6929 16
	movs	r3, #0
.L923:
	.loc 10 6931 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L925:
	.align	2
.L924:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE448:
	.size	nrf52_errata_143, .-nrf52_errata_143
	.section	.text.nrf52_errata_144,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_144, %function
nrf52_errata_144:
.LFB449:
	.loc 10 6945 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6950 29
	ldr	r3, .L937
	.loc 10 6950 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6951 29
	ldr	r3, .L937+4
	.loc 10 6951 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6954 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L927
	.loc 10 6956 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L928
	adr	r2, .L930
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L930:
	.word	.L935+1
	.word	.L934+1
	.word	.L933+1
	.word	.L932+1
	.word	.L931+1
	.word	.L929+1
	.p2align 1
.L935:
	.loc 10 6959 32
	movs	r3, #1
	b	.L936
.L934:
	.loc 10 6961 32
	movs	r3, #0
	b	.L936
.L933:
	.loc 10 6963 32
	movs	r3, #0
	b	.L936
.L932:
	.loc 10 6965 32
	movs	r3, #0
	b	.L936
.L931:
	.loc 10 6967 32
	movs	r3, #0
	b	.L936
.L929:
	.loc 10 6969 32
	movs	r3, #0
	b	.L936
.L928:
	.loc 10 6971 32
	movs	r3, #0
	b	.L936
.L927:
	.loc 10 6975 16
	movs	r3, #0
.L936:
	.loc 10 6977 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L938:
	.align	2
.L937:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE449:
	.size	nrf52_errata_144, .-nrf52_errata_144
	.section	.text.nrf52_errata_145,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_145, %function
nrf52_errata_145:
.LFB450:
	.loc 10 6991 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6996 29
	ldr	r3, .L950
	.loc 10 6996 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6997 29
	ldr	r3, .L950+4
	.loc 10 6997 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7000 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L940
	.loc 10 7002 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L941
	adr	r2, .L943
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L943:
	.word	.L948+1
	.word	.L947+1
	.word	.L946+1
	.word	.L945+1
	.word	.L944+1
	.word	.L942+1
	.p2align 1
.L948:
	.loc 10 7005 32
	movs	r3, #1
	b	.L949
.L947:
	.loc 10 7007 32
	movs	r3, #0
	b	.L949
.L946:
	.loc 10 7009 32
	movs	r3, #0
	b	.L949
.L945:
	.loc 10 7011 32
	movs	r3, #0
	b	.L949
.L944:
	.loc 10 7013 32
	movs	r3, #0
	b	.L949
.L942:
	.loc 10 7015 32
	movs	r3, #0
	b	.L949
.L941:
	.loc 10 7017 32
	movs	r3, #0
	b	.L949
.L940:
	.loc 10 7021 16
	movs	r3, #0
.L949:
	.loc 10 7023 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L951:
	.align	2
.L950:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE450:
	.size	nrf52_errata_145, .-nrf52_errata_145
	.section	.text.nrf52_errata_146,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_146, %function
nrf52_errata_146:
.LFB451:
	.loc 10 7038 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 7079 16
	movs	r3, #0
	.loc 10 7081 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE451:
	.size	nrf52_errata_146, .-nrf52_errata_146
	.section	.text.nrf52_errata_147,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_147, %function
nrf52_errata_147:
.LFB452:
	.loc 10 7095 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7100 29
	ldr	r3, .L965
	.loc 10 7100 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7101 29
	ldr	r3, .L965+4
	.loc 10 7101 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7104 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L955
	.loc 10 7106 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L956
	adr	r2, .L958
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L958:
	.word	.L963+1
	.word	.L962+1
	.word	.L961+1
	.word	.L960+1
	.word	.L959+1
	.word	.L957+1
	.p2align 1
.L963:
	.loc 10 7109 32
	movs	r3, #1
	b	.L964
.L962:
	.loc 10 7111 32
	movs	r3, #0
	b	.L964
.L961:
	.loc 10 7113 32
	movs	r3, #0
	b	.L964
.L960:
	.loc 10 7115 32
	movs	r3, #0
	b	.L964
.L959:
	.loc 10 7117 32
	movs	r3, #0
	b	.L964
.L957:
	.loc 10 7119 32
	movs	r3, #0
	b	.L964
.L956:
	.loc 10 7121 32
	movs	r3, #0
	b	.L964
.L955:
	.loc 10 7125 16
	movs	r3, #0
.L964:
	.loc 10 7127 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L966:
	.align	2
.L965:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE452:
	.size	nrf52_errata_147, .-nrf52_errata_147
	.section	.text.nrf52_errata_149,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_149, %function
nrf52_errata_149:
.LFB453:
	.loc 10 7142 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 7183 16
	movs	r3, #0
	.loc 10 7185 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE453:
	.size	nrf52_errata_149, .-nrf52_errata_149
	.section	.text.nrf52_errata_150,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_150, %function
nrf52_errata_150:
.LFB454:
	.loc 10 7202 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7223 29
	ldr	r3, .L980
	.loc 10 7223 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7224 29
	ldr	r3, .L980+4
	.loc 10 7224 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7248 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L970
	.loc 10 7250 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L971
	adr	r2, .L973
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L973:
	.word	.L978+1
	.word	.L977+1
	.word	.L976+1
	.word	.L975+1
	.word	.L974+1
	.word	.L972+1
	.p2align 1
.L978:
	.loc 10 7253 32
	movs	r3, #1
	b	.L979
.L977:
	.loc 10 7255 32
	movs	r3, #0
	b	.L979
.L976:
	.loc 10 7257 32
	movs	r3, #0
	b	.L979
.L975:
	.loc 10 7259 32
	movs	r3, #0
	b	.L979
.L974:
	.loc 10 7261 32
	movs	r3, #0
	b	.L979
.L972:
	.loc 10 7263 32
	movs	r3, #0
	b	.L979
.L971:
	.loc 10 7265 32
	movs	r3, #0
	b	.L979
.L970:
	.loc 10 7283 16
	movs	r3, #0
.L979:
	.loc 10 7285 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L981:
	.align	2
.L980:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE454:
	.size	nrf52_errata_150, .-nrf52_errata_150
	.section	.text.nrf52_errata_151,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_151, %function
nrf52_errata_151:
.LFB455:
	.loc 10 7299 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7304 29
	ldr	r3, .L993
	.loc 10 7304 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7305 29
	ldr	r3, .L993+4
	.loc 10 7305 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7308 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L983
	.loc 10 7310 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L984
	adr	r2, .L986
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L986:
	.word	.L991+1
	.word	.L990+1
	.word	.L989+1
	.word	.L988+1
	.word	.L987+1
	.word	.L985+1
	.p2align 1
.L991:
	.loc 10 7313 32
	movs	r3, #1
	b	.L992
.L990:
	.loc 10 7315 32
	movs	r3, #0
	b	.L992
.L989:
	.loc 10 7317 32
	movs	r3, #0
	b	.L992
.L988:
	.loc 10 7319 32
	movs	r3, #0
	b	.L992
.L987:
	.loc 10 7321 32
	movs	r3, #0
	b	.L992
.L985:
	.loc 10 7323 32
	movs	r3, #0
	b	.L992
.L984:
	.loc 10 7325 32
	movs	r3, #0
	b	.L992
.L983:
	.loc 10 7329 16
	movs	r3, #0
.L992:
	.loc 10 7331 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L994:
	.align	2
.L993:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE455:
	.size	nrf52_errata_151, .-nrf52_errata_151
	.section	.text.nrf52_errata_153,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_153, %function
nrf52_errata_153:
.LFB456:
	.loc 10 7347 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7354 29
	ldr	r3, .L1006
	.loc 10 7354 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7355 29
	ldr	r3, .L1006+4
	.loc 10 7355 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7358 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L996
	.loc 10 7360 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L997
	adr	r2, .L999
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L999:
	.word	.L1004+1
	.word	.L1003+1
	.word	.L1002+1
	.word	.L1001+1
	.word	.L1000+1
	.word	.L998+1
	.p2align 1
.L1004:
	.loc 10 7363 32
	movs	r3, #1
	b	.L1005
.L1003:
	.loc 10 7365 32
	movs	r3, #1
	b	.L1005
.L1002:
	.loc 10 7367 32
	movs	r3, #1
	b	.L1005
.L1001:
	.loc 10 7369 32
	movs	r3, #1
	b	.L1005
.L1000:
	.loc 10 7371 32
	movs	r3, #1
	b	.L1005
.L998:
	.loc 10 7373 32
	movs	r3, #1
	b	.L1005
.L997:
	.loc 10 7375 32
	movs	r3, #1
	b	.L1005
.L996:
	.loc 10 7405 16
	movs	r3, #0
.L1005:
	.loc 10 7407 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1007:
	.align	2
.L1006:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE456:
	.size	nrf52_errata_153, .-nrf52_errata_153
	.section	.text.nrf52_errata_154,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_154, %function
nrf52_errata_154:
.LFB457:
	.loc 10 7421 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7426 29
	ldr	r3, .L1019
	.loc 10 7426 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7427 29
	ldr	r3, .L1019+4
	.loc 10 7427 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7430 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1009
	.loc 10 7432 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1010
	adr	r2, .L1012
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1012:
	.word	.L1017+1
	.word	.L1016+1
	.word	.L1015+1
	.word	.L1014+1
	.word	.L1013+1
	.word	.L1011+1
	.p2align 1
.L1017:
	.loc 10 7435 32
	movs	r3, #1
	b	.L1018
.L1016:
	.loc 10 7437 32
	movs	r3, #0
	b	.L1018
.L1015:
	.loc 10 7439 32
	movs	r3, #0
	b	.L1018
.L1014:
	.loc 10 7441 32
	movs	r3, #0
	b	.L1018
.L1013:
	.loc 10 7443 32
	movs	r3, #0
	b	.L1018
.L1011:
	.loc 10 7445 32
	movs	r3, #0
	b	.L1018
.L1010:
	.loc 10 7447 32
	movs	r3, #0
	b	.L1018
.L1009:
	.loc 10 7451 16
	movs	r3, #0
.L1018:
	.loc 10 7453 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1020:
	.align	2
.L1019:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE457:
	.size	nrf52_errata_154, .-nrf52_errata_154
	.section	.text.nrf52_errata_155,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_155, %function
nrf52_errata_155:
.LFB458:
	.loc 10 7472 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7495 29
	ldr	r3, .L1032
	.loc 10 7495 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7496 29
	ldr	r3, .L1032+4
	.loc 10 7496 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7520 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1022
	.loc 10 7522 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1023
	adr	r2, .L1025
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1025:
	.word	.L1030+1
	.word	.L1029+1
	.word	.L1028+1
	.word	.L1027+1
	.word	.L1026+1
	.word	.L1024+1
	.p2align 1
.L1030:
	.loc 10 7525 32
	movs	r3, #1
	b	.L1031
.L1029:
	.loc 10 7527 32
	movs	r3, #1
	b	.L1031
.L1028:
	.loc 10 7529 32
	movs	r3, #1
	b	.L1031
.L1027:
	.loc 10 7531 32
	movs	r3, #1
	b	.L1031
.L1026:
	.loc 10 7533 32
	movs	r3, #1
	b	.L1031
.L1024:
	.loc 10 7535 32
	movs	r3, #1
	b	.L1031
.L1023:
	.loc 10 7537 32
	movs	r3, #1
	b	.L1031
.L1022:
	.loc 10 7579 16
	movs	r3, #0
.L1031:
	.loc 10 7581 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1033:
	.align	2
.L1032:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE458:
	.size	nrf52_errata_155, .-nrf52_errata_155
	.section	.text.nrf52_errata_156,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_156, %function
nrf52_errata_156:
.LFB459:
	.loc 10 7600 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7623 29
	ldr	r3, .L1045
	.loc 10 7623 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7624 29
	ldr	r3, .L1045+4
	.loc 10 7624 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7648 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1035
	.loc 10 7650 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1036
	adr	r2, .L1038
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1038:
	.word	.L1043+1
	.word	.L1042+1
	.word	.L1041+1
	.word	.L1040+1
	.word	.L1039+1
	.word	.L1037+1
	.p2align 1
.L1043:
	.loc 10 7653 32
	movs	r3, #1
	b	.L1044
.L1042:
	.loc 10 7655 32
	movs	r3, #0
	b	.L1044
.L1041:
	.loc 10 7657 32
	movs	r3, #0
	b	.L1044
.L1040:
	.loc 10 7659 32
	movs	r3, #0
	b	.L1044
.L1039:
	.loc 10 7661 32
	movs	r3, #0
	b	.L1044
.L1037:
	.loc 10 7663 32
	movs	r3, #0
	b	.L1044
.L1036:
	.loc 10 7665 32
	movs	r3, #0
	b	.L1044
.L1035:
	.loc 10 7707 16
	movs	r3, #0
.L1044:
	.loc 10 7709 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1046:
	.align	2
.L1045:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE459:
	.size	nrf52_errata_156, .-nrf52_errata_156
	.section	.text.nrf52_errata_158,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_158, %function
nrf52_errata_158:
.LFB460:
	.loc 10 7723 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7728 29
	ldr	r3, .L1058
	.loc 10 7728 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7729 29
	ldr	r3, .L1058+4
	.loc 10 7729 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7732 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1048
	.loc 10 7734 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1049
	adr	r2, .L1051
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1051:
	.word	.L1056+1
	.word	.L1055+1
	.word	.L1054+1
	.word	.L1053+1
	.word	.L1052+1
	.word	.L1050+1
	.p2align 1
.L1056:
	.loc 10 7737 32
	movs	r3, #1
	b	.L1057
.L1055:
	.loc 10 7739 32
	movs	r3, #0
	b	.L1057
.L1054:
	.loc 10 7741 32
	movs	r3, #0
	b	.L1057
.L1053:
	.loc 10 7743 32
	movs	r3, #0
	b	.L1057
.L1052:
	.loc 10 7745 32
	movs	r3, #0
	b	.L1057
.L1050:
	.loc 10 7747 32
	movs	r3, #0
	b	.L1057
.L1049:
	.loc 10 7749 32
	movs	r3, #0
	b	.L1057
.L1048:
	.loc 10 7753 16
	movs	r3, #0
.L1057:
	.loc 10 7755 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1059:
	.align	2
.L1058:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE460:
	.size	nrf52_errata_158, .-nrf52_errata_158
	.section	.text.nrf52_errata_160,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_160, %function
nrf52_errata_160:
.LFB461:
	.loc 10 7769 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7774 29
	ldr	r3, .L1071
	.loc 10 7774 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7775 29
	ldr	r3, .L1071+4
	.loc 10 7775 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7778 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1061
	.loc 10 7780 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1062
	adr	r2, .L1064
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1064:
	.word	.L1069+1
	.word	.L1068+1
	.word	.L1067+1
	.word	.L1066+1
	.word	.L1065+1
	.word	.L1063+1
	.p2align 1
.L1069:
	.loc 10 7783 32
	movs	r3, #1
	b	.L1070
.L1068:
	.loc 10 7785 32
	movs	r3, #0
	b	.L1070
.L1067:
	.loc 10 7787 32
	movs	r3, #0
	b	.L1070
.L1066:
	.loc 10 7789 32
	movs	r3, #0
	b	.L1070
.L1065:
	.loc 10 7791 32
	movs	r3, #0
	b	.L1070
.L1063:
	.loc 10 7793 32
	movs	r3, #0
	b	.L1070
.L1062:
	.loc 10 7795 32
	movs	r3, #0
	b	.L1070
.L1061:
	.loc 10 7799 16
	movs	r3, #0
.L1070:
	.loc 10 7801 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1072:
	.align	2
.L1071:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE461:
	.size	nrf52_errata_160, .-nrf52_errata_160
	.section	.text.nrf52_errata_162,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_162, %function
nrf52_errata_162:
.LFB462:
	.loc 10 7815 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7820 29
	ldr	r3, .L1084
	.loc 10 7820 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7821 29
	ldr	r3, .L1084+4
	.loc 10 7821 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7824 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1074
	.loc 10 7826 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1075
	adr	r2, .L1077
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1077:
	.word	.L1082+1
	.word	.L1081+1
	.word	.L1080+1
	.word	.L1079+1
	.word	.L1078+1
	.word	.L1076+1
	.p2align 1
.L1082:
	.loc 10 7829 32
	movs	r3, #1
	b	.L1083
.L1081:
	.loc 10 7831 32
	movs	r3, #0
	b	.L1083
.L1080:
	.loc 10 7833 32
	movs	r3, #0
	b	.L1083
.L1079:
	.loc 10 7835 32
	movs	r3, #0
	b	.L1083
.L1078:
	.loc 10 7837 32
	movs	r3, #0
	b	.L1083
.L1076:
	.loc 10 7839 32
	movs	r3, #0
	b	.L1083
.L1075:
	.loc 10 7841 32
	movs	r3, #0
	b	.L1083
.L1074:
	.loc 10 7845 16
	movs	r3, #0
.L1083:
	.loc 10 7847 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1085:
	.align	2
.L1084:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE462:
	.size	nrf52_errata_162, .-nrf52_errata_162
	.section	.text.nrf52_errata_163,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_163, %function
nrf52_errata_163:
.LFB463:
	.loc 10 7862 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 7903 16
	movs	r3, #0
	.loc 10 7905 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE463:
	.size	nrf52_errata_163, .-nrf52_errata_163
	.section	.text.nrf52_errata_164,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_164, %function
nrf52_errata_164:
.LFB464:
	.loc 10 7919 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7924 29
	ldr	r3, .L1099
	.loc 10 7924 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7925 29
	ldr	r3, .L1099+4
	.loc 10 7925 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7928 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1089
	.loc 10 7930 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1090
	adr	r2, .L1092
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1092:
	.word	.L1097+1
	.word	.L1096+1
	.word	.L1095+1
	.word	.L1094+1
	.word	.L1093+1
	.word	.L1091+1
	.p2align 1
.L1097:
	.loc 10 7933 32
	movs	r3, #1
	b	.L1098
.L1096:
	.loc 10 7935 32
	movs	r3, #0
	b	.L1098
.L1095:
	.loc 10 7937 32
	movs	r3, #0
	b	.L1098
.L1094:
	.loc 10 7939 32
	movs	r3, #0
	b	.L1098
.L1093:
	.loc 10 7941 32
	movs	r3, #0
	b	.L1098
.L1091:
	.loc 10 7943 32
	movs	r3, #0
	b	.L1098
.L1090:
	.loc 10 7945 32
	movs	r3, #0
	b	.L1098
.L1089:
	.loc 10 7949 16
	movs	r3, #0
.L1098:
	.loc 10 7951 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1100:
	.align	2
.L1099:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE464:
	.size	nrf52_errata_164, .-nrf52_errata_164
	.section	.text.nrf52_errata_166,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_166, %function
nrf52_errata_166:
.LFB465:
	.loc 10 7965 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7970 29
	ldr	r3, .L1112
	.loc 10 7970 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7971 29
	ldr	r3, .L1112+4
	.loc 10 7971 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7974 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1102
	.loc 10 7976 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1103
	adr	r2, .L1105
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1105:
	.word	.L1110+1
	.word	.L1109+1
	.word	.L1108+1
	.word	.L1107+1
	.word	.L1106+1
	.word	.L1104+1
	.p2align 1
.L1110:
	.loc 10 7979 32
	movs	r3, #1
	b	.L1111
.L1109:
	.loc 10 7981 32
	movs	r3, #1
	b	.L1111
.L1108:
	.loc 10 7983 32
	movs	r3, #1
	b	.L1111
.L1107:
	.loc 10 7985 32
	movs	r3, #1
	b	.L1111
.L1106:
	.loc 10 7987 32
	movs	r3, #1
	b	.L1111
.L1104:
	.loc 10 7989 32
	movs	r3, #1
	b	.L1111
.L1103:
	.loc 10 7991 32
	movs	r3, #1
	b	.L1111
.L1102:
	.loc 10 7995 16
	movs	r3, #0
.L1111:
	.loc 10 7997 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1113:
	.align	2
.L1112:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE465:
	.size	nrf52_errata_166, .-nrf52_errata_166
	.section	.text.nrf52_errata_170,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_170, %function
nrf52_errata_170:
.LFB466:
	.loc 10 8013 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8020 29
	ldr	r3, .L1125
	.loc 10 8020 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8021 29
	ldr	r3, .L1125+4
	.loc 10 8021 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8024 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1115
	.loc 10 8026 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1116
	adr	r2, .L1118
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1118:
	.word	.L1123+1
	.word	.L1122+1
	.word	.L1121+1
	.word	.L1120+1
	.word	.L1119+1
	.word	.L1117+1
	.p2align 1
.L1123:
	.loc 10 8029 32
	movs	r3, #1
	b	.L1124
.L1122:
	.loc 10 8031 32
	movs	r3, #1
	b	.L1124
.L1121:
	.loc 10 8033 32
	movs	r3, #1
	b	.L1124
.L1120:
	.loc 10 8035 32
	movs	r3, #1
	b	.L1124
.L1119:
	.loc 10 8037 32
	movs	r3, #1
	b	.L1124
.L1117:
	.loc 10 8039 32
	movs	r3, #1
	b	.L1124
.L1116:
	.loc 10 8041 32
	movs	r3, #1
	b	.L1124
.L1115:
	.loc 10 8079 16
	movs	r3, #0
.L1124:
	.loc 10 8081 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1126:
	.align	2
.L1125:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE466:
	.size	nrf52_errata_170, .-nrf52_errata_170
	.section	.text.nrf52_errata_171,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_171, %function
nrf52_errata_171:
.LFB467:
	.loc 10 8095 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8100 29
	ldr	r3, .L1138
	.loc 10 8100 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8101 29
	ldr	r3, .L1138+4
	.loc 10 8101 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8104 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1128
	.loc 10 8106 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1129
	adr	r2, .L1131
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1131:
	.word	.L1136+1
	.word	.L1135+1
	.word	.L1134+1
	.word	.L1133+1
	.word	.L1132+1
	.word	.L1130+1
	.p2align 1
.L1136:
	.loc 10 8109 32
	movs	r3, #1
	b	.L1137
.L1135:
	.loc 10 8111 32
	movs	r3, #1
	b	.L1137
.L1134:
	.loc 10 8113 32
	movs	r3, #1
	b	.L1137
.L1133:
	.loc 10 8115 32
	movs	r3, #1
	b	.L1137
.L1132:
	.loc 10 8117 32
	movs	r3, #1
	b	.L1137
.L1130:
	.loc 10 8119 32
	movs	r3, #1
	b	.L1137
.L1129:
	.loc 10 8121 32
	movs	r3, #1
	b	.L1137
.L1128:
	.loc 10 8125 16
	movs	r3, #0
.L1137:
	.loc 10 8127 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1139:
	.align	2
.L1138:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE467:
	.size	nrf52_errata_171, .-nrf52_errata_171
	.section	.text.nrf52_errata_172,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_172, %function
nrf52_errata_172:
.LFB468:
	.loc 10 8141 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8146 29
	ldr	r3, .L1151
	.loc 10 8146 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8147 29
	ldr	r3, .L1151+4
	.loc 10 8147 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8150 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1141
	.loc 10 8152 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1142
	adr	r2, .L1144
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1144:
	.word	.L1149+1
	.word	.L1148+1
	.word	.L1147+1
	.word	.L1146+1
	.word	.L1145+1
	.word	.L1143+1
	.p2align 1
.L1149:
	.loc 10 8155 32
	movs	r3, #0
	b	.L1150
.L1148:
	.loc 10 8157 32
	movs	r3, #1
	b	.L1150
.L1147:
	.loc 10 8159 32
	movs	r3, #1
	b	.L1150
.L1146:
	.loc 10 8161 32
	movs	r3, #1
	b	.L1150
.L1145:
	.loc 10 8163 32
	movs	r3, #1
	b	.L1150
.L1143:
	.loc 10 8165 32
	movs	r3, #1
	b	.L1150
.L1142:
	.loc 10 8167 32
	movs	r3, #1
	b	.L1150
.L1141:
	.loc 10 8171 16
	movs	r3, #0
.L1150:
	.loc 10 8173 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1152:
	.align	2
.L1151:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE468:
	.size	nrf52_errata_172, .-nrf52_errata_172
	.section	.text.nrf52_errata_173,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_173, %function
nrf52_errata_173:
.LFB469:
	.loc 10 8194 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8219 29
	ldr	r3, .L1164
	.loc 10 8219 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8220 29
	ldr	r3, .L1164+4
	.loc 10 8220 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8244 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1154
	.loc 10 8246 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1155
	adr	r2, .L1157
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1157:
	.word	.L1162+1
	.word	.L1161+1
	.word	.L1160+1
	.word	.L1159+1
	.word	.L1158+1
	.word	.L1156+1
	.p2align 1
.L1162:
	.loc 10 8249 32
	movs	r3, #1
	b	.L1163
.L1161:
	.loc 10 8251 32
	movs	r3, #1
	b	.L1163
.L1160:
	.loc 10 8253 32
	movs	r3, #1
	b	.L1163
.L1159:
	.loc 10 8255 32
	movs	r3, #1
	b	.L1163
.L1158:
	.loc 10 8257 32
	movs	r3, #1
	b	.L1163
.L1156:
	.loc 10 8259 32
	movs	r3, #1
	b	.L1163
.L1155:
	.loc 10 8261 32
	movs	r3, #1
	b	.L1163
.L1154:
	.loc 10 8337 16
	movs	r3, #0
.L1163:
	.loc 10 8339 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1165:
	.align	2
.L1164:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE469:
	.size	nrf52_errata_173, .-nrf52_errata_173
	.section	.text.nrf52_errata_174,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_174, %function
nrf52_errata_174:
.LFB470:
	.loc 10 8353 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8358 29
	ldr	r3, .L1177
	.loc 10 8358 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8359 29
	ldr	r3, .L1177+4
	.loc 10 8359 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8362 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1167
	.loc 10 8364 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1168
	adr	r2, .L1170
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1170:
	.word	.L1175+1
	.word	.L1174+1
	.word	.L1173+1
	.word	.L1172+1
	.word	.L1171+1
	.word	.L1169+1
	.p2align 1
.L1175:
	.loc 10 8367 32
	movs	r3, #0
	b	.L1176
.L1174:
	.loc 10 8369 32
	movs	r3, #1
	b	.L1176
.L1173:
	.loc 10 8371 32
	movs	r3, #1
	b	.L1176
.L1172:
	.loc 10 8373 32
	movs	r3, #1
	b	.L1176
.L1171:
	.loc 10 8375 32
	movs	r3, #1
	b	.L1176
.L1169:
	.loc 10 8377 32
	movs	r3, #1
	b	.L1176
.L1168:
	.loc 10 8379 32
	movs	r3, #1
	b	.L1176
.L1167:
	.loc 10 8383 16
	movs	r3, #0
.L1176:
	.loc 10 8385 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1178:
	.align	2
.L1177:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE470:
	.size	nrf52_errata_174, .-nrf52_errata_174
	.section	.text.nrf52_errata_176,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_176, %function
nrf52_errata_176:
.LFB471:
	.loc 10 8406 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8431 29
	ldr	r3, .L1190
	.loc 10 8431 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8432 29
	ldr	r3, .L1190+4
	.loc 10 8432 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8456 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1180
	.loc 10 8458 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1181
	adr	r2, .L1183
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1183:
	.word	.L1188+1
	.word	.L1187+1
	.word	.L1186+1
	.word	.L1185+1
	.word	.L1184+1
	.word	.L1182+1
	.p2align 1
.L1188:
	.loc 10 8461 32
	movs	r3, #1
	b	.L1189
.L1187:
	.loc 10 8463 32
	movs	r3, #1
	b	.L1189
.L1186:
	.loc 10 8465 32
	movs	r3, #1
	b	.L1189
.L1185:
	.loc 10 8467 32
	movs	r3, #1
	b	.L1189
.L1184:
	.loc 10 8469 32
	movs	r3, #1
	b	.L1189
.L1182:
	.loc 10 8471 32
	movs	r3, #1
	b	.L1189
.L1181:
	.loc 10 8473 32
	movs	r3, #1
	b	.L1189
.L1180:
	.loc 10 8549 16
	movs	r3, #0
.L1189:
	.loc 10 8551 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1191:
	.align	2
.L1190:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE471:
	.size	nrf52_errata_176, .-nrf52_errata_176
	.section	.text.nrf52_errata_178,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_178, %function
nrf52_errata_178:
.LFB472:
	.loc 10 8566 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 8607 16
	movs	r3, #0
	.loc 10 8609 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE472:
	.size	nrf52_errata_178, .-nrf52_errata_178
	.section	.text.nrf52_errata_179,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_179, %function
nrf52_errata_179:
.LFB473:
	.loc 10 8628 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8651 29
	ldr	r3, .L1205
	.loc 10 8651 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8652 29
	ldr	r3, .L1205+4
	.loc 10 8652 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8676 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1195
	.loc 10 8678 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1196
	adr	r2, .L1198
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1198:
	.word	.L1203+1
	.word	.L1202+1
	.word	.L1201+1
	.word	.L1200+1
	.word	.L1199+1
	.word	.L1197+1
	.p2align 1
.L1203:
	.loc 10 8681 32
	movs	r3, #1
	b	.L1204
.L1202:
	.loc 10 8683 32
	movs	r3, #1
	b	.L1204
.L1201:
	.loc 10 8685 32
	movs	r3, #1
	b	.L1204
.L1200:
	.loc 10 8687 32
	movs	r3, #1
	b	.L1204
.L1199:
	.loc 10 8689 32
	movs	r3, #1
	b	.L1204
.L1197:
	.loc 10 8691 32
	movs	r3, #1
	b	.L1204
.L1196:
	.loc 10 8693 32
	movs	r3, #1
	b	.L1204
.L1195:
	.loc 10 8735 16
	movs	r3, #0
.L1204:
	.loc 10 8737 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1206:
	.align	2
.L1205:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE473:
	.size	nrf52_errata_179, .-nrf52_errata_179
	.section	.text.nrf52_errata_180,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_180, %function
nrf52_errata_180:
.LFB474:
	.loc 10 8751 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8756 29
	ldr	r3, .L1218
	.loc 10 8756 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8757 29
	ldr	r3, .L1218+4
	.loc 10 8757 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8760 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1208
	.loc 10 8762 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1209
	adr	r2, .L1211
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1211:
	.word	.L1216+1
	.word	.L1215+1
	.word	.L1214+1
	.word	.L1213+1
	.word	.L1212+1
	.word	.L1210+1
	.p2align 1
.L1216:
	.loc 10 8765 32
	movs	r3, #1
	b	.L1217
.L1215:
	.loc 10 8767 32
	movs	r3, #0
	b	.L1217
.L1214:
	.loc 10 8769 32
	movs	r3, #0
	b	.L1217
.L1213:
	.loc 10 8771 32
	movs	r3, #0
	b	.L1217
.L1212:
	.loc 10 8773 32
	movs	r3, #0
	b	.L1217
.L1210:
	.loc 10 8775 32
	movs	r3, #0
	b	.L1217
.L1209:
	.loc 10 8777 32
	movs	r3, #0
	b	.L1217
.L1208:
	.loc 10 8781 16
	movs	r3, #0
.L1217:
	.loc 10 8783 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1219:
	.align	2
.L1218:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE474:
	.size	nrf52_errata_180, .-nrf52_errata_180
	.section	.text.nrf52_errata_181,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_181, %function
nrf52_errata_181:
.LFB475:
	.loc 10 8799 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8819 29
	ldr	r3, .L1231
	.loc 10 8819 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8820 29
	ldr	r3, .L1231+4
	.loc 10 8820 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8844 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1221
	.loc 10 8846 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1222
	adr	r2, .L1224
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1224:
	.word	.L1229+1
	.word	.L1228+1
	.word	.L1227+1
	.word	.L1226+1
	.word	.L1225+1
	.word	.L1223+1
	.p2align 1
.L1229:
	.loc 10 8849 32
	movs	r3, #1
	b	.L1230
.L1228:
	.loc 10 8851 32
	movs	r3, #0
	b	.L1230
.L1227:
	.loc 10 8853 32
	movs	r3, #0
	b	.L1230
.L1226:
	.loc 10 8855 32
	movs	r3, #0
	b	.L1230
.L1225:
	.loc 10 8857 32
	movs	r3, #0
	b	.L1230
.L1223:
	.loc 10 8859 32
	movs	r3, #0
	b	.L1230
.L1222:
	.loc 10 8861 32
	movs	r3, #0
	b	.L1230
.L1221:
	.loc 10 8865 16
	movs	r3, #0
.L1230:
	.loc 10 8867 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1232:
	.align	2
.L1231:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE475:
	.size	nrf52_errata_181, .-nrf52_errata_181
	.section	.text.nrf52_errata_182,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_182, %function
nrf52_errata_182:
.LFB476:
	.loc 10 8882 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 8912 16
	movs	r3, #0
	.loc 10 8914 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE476:
	.size	nrf52_errata_182, .-nrf52_errata_182
	.section	.text.nrf52_errata_183,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_183, %function
nrf52_errata_183:
.LFB477:
	.loc 10 8934 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8958 29
	ldr	r3, .L1246
	.loc 10 8958 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8959 29
	ldr	r3, .L1246+4
	.loc 10 8959 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8983 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1236
	.loc 10 8985 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1237
	adr	r2, .L1239
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1239:
	.word	.L1244+1
	.word	.L1243+1
	.word	.L1242+1
	.word	.L1241+1
	.word	.L1240+1
	.word	.L1238+1
	.p2align 1
.L1244:
	.loc 10 8988 32
	movs	r3, #1
	b	.L1245
.L1243:
	.loc 10 8990 32
	movs	r3, #1
	b	.L1245
.L1242:
	.loc 10 8992 32
	movs	r3, #1
	b	.L1245
.L1241:
	.loc 10 8994 32
	movs	r3, #1
	b	.L1245
.L1240:
	.loc 10 8996 32
	movs	r3, #1
	b	.L1245
.L1238:
	.loc 10 8998 32
	movs	r3, #1
	b	.L1245
.L1237:
	.loc 10 9000 32
	movs	r3, #1
	b	.L1245
.L1236:
	.loc 10 9064 16
	movs	r3, #0
.L1245:
	.loc 10 9066 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1247:
	.align	2
.L1246:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE477:
	.size	nrf52_errata_183, .-nrf52_errata_183
	.section	.text.nrf52_errata_184,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_184, %function
nrf52_errata_184:
.LFB478:
	.loc 10 9085 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9095 29
	ldr	r3, .L1259
	.loc 10 9095 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9096 29
	ldr	r3, .L1259+4
	.loc 10 9096 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9099 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1249
	.loc 10 9101 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1250
	adr	r2, .L1252
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1252:
	.word	.L1257+1
	.word	.L1256+1
	.word	.L1255+1
	.word	.L1254+1
	.word	.L1253+1
	.word	.L1251+1
	.p2align 1
.L1257:
	.loc 10 9104 32
	movs	r3, #1
	b	.L1258
.L1256:
	.loc 10 9106 32
	movs	r3, #1
	b	.L1258
.L1255:
	.loc 10 9108 32
	movs	r3, #1
	b	.L1258
.L1254:
	.loc 10 9110 32
	movs	r3, #1
	b	.L1258
.L1253:
	.loc 10 9112 32
	movs	r3, #1
	b	.L1258
.L1251:
	.loc 10 9114 32
	movs	r3, #1
	b	.L1258
.L1250:
	.loc 10 9116 32
	movs	r3, #1
	b	.L1258
.L1249:
	.loc 10 9192 16
	movs	r3, #0
.L1258:
	.loc 10 9194 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1260:
	.align	2
.L1259:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE478:
	.size	nrf52_errata_184, .-nrf52_errata_184
	.section	.text.nrf52_errata_186,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_186, %function
nrf52_errata_186:
.LFB479:
	.loc 10 9208 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9213 29
	ldr	r3, .L1272
	.loc 10 9213 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9214 29
	ldr	r3, .L1272+4
	.loc 10 9214 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9217 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1262
	.loc 10 9219 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1263
	adr	r2, .L1265
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1265:
	.word	.L1270+1
	.word	.L1269+1
	.word	.L1268+1
	.word	.L1267+1
	.word	.L1266+1
	.word	.L1264+1
	.p2align 1
.L1270:
	.loc 10 9222 32
	movs	r3, #0
	b	.L1271
.L1269:
	.loc 10 9224 32
	movs	r3, #1
	b	.L1271
.L1268:
	.loc 10 9226 32
	movs	r3, #0
	b	.L1271
.L1267:
	.loc 10 9228 32
	movs	r3, #0
	b	.L1271
.L1266:
	.loc 10 9230 32
	movs	r3, #0
	b	.L1271
.L1264:
	.loc 10 9232 32
	movs	r3, #0
	b	.L1271
.L1263:
	.loc 10 9234 32
	movs	r3, #0
	b	.L1271
.L1262:
	.loc 10 9238 16
	movs	r3, #0
.L1271:
	.loc 10 9240 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1273:
	.align	2
.L1272:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE479:
	.size	nrf52_errata_186, .-nrf52_errata_186
	.section	.text.nrf52_errata_187,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_187, %function
nrf52_errata_187:
.LFB480:
	.loc 10 9256 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9263 29
	ldr	r3, .L1285
	.loc 10 9263 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9264 29
	ldr	r3, .L1285+4
	.loc 10 9264 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9267 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1275
	.loc 10 9269 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1276
	adr	r2, .L1278
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1278:
	.word	.L1283+1
	.word	.L1282+1
	.word	.L1281+1
	.word	.L1280+1
	.word	.L1279+1
	.word	.L1277+1
	.p2align 1
.L1283:
	.loc 10 9272 32
	movs	r3, #0
	b	.L1284
.L1282:
	.loc 10 9274 32
	movs	r3, #1
	b	.L1284
.L1281:
	.loc 10 9276 32
	movs	r3, #1
	b	.L1284
.L1280:
	.loc 10 9278 32
	movs	r3, #1
	b	.L1284
.L1279:
	.loc 10 9280 32
	movs	r3, #1
	b	.L1284
.L1277:
	.loc 10 9282 32
	movs	r3, #1
	b	.L1284
.L1276:
	.loc 10 9284 32
	movs	r3, #1
	b	.L1284
.L1275:
	.loc 10 9322 16
	movs	r3, #0
.L1284:
	.loc 10 9324 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1286:
	.align	2
.L1285:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE480:
	.size	nrf52_errata_187, .-nrf52_errata_187
	.section	.text.nrf52_errata_189,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_189, %function
nrf52_errata_189:
.LFB481:
	.loc 10 9338 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9343 29
	ldr	r3, .L1298
	.loc 10 9343 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9344 29
	ldr	r3, .L1298+4
	.loc 10 9344 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9347 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1288
	.loc 10 9349 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1289
	adr	r2, .L1291
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1291:
	.word	.L1296+1
	.word	.L1295+1
	.word	.L1294+1
	.word	.L1293+1
	.word	.L1292+1
	.word	.L1290+1
	.p2align 1
.L1296:
	.loc 10 9352 32
	movs	r3, #0
	b	.L1297
.L1295:
	.loc 10 9354 32
	movs	r3, #1
	b	.L1297
.L1294:
	.loc 10 9356 32
	movs	r3, #0
	b	.L1297
.L1293:
	.loc 10 9358 32
	movs	r3, #0
	b	.L1297
.L1292:
	.loc 10 9360 32
	movs	r3, #0
	b	.L1297
.L1290:
	.loc 10 9362 32
	movs	r3, #0
	b	.L1297
.L1289:
	.loc 10 9364 32
	movs	r3, #0
	b	.L1297
.L1288:
	.loc 10 9368 16
	movs	r3, #0
.L1297:
	.loc 10 9370 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1299:
	.align	2
.L1298:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE481:
	.size	nrf52_errata_189, .-nrf52_errata_189
	.section	.text.nrf52_errata_190,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_190, %function
nrf52_errata_190:
.LFB482:
	.loc 10 9386 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9393 29
	ldr	r3, .L1311
	.loc 10 9393 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9394 29
	ldr	r3, .L1311+4
	.loc 10 9394 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9397 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1301
	.loc 10 9399 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1302
	adr	r2, .L1304
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1304:
	.word	.L1309+1
	.word	.L1308+1
	.word	.L1307+1
	.word	.L1306+1
	.word	.L1305+1
	.word	.L1303+1
	.p2align 1
.L1309:
	.loc 10 9402 32
	movs	r3, #0
	b	.L1310
.L1308:
	.loc 10 9404 32
	movs	r3, #1
	b	.L1310
.L1307:
	.loc 10 9406 32
	movs	r3, #1
	b	.L1310
.L1306:
	.loc 10 9408 32
	movs	r3, #1
	b	.L1310
.L1305:
	.loc 10 9410 32
	movs	r3, #1
	b	.L1310
.L1303:
	.loc 10 9412 32
	movs	r3, #1
	b	.L1310
.L1302:
	.loc 10 9414 32
	movs	r3, #1
	b	.L1310
.L1301:
	.loc 10 9452 16
	movs	r3, #0
.L1310:
	.loc 10 9454 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1312:
	.align	2
.L1311:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE482:
	.size	nrf52_errata_190, .-nrf52_errata_190
	.section	.text.nrf52_errata_191,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_191, %function
nrf52_errata_191:
.LFB483:
	.loc 10 9468 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9473 29
	ldr	r3, .L1324
	.loc 10 9473 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9474 29
	ldr	r3, .L1324+4
	.loc 10 9474 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9477 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1314
	.loc 10 9479 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1315
	adr	r2, .L1317
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1317:
	.word	.L1322+1
	.word	.L1321+1
	.word	.L1320+1
	.word	.L1319+1
	.word	.L1318+1
	.word	.L1316+1
	.p2align 1
.L1322:
	.loc 10 9482 32
	movs	r3, #0
	b	.L1323
.L1321:
	.loc 10 9484 32
	movs	r3, #1
	b	.L1323
.L1320:
	.loc 10 9486 32
	movs	r3, #1
	b	.L1323
.L1319:
	.loc 10 9488 32
	movs	r3, #1
	b	.L1323
.L1318:
	.loc 10 9490 32
	movs	r3, #1
	b	.L1323
.L1316:
	.loc 10 9492 32
	movs	r3, #1
	b	.L1323
.L1315:
	.loc 10 9494 32
	movs	r3, #1
	b	.L1323
.L1314:
	.loc 10 9498 16
	movs	r3, #0
.L1323:
	.loc 10 9500 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1325:
	.align	2
.L1324:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE483:
	.size	nrf52_errata_191, .-nrf52_errata_191
	.section	.text.nrf52_errata_192,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_192, %function
nrf52_errata_192:
.LFB484:
	.loc 10 9517 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9538 29
	ldr	r3, .L1337
	.loc 10 9538 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9539 29
	ldr	r3, .L1337+4
	.loc 10 9539 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9563 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1327
	.loc 10 9565 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1328
	adr	r2, .L1330
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1330:
	.word	.L1335+1
	.word	.L1334+1
	.word	.L1333+1
	.word	.L1332+1
	.word	.L1331+1
	.word	.L1329+1
	.p2align 1
.L1335:
	.loc 10 9568 32
	movs	r3, #1
	b	.L1336
.L1334:
	.loc 10 9570 32
	movs	r3, #1
	b	.L1336
.L1333:
	.loc 10 9572 32
	movs	r3, #1
	b	.L1336
.L1332:
	.loc 10 9574 32
	movs	r3, #0
	b	.L1336
.L1331:
	.loc 10 9576 32
	movs	r3, #0
	b	.L1336
.L1329:
	.loc 10 9578 32
	movs	r3, #0
	b	.L1336
.L1328:
	.loc 10 9580 32
	movs	r3, #0
	b	.L1336
.L1327:
	.loc 10 9598 16
	movs	r3, #0
.L1336:
	.loc 10 9600 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1338:
	.align	2
.L1337:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE484:
	.size	nrf52_errata_192, .-nrf52_errata_192
	.section	.text.nrf52_errata_193,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_193, %function
nrf52_errata_193:
.LFB485:
	.loc 10 9614 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9619 29
	ldr	r3, .L1350
	.loc 10 9619 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9620 29
	ldr	r3, .L1350+4
	.loc 10 9620 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9623 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1340
	.loc 10 9625 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1341
	adr	r2, .L1343
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1343:
	.word	.L1348+1
	.word	.L1347+1
	.word	.L1346+1
	.word	.L1345+1
	.word	.L1344+1
	.word	.L1342+1
	.p2align 1
.L1348:
	.loc 10 9628 32
	movs	r3, #0
	b	.L1349
.L1347:
	.loc 10 9630 32
	movs	r3, #1
	b	.L1349
.L1346:
	.loc 10 9632 32
	movs	r3, #1
	b	.L1349
.L1345:
	.loc 10 9634 32
	movs	r3, #1
	b	.L1349
.L1344:
	.loc 10 9636 32
	movs	r3, #1
	b	.L1349
.L1342:
	.loc 10 9638 32
	movs	r3, #1
	b	.L1349
.L1341:
	.loc 10 9640 32
	movs	r3, #1
	b	.L1349
.L1340:
	.loc 10 9644 16
	movs	r3, #0
.L1349:
	.loc 10 9646 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1351:
	.align	2
.L1350:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE485:
	.size	nrf52_errata_193, .-nrf52_errata_193
	.section	.text.nrf52_errata_194,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_194, %function
nrf52_errata_194:
.LFB486:
	.loc 10 9664 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9686 29
	ldr	r3, .L1363
	.loc 10 9686 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9687 29
	ldr	r3, .L1363+4
	.loc 10 9687 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9711 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1353
	.loc 10 9713 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1354
	adr	r2, .L1356
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1356:
	.word	.L1361+1
	.word	.L1360+1
	.word	.L1359+1
	.word	.L1358+1
	.word	.L1357+1
	.word	.L1355+1
	.p2align 1
.L1361:
	.loc 10 9716 32
	movs	r3, #1
	b	.L1362
.L1360:
	.loc 10 9718 32
	movs	r3, #1
	b	.L1362
.L1359:
	.loc 10 9720 32
	movs	r3, #1
	b	.L1362
.L1358:
	.loc 10 9722 32
	movs	r3, #1
	b	.L1362
.L1357:
	.loc 10 9724 32
	movs	r3, #1
	b	.L1362
.L1355:
	.loc 10 9726 32
	movs	r3, #1
	b	.L1362
.L1354:
	.loc 10 9728 32
	movs	r3, #1
	b	.L1362
.L1353:
	.loc 10 9766 16
	movs	r3, #0
.L1362:
	.loc 10 9768 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1364:
	.align	2
.L1363:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE486:
	.size	nrf52_errata_194, .-nrf52_errata_194
	.section	.text.nrf52_errata_195,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_195, %function
nrf52_errata_195:
.LFB487:
	.loc 10 9782 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9787 29
	ldr	r3, .L1376
	.loc 10 9787 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9788 29
	ldr	r3, .L1376+4
	.loc 10 9788 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9791 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1366
	.loc 10 9793 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1367
	adr	r2, .L1369
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1369:
	.word	.L1374+1
	.word	.L1373+1
	.word	.L1372+1
	.word	.L1371+1
	.word	.L1370+1
	.word	.L1368+1
	.p2align 1
.L1374:
	.loc 10 9796 32
	movs	r3, #0
	b	.L1375
.L1373:
	.loc 10 9798 32
	movs	r3, #1
	b	.L1375
.L1372:
	.loc 10 9800 32
	movs	r3, #1
	b	.L1375
.L1371:
	.loc 10 9802 32
	movs	r3, #1
	b	.L1375
.L1370:
	.loc 10 9804 32
	movs	r3, #1
	b	.L1375
.L1368:
	.loc 10 9806 32
	movs	r3, #1
	b	.L1375
.L1367:
	.loc 10 9808 32
	movs	r3, #1
	b	.L1375
.L1366:
	.loc 10 9812 16
	movs	r3, #0
.L1375:
	.loc 10 9814 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1377:
	.align	2
.L1376:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE487:
	.size	nrf52_errata_195, .-nrf52_errata_195
	.section	.text.nrf52_errata_196,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_196, %function
nrf52_errata_196:
.LFB488:
	.loc 10 9832 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9854 29
	ldr	r3, .L1389
	.loc 10 9854 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9855 29
	ldr	r3, .L1389+4
	.loc 10 9855 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9879 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1379
	.loc 10 9881 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1380
	adr	r2, .L1382
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1382:
	.word	.L1387+1
	.word	.L1386+1
	.word	.L1385+1
	.word	.L1384+1
	.word	.L1383+1
	.word	.L1381+1
	.p2align 1
.L1387:
	.loc 10 9884 32
	movs	r3, #1
	b	.L1388
.L1386:
	.loc 10 9886 32
	movs	r3, #1
	b	.L1388
.L1385:
	.loc 10 9888 32
	movs	r3, #1
	b	.L1388
.L1384:
	.loc 10 9890 32
	movs	r3, #1
	b	.L1388
.L1383:
	.loc 10 9892 32
	movs	r3, #1
	b	.L1388
.L1381:
	.loc 10 9894 32
	movs	r3, #1
	b	.L1388
.L1380:
	.loc 10 9896 32
	movs	r3, #1
	b	.L1388
.L1379:
	.loc 10 9934 16
	movs	r3, #0
.L1388:
	.loc 10 9936 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1390:
	.align	2
.L1389:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE488:
	.size	nrf52_errata_196, .-nrf52_errata_196
	.section	.text.nrf52_errata_197,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_197, %function
nrf52_errata_197:
.LFB489:
	.loc 10 9950 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9955 29
	ldr	r3, .L1402
	.loc 10 9955 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9956 29
	ldr	r3, .L1402+4
	.loc 10 9956 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9959 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1392
	.loc 10 9961 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1393
	adr	r2, .L1395
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1395:
	.word	.L1400+1
	.word	.L1399+1
	.word	.L1398+1
	.word	.L1397+1
	.word	.L1396+1
	.word	.L1394+1
	.p2align 1
.L1400:
	.loc 10 9964 32
	movs	r3, #0
	b	.L1401
.L1399:
	.loc 10 9966 32
	movs	r3, #0
	b	.L1401
.L1398:
	.loc 10 9968 32
	movs	r3, #1
	b	.L1401
.L1397:
	.loc 10 9970 32
	movs	r3, #0
	b	.L1401
.L1396:
	.loc 10 9972 32
	movs	r3, #0
	b	.L1401
.L1394:
	.loc 10 9974 32
	movs	r3, #0
	b	.L1401
.L1393:
	.loc 10 9976 32
	movs	r3, #0
	b	.L1401
.L1392:
	.loc 10 9980 16
	movs	r3, #0
.L1401:
	.loc 10 9982 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1403:
	.align	2
.L1402:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE489:
	.size	nrf52_errata_197, .-nrf52_errata_197
	.section	.text.nrf52_errata_198,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_198, %function
nrf52_errata_198:
.LFB490:
	.loc 10 9996 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10001 29
	ldr	r3, .L1415
	.loc 10 10001 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10002 29
	ldr	r3, .L1415+4
	.loc 10 10002 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10005 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1405
	.loc 10 10007 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1406
	adr	r2, .L1408
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1408:
	.word	.L1413+1
	.word	.L1412+1
	.word	.L1411+1
	.word	.L1410+1
	.word	.L1409+1
	.word	.L1407+1
	.p2align 1
.L1413:
	.loc 10 10010 32
	movs	r3, #0
	b	.L1414
.L1412:
	.loc 10 10012 32
	movs	r3, #1
	b	.L1414
.L1411:
	.loc 10 10014 32
	movs	r3, #1
	b	.L1414
.L1410:
	.loc 10 10016 32
	movs	r3, #1
	b	.L1414
.L1409:
	.loc 10 10018 32
	movs	r3, #1
	b	.L1414
.L1407:
	.loc 10 10020 32
	movs	r3, #1
	b	.L1414
.L1406:
	.loc 10 10022 32
	movs	r3, #1
	b	.L1414
.L1405:
	.loc 10 10026 16
	movs	r3, #0
.L1414:
	.loc 10 10028 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1416:
	.align	2
.L1415:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE490:
	.size	nrf52_errata_198, .-nrf52_errata_198
	.section	.text.nrf52_errata_199,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_199, %function
nrf52_errata_199:
.LFB491:
	.loc 10 10042 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10047 29
	ldr	r3, .L1428
	.loc 10 10047 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10048 29
	ldr	r3, .L1428+4
	.loc 10 10048 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10051 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1418
	.loc 10 10053 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1419
	adr	r2, .L1421
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1421:
	.word	.L1426+1
	.word	.L1425+1
	.word	.L1424+1
	.word	.L1423+1
	.word	.L1422+1
	.word	.L1420+1
	.p2align 1
.L1426:
	.loc 10 10056 32
	movs	r3, #1
	b	.L1427
.L1425:
	.loc 10 10058 32
	movs	r3, #1
	b	.L1427
.L1424:
	.loc 10 10060 32
	movs	r3, #1
	b	.L1427
.L1423:
	.loc 10 10062 32
	movs	r3, #1
	b	.L1427
.L1422:
	.loc 10 10064 32
	movs	r3, #1
	b	.L1427
.L1420:
	.loc 10 10066 32
	movs	r3, #1
	b	.L1427
.L1419:
	.loc 10 10068 32
	movs	r3, #1
	b	.L1427
.L1418:
	.loc 10 10072 16
	movs	r3, #0
.L1427:
	.loc 10 10074 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1429:
	.align	2
.L1428:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE491:
	.size	nrf52_errata_199, .-nrf52_errata_199
	.section	.text.nrf52_errata_200,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_200, %function
nrf52_errata_200:
.LFB492:
	.loc 10 10088 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10093 29
	ldr	r3, .L1441
	.loc 10 10093 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10094 29
	ldr	r3, .L1441+4
	.loc 10 10094 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10097 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1431
	.loc 10 10099 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1432
	adr	r2, .L1434
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1434:
	.word	.L1439+1
	.word	.L1438+1
	.word	.L1437+1
	.word	.L1436+1
	.word	.L1435+1
	.word	.L1433+1
	.p2align 1
.L1439:
	.loc 10 10102 32
	movs	r3, #1
	b	.L1440
.L1438:
	.loc 10 10104 32
	movs	r3, #0
	b	.L1440
.L1437:
	.loc 10 10106 32
	movs	r3, #0
	b	.L1440
.L1436:
	.loc 10 10108 32
	movs	r3, #0
	b	.L1440
.L1435:
	.loc 10 10110 32
	movs	r3, #0
	b	.L1440
.L1433:
	.loc 10 10112 32
	movs	r3, #0
	b	.L1440
.L1432:
	.loc 10 10114 32
	movs	r3, #0
	b	.L1440
.L1431:
	.loc 10 10118 16
	movs	r3, #0
.L1440:
	.loc 10 10120 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1442:
	.align	2
.L1441:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE492:
	.size	nrf52_errata_200, .-nrf52_errata_200
	.section	.text.nrf52_errata_201,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_201, %function
nrf52_errata_201:
.LFB493:
	.loc 10 10137 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10158 29
	ldr	r3, .L1454
	.loc 10 10158 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10159 29
	ldr	r3, .L1454+4
	.loc 10 10159 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10183 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1444
	.loc 10 10185 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1445
	adr	r2, .L1447
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1447:
	.word	.L1452+1
	.word	.L1451+1
	.word	.L1450+1
	.word	.L1449+1
	.word	.L1448+1
	.word	.L1446+1
	.p2align 1
.L1452:
	.loc 10 10188 32
	movs	r3, #1
	b	.L1453
.L1451:
	.loc 10 10190 32
	movs	r3, #1
	b	.L1453
.L1450:
	.loc 10 10192 32
	movs	r3, #1
	b	.L1453
.L1449:
	.loc 10 10194 32
	movs	r3, #0
	b	.L1453
.L1448:
	.loc 10 10196 32
	movs	r3, #0
	b	.L1453
.L1446:
	.loc 10 10198 32
	movs	r3, #0
	b	.L1453
.L1445:
	.loc 10 10200 32
	movs	r3, #0
	b	.L1453
.L1444:
	.loc 10 10218 16
	movs	r3, #0
.L1453:
	.loc 10 10220 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1455:
	.align	2
.L1454:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE493:
	.size	nrf52_errata_201, .-nrf52_errata_201
	.section	.text.nrf52_errata_202,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_202, %function
nrf52_errata_202:
.LFB494:
	.loc 10 10234 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10239 29
	ldr	r3, .L1467
	.loc 10 10239 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10240 29
	ldr	r3, .L1467+4
	.loc 10 10240 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10243 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1457
	.loc 10 10245 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1458
	adr	r2, .L1460
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1460:
	.word	.L1465+1
	.word	.L1464+1
	.word	.L1463+1
	.word	.L1462+1
	.word	.L1461+1
	.word	.L1459+1
	.p2align 1
.L1465:
	.loc 10 10248 32
	movs	r3, #0
	b	.L1466
.L1464:
	.loc 10 10250 32
	movs	r3, #1
	b	.L1466
.L1463:
	.loc 10 10252 32
	movs	r3, #1
	b	.L1466
.L1462:
	.loc 10 10254 32
	movs	r3, #0
	b	.L1466
.L1461:
	.loc 10 10256 32
	movs	r3, #0
	b	.L1466
.L1459:
	.loc 10 10258 32
	movs	r3, #0
	b	.L1466
.L1458:
	.loc 10 10260 32
	movs	r3, #0
	b	.L1466
.L1457:
	.loc 10 10264 16
	movs	r3, #0
.L1466:
	.loc 10 10266 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1468:
	.align	2
.L1467:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE494:
	.size	nrf52_errata_202, .-nrf52_errata_202
	.section	.text.nrf52_errata_204,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_204, %function
nrf52_errata_204:
.LFB495:
	.loc 10 10283 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10304 29
	ldr	r3, .L1480
	.loc 10 10304 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10305 29
	ldr	r3, .L1480+4
	.loc 10 10305 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10329 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1470
	.loc 10 10331 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1471
	adr	r2, .L1473
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1473:
	.word	.L1478+1
	.word	.L1477+1
	.word	.L1476+1
	.word	.L1475+1
	.word	.L1474+1
	.word	.L1472+1
	.p2align 1
.L1478:
	.loc 10 10334 32
	movs	r3, #1
	b	.L1479
.L1477:
	.loc 10 10336 32
	movs	r3, #1
	b	.L1479
.L1476:
	.loc 10 10338 32
	movs	r3, #1
	b	.L1479
.L1475:
	.loc 10 10340 32
	movs	r3, #1
	b	.L1479
.L1474:
	.loc 10 10342 32
	movs	r3, #1
	b	.L1479
.L1472:
	.loc 10 10344 32
	movs	r3, #1
	b	.L1479
.L1471:
	.loc 10 10346 32
	movs	r3, #1
	b	.L1479
.L1470:
	.loc 10 10364 16
	movs	r3, #0
.L1479:
	.loc 10 10366 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1481:
	.align	2
.L1480:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE495:
	.size	nrf52_errata_204, .-nrf52_errata_204
	.section	.text.nrf52_errata_208,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_208, %function
nrf52_errata_208:
.LFB496:
	.loc 10 10380 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10385 29
	ldr	r3, .L1493
	.loc 10 10385 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10386 29
	ldr	r3, .L1493+4
	.loc 10 10386 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10389 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1483
	.loc 10 10391 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1484
	adr	r2, .L1486
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1486:
	.word	.L1491+1
	.word	.L1490+1
	.word	.L1489+1
	.word	.L1488+1
	.word	.L1487+1
	.word	.L1485+1
	.p2align 1
.L1491:
	.loc 10 10394 32
	movs	r3, #1
	b	.L1492
.L1490:
	.loc 10 10396 32
	movs	r3, #1
	b	.L1492
.L1489:
	.loc 10 10398 32
	movs	r3, #1
	b	.L1492
.L1488:
	.loc 10 10400 32
	movs	r3, #1
	b	.L1492
.L1487:
	.loc 10 10402 32
	movs	r3, #1
	b	.L1492
.L1485:
	.loc 10 10404 32
	movs	r3, #1
	b	.L1492
.L1484:
	.loc 10 10406 32
	movs	r3, #1
	b	.L1492
.L1483:
	.loc 10 10410 16
	movs	r3, #0
.L1492:
	.loc 10 10412 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1494:
	.align	2
.L1493:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE496:
	.size	nrf52_errata_208, .-nrf52_errata_208
	.section	.text.nrf52_errata_209,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_209, %function
nrf52_errata_209:
.LFB497:
	.loc 10 10426 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10431 29
	ldr	r3, .L1506
	.loc 10 10431 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10432 29
	ldr	r3, .L1506+4
	.loc 10 10432 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10435 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1496
	.loc 10 10437 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1497
	adr	r2, .L1499
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1499:
	.word	.L1504+1
	.word	.L1503+1
	.word	.L1502+1
	.word	.L1501+1
	.word	.L1500+1
	.word	.L1498+1
	.p2align 1
.L1504:
	.loc 10 10440 32
	movs	r3, #1
	b	.L1505
.L1503:
	.loc 10 10442 32
	movs	r3, #1
	b	.L1505
.L1502:
	.loc 10 10444 32
	movs	r3, #1
	b	.L1505
.L1501:
	.loc 10 10446 32
	movs	r3, #1
	b	.L1505
.L1500:
	.loc 10 10448 32
	movs	r3, #1
	b	.L1505
.L1498:
	.loc 10 10450 32
	movs	r3, #1
	b	.L1505
.L1497:
	.loc 10 10452 32
	movs	r3, #1
	b	.L1505
.L1496:
	.loc 10 10456 16
	movs	r3, #0
.L1505:
	.loc 10 10458 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1507:
	.align	2
.L1506:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE497:
	.size	nrf52_errata_209, .-nrf52_errata_209
	.section	.text.nrf52_errata_210,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_210, %function
nrf52_errata_210:
.LFB498:
	.loc 10 10479 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10504 29
	ldr	r3, .L1519
	.loc 10 10504 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10505 29
	ldr	r3, .L1519+4
	.loc 10 10505 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10529 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1509
	.loc 10 10531 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1510
	adr	r2, .L1512
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1512:
	.word	.L1517+1
	.word	.L1516+1
	.word	.L1515+1
	.word	.L1514+1
	.word	.L1513+1
	.word	.L1511+1
	.p2align 1
.L1517:
	.loc 10 10534 32
	movs	r3, #0
	b	.L1518
.L1516:
	.loc 10 10536 32
	movs	r3, #0
	b	.L1518
.L1515:
	.loc 10 10538 32
	movs	r3, #1
	b	.L1518
.L1514:
	.loc 10 10540 32
	movs	r3, #1
	b	.L1518
.L1513:
	.loc 10 10542 32
	movs	r3, #1
	b	.L1518
.L1511:
	.loc 10 10544 32
	movs	r3, #1
	b	.L1518
.L1510:
	.loc 10 10546 32
	movs	r3, #1
	b	.L1518
.L1509:
	.loc 10 10622 16
	movs	r3, #0
.L1518:
	.loc 10 10624 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1520:
	.align	2
.L1519:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE498:
	.size	nrf52_errata_210, .-nrf52_errata_210
	.section	.text.nrf52_errata_211,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_211, %function
nrf52_errata_211:
.LFB499:
	.loc 10 10640 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10647 29
	ldr	r3, .L1532
	.loc 10 10647 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10648 29
	ldr	r3, .L1532+4
	.loc 10 10648 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10651 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1522
	.loc 10 10653 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1523
	adr	r2, .L1525
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1525:
	.word	.L1530+1
	.word	.L1529+1
	.word	.L1528+1
	.word	.L1527+1
	.word	.L1526+1
	.word	.L1524+1
	.p2align 1
.L1530:
	.loc 10 10656 32
	movs	r3, #0
	b	.L1531
.L1529:
	.loc 10 10658 32
	movs	r3, #1
	b	.L1531
.L1528:
	.loc 10 10660 32
	movs	r3, #1
	b	.L1531
.L1527:
	.loc 10 10662 32
	movs	r3, #1
	b	.L1531
.L1526:
	.loc 10 10664 32
	movs	r3, #1
	b	.L1531
.L1524:
	.loc 10 10666 32
	movs	r3, #1
	b	.L1531
.L1523:
	.loc 10 10668 32
	movs	r3, #1
	b	.L1531
.L1522:
	.loc 10 10706 16
	movs	r3, #0
.L1531:
	.loc 10 10708 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1533:
	.align	2
.L1532:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE499:
	.size	nrf52_errata_211, .-nrf52_errata_211
	.section	.text.nrf52_errata_212,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_212, %function
nrf52_errata_212:
.LFB500:
	.loc 10 10729 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10754 29
	ldr	r3, .L1545
	.loc 10 10754 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10755 29
	ldr	r3, .L1545+4
	.loc 10 10755 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10779 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1535
	.loc 10 10781 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1536
	adr	r2, .L1538
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1538:
	.word	.L1543+1
	.word	.L1542+1
	.word	.L1541+1
	.word	.L1540+1
	.word	.L1539+1
	.word	.L1537+1
	.p2align 1
.L1543:
	.loc 10 10784 32
	movs	r3, #1
	b	.L1544
.L1542:
	.loc 10 10786 32
	movs	r3, #0
	b	.L1544
.L1541:
	.loc 10 10788 32
	movs	r3, #1
	b	.L1544
.L1540:
	.loc 10 10790 32
	movs	r3, #1
	b	.L1544
.L1539:
	.loc 10 10792 32
	movs	r3, #1
	b	.L1544
.L1537:
	.loc 10 10794 32
	movs	r3, #1
	b	.L1544
.L1536:
	.loc 10 10796 32
	movs	r3, #1
	b	.L1544
.L1535:
	.loc 10 10872 16
	movs	r3, #0
.L1544:
	.loc 10 10874 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1546:
	.align	2
.L1545:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE500:
	.size	nrf52_errata_212, .-nrf52_errata_212
	.section	.text.nrf52_errata_213,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_213, %function
nrf52_errata_213:
.LFB501:
	.loc 10 10892 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 10914 29
	ldr	r3, .L1558
	.loc 10 10914 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 10915 29
	ldr	r3, .L1558+4
	.loc 10 10915 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 10939 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1548
	.loc 10 10941 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1549
	adr	r2, .L1551
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1551:
	.word	.L1556+1
	.word	.L1555+1
	.word	.L1554+1
	.word	.L1553+1
	.word	.L1552+1
	.word	.L1550+1
	.p2align 1
.L1556:
	.loc 10 10944 32
	movs	r3, #1
	b	.L1557
.L1555:
	.loc 10 10946 32
	movs	r3, #1
	b	.L1557
.L1554:
	.loc 10 10948 32
	movs	r3, #1
	b	.L1557
.L1553:
	.loc 10 10950 32
	movs	r3, #1
	b	.L1557
.L1552:
	.loc 10 10952 32
	movs	r3, #1
	b	.L1557
.L1550:
	.loc 10 10954 32
	movs	r3, #1
	b	.L1557
.L1549:
	.loc 10 10956 32
	movs	r3, #1
	b	.L1557
.L1548:
	.loc 10 10986 16
	movs	r3, #0
.L1557:
	.loc 10 10988 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1559:
	.align	2
.L1558:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE501:
	.size	nrf52_errata_213, .-nrf52_errata_213
	.section	.text.nrf52_errata_214,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_214, %function
nrf52_errata_214:
.LFB502:
	.loc 10 11002 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 11007 29
	ldr	r3, .L1571
	.loc 10 11007 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 11008 29
	ldr	r3, .L1571+4
	.loc 10 11008 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 11011 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1561
	.loc 10 11013 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1562
	adr	r2, .L1564
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1564:
	.word	.L1569+1
	.word	.L1568+1
	.word	.L1567+1
	.word	.L1566+1
	.word	.L1565+1
	.word	.L1563+1
	.p2align 1
.L1569:
	.loc 10 11016 32
	movs	r3, #1
	b	.L1570
.L1568:
	.loc 10 11018 32
	movs	r3, #1
	b	.L1570
.L1567:
	.loc 10 11020 32
	movs	r3, #1
	b	.L1570
.L1566:
	.loc 10 11022 32
	movs	r3, #1
	b	.L1570
.L1565:
	.loc 10 11024 32
	movs	r3, #1
	b	.L1570
.L1563:
	.loc 10 11026 32
	movs	r3, #1
	b	.L1570
.L1562:
	.loc 10 11028 32
	movs	r3, #1
	b	.L1570
.L1561:
	.loc 10 11032 16
	movs	r3, #0
.L1570:
	.loc 10 11034 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1572:
	.align	2
.L1571:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE502:
	.size	nrf52_errata_214, .-nrf52_errata_214
	.section	.text.nrf52_errata_215,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_215, %function
nrf52_errata_215:
.LFB503:
	.loc 10 11048 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 11053 29
	ldr	r3, .L1584
	.loc 10 11053 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 11054 29
	ldr	r3, .L1584+4
	.loc 10 11054 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 11057 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1574
	.loc 10 11059 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1575
	adr	r2, .L1577
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1577:
	.word	.L1582+1
	.word	.L1581+1
	.word	.L1580+1
	.word	.L1579+1
	.word	.L1578+1
	.word	.L1576+1
	.p2align 1
.L1582:
	.loc 10 11062 32
	movs	r3, #1
	b	.L1583
.L1581:
	.loc 10 11064 32
	movs	r3, #1
	b	.L1583
.L1580:
	.loc 10 11066 32
	movs	r3, #1
	b	.L1583
.L1579:
	.loc 10 11068 32
	movs	r3, #1
	b	.L1583
.L1578:
	.loc 10 11070 32
	movs	r3, #1
	b	.L1583
.L1576:
	.loc 10 11072 32
	movs	r3, #1
	b	.L1583
.L1575:
	.loc 10 11074 32
	movs	r3, #1
	b	.L1583
.L1574:
	.loc 10 11078 16
	movs	r3, #0
.L1583:
	.loc 10 11080 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1585:
	.align	2
.L1584:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE503:
	.size	nrf52_errata_215, .-nrf52_errata_215
	.section	.text.nrf52_errata_216,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_216, %function
nrf52_errata_216:
.LFB504:
	.loc 10 11094 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 11099 29
	ldr	r3, .L1597
	.loc 10 11099 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 11100 29
	ldr	r3, .L1597+4
	.loc 10 11100 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 11103 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1587
	.loc 10 11105 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1588
	adr	r2, .L1590
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1590:
	.word	.L1595+1
	.word	.L1594+1
	.word	.L1593+1
	.word	.L1592+1
	.word	.L1591+1
	.word	.L1589+1
	.p2align 1
.L1595:
	.loc 10 11108 32
	movs	r3, #1
	b	.L1596
.L1594:
	.loc 10 11110 32
	movs	r3, #1
	b	.L1596
.L1593:
	.loc 10 11112 32
	movs	r3, #1
	b	.L1596
.L1592:
	.loc 10 11114 32
	movs	r3, #1
	b	.L1596
.L1591:
	.loc 10 11116 32
	movs	r3, #1
	b	.L1596
.L1589:
	.loc 10 11118 32
	movs	r3, #1
	b	.L1596
.L1588:
	.loc 10 11120 32
	movs	r3, #1
	b	.L1596
.L1587:
	.loc 10 11124 16
	movs	r3, #0
.L1596:
	.loc 10 11126 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1598:
	.align	2
.L1597:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE504:
	.size	nrf52_errata_216, .-nrf52_errata_216
	.section	.text.nrf52_errata_217,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_217, %function
nrf52_errata_217:
.LFB505:
	.loc 10 11142 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 11190 16
	movs	r3, #0
	.loc 10 11192 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE505:
	.size	nrf52_errata_217, .-nrf52_errata_217
	.section	.text.nrf52_errata_218,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_218, %function
nrf52_errata_218:
.LFB506:
	.loc 10 11210 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 11232 29
	ldr	r3, .L1612
	.loc 10 11232 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 11233 29
	ldr	r3, .L1612+4
	.loc 10 11233 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 11257 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1602
	.loc 10 11259 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1603
	adr	r2, .L1605
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1605:
	.word	.L1610+1
	.word	.L1609+1
	.word	.L1608+1
	.word	.L1607+1
	.word	.L1606+1
	.word	.L1604+1
	.p2align 1
.L1610:
	.loc 10 11262 32
	movs	r3, #0
	b	.L1611
.L1609:
	.loc 10 11264 32
	movs	r3, #0
	b	.L1611
.L1608:
	.loc 10 11266 32
	movs	r3, #1
	b	.L1611
.L1607:
	.loc 10 11268 32
	movs	r3, #1
	b	.L1611
.L1606:
	.loc 10 11270 32
	movs	r3, #1
	b	.L1611
.L1604:
	.loc 10 11272 32
	movs	r3, #1
	b	.L1611
.L1603:
	.loc 10 11274 32
	movs	r3, #1
	b	.L1611
.L1602:
	.loc 10 11312 16
	movs	r3, #0
.L1611:
	.loc 10 11314 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1613:
	.align	2
.L1612:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE506:
	.size	nrf52_errata_218, .-nrf52_errata_218
	.section	.text.nrf52_errata_219,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_219, %function
nrf52_errata_219:
.LFB507:
	.loc 10 11335 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 11360 29
	ldr	r3, .L1625
	.loc 10 11360 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 11361 29
	ldr	r3, .L1625+4
	.loc 10 11361 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 11385 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1615
	.loc 10 11387 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1616
	adr	r2, .L1618
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1618:
	.word	.L1623+1
	.word	.L1622+1
	.word	.L1621+1
	.word	.L1620+1
	.word	.L1619+1
	.word	.L1617+1
	.p2align 1
.L1623:
	.loc 10 11390 32
	movs	r3, #1
	b	.L1624
.L1622:
	.loc 10 11392 32
	movs	r3, #1
	b	.L1624
.L1621:
	.loc 10 11394 32
	movs	r3, #1
	b	.L1624
.L1620:
	.loc 10 11396 32
	movs	r3, #1
	b	.L1624
.L1619:
	.loc 10 11398 32
	movs	r3, #1
	b	.L1624
.L1617:
	.loc 10 11400 32
	movs	r3, #1
	b	.L1624
.L1616:
	.loc 10 11402 32
	movs	r3, #1
	b	.L1624
.L1615:
	.loc 10 11478 16
	movs	r3, #0
.L1624:
	.loc 10 11480 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1626:
	.align	2
.L1625:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE507:
	.size	nrf52_errata_219, .-nrf52_errata_219
	.section	.text.nrf52_errata_220,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_220, %function
nrf52_errata_220:
.LFB508:
	.loc 10 11495 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 11536 16
	movs	r3, #0
	.loc 10 11538 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE508:
	.size	nrf52_errata_220, .-nrf52_errata_220
	.section	.text.nrf52_errata_223,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_223, %function
nrf52_errata_223:
.LFB509:
	.loc 10 11553 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 11596 16
	movs	r3, #0
	.loc 10 11598 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE509:
	.size	nrf52_errata_223, .-nrf52_errata_223
	.section	.text.nrf52_errata_225,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_225, %function
nrf52_errata_225:
.LFB510:
	.loc 10 11613 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 11656 16
	movs	r3, #0
	.loc 10 11658 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE510:
	.size	nrf52_errata_225, .-nrf52_errata_225
	.section	.text.nrf52_errata_228,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_228, %function
nrf52_errata_228:
.LFB511:
	.loc 10 11676 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 11685 29
	ldr	r3, .L1644
	.loc 10 11685 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 11686 29
	ldr	r3, .L1644+4
	.loc 10 11686 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 11689 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1634
	.loc 10 11691 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1635
	adr	r2, .L1637
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1637:
	.word	.L1642+1
	.word	.L1641+1
	.word	.L1640+1
	.word	.L1639+1
	.word	.L1638+1
	.word	.L1636+1
	.p2align 1
.L1642:
	.loc 10 11694 32
	movs	r3, #1
	b	.L1643
.L1641:
	.loc 10 11696 32
	movs	r3, #1
	b	.L1643
.L1640:
	.loc 10 11698 32
	movs	r3, #1
	b	.L1643
.L1639:
	.loc 10 11700 32
	movs	r3, #1
	b	.L1643
.L1638:
	.loc 10 11702 32
	movs	r3, #1
	b	.L1643
.L1636:
	.loc 10 11704 32
	movs	r3, #1
	b	.L1643
.L1635:
	.loc 10 11706 32
	movs	r3, #1
	b	.L1643
.L1634:
	.loc 10 11770 16
	movs	r3, #0
.L1643:
	.loc 10 11772 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1645:
	.align	2
.L1644:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE511:
	.size	nrf52_errata_228, .-nrf52_errata_228
	.section	.text.nrf52_errata_230,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_230, %function
nrf52_errata_230:
.LFB512:
	.loc 10 11786 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 11812 16
	movs	r3, #0
	.loc 10 11814 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE512:
	.size	nrf52_errata_230, .-nrf52_errata_230
	.section	.text.nrf52_errata_231,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_231, %function
nrf52_errata_231:
.LFB513:
	.loc 10 11828 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 11854 16
	movs	r3, #0
	.loc 10 11856 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE513:
	.size	nrf52_errata_231, .-nrf52_errata_231
	.section	.text.nrf52_errata_232,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_232, %function
nrf52_errata_232:
.LFB514:
	.loc 10 11871 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 11906 16
	movs	r3, #0
	.loc 10 11908 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE514:
	.size	nrf52_errata_232, .-nrf52_errata_232
	.section	.text.nrf52_errata_233,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_233, %function
nrf52_errata_233:
.LFB515:
	.loc 10 11924 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 11931 29
	ldr	r3, .L1663
	.loc 10 11931 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 11932 29
	ldr	r3, .L1663+4
	.loc 10 11932 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 11935 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1653
	.loc 10 11937 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1654
	adr	r2, .L1656
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1656:
	.word	.L1661+1
	.word	.L1660+1
	.word	.L1659+1
	.word	.L1658+1
	.word	.L1657+1
	.word	.L1655+1
	.p2align 1
.L1661:
	.loc 10 11940 32
	movs	r3, #1
	b	.L1662
.L1660:
	.loc 10 11942 32
	movs	r3, #1
	b	.L1662
.L1659:
	.loc 10 11944 32
	movs	r3, #1
	b	.L1662
.L1658:
	.loc 10 11946 32
	movs	r3, #1
	b	.L1662
.L1657:
	.loc 10 11948 32
	movs	r3, #1
	b	.L1662
.L1655:
	.loc 10 11950 32
	movs	r3, #1
	b	.L1662
.L1654:
	.loc 10 11952 32
	movs	r3, #1
	b	.L1662
.L1653:
	.loc 10 11990 16
	movs	r3, #0
.L1662:
	.loc 10 11992 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1664:
	.align	2
.L1663:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE515:
	.size	nrf52_errata_233, .-nrf52_errata_233
	.section	.text.nrf52_errata_236,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_236, %function
nrf52_errata_236:
.LFB516:
	.loc 10 12010 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12019 29
	ldr	r3, .L1676
	.loc 10 12019 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12020 29
	ldr	r3, .L1676+4
	.loc 10 12020 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12023 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1666
	.loc 10 12025 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1667
	adr	r2, .L1669
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1669:
	.word	.L1674+1
	.word	.L1673+1
	.word	.L1672+1
	.word	.L1671+1
	.word	.L1670+1
	.word	.L1668+1
	.p2align 1
.L1674:
	.loc 10 12028 32
	movs	r3, #1
	b	.L1675
.L1673:
	.loc 10 12030 32
	movs	r3, #1
	b	.L1675
.L1672:
	.loc 10 12032 32
	movs	r3, #1
	b	.L1675
.L1671:
	.loc 10 12034 32
	movs	r3, #1
	b	.L1675
.L1670:
	.loc 10 12036 32
	movs	r3, #1
	b	.L1675
.L1668:
	.loc 10 12038 32
	movs	r3, #1
	b	.L1675
.L1667:
	.loc 10 12040 32
	movs	r3, #1
	b	.L1675
.L1666:
	.loc 10 12104 16
	movs	r3, #0
.L1675:
	.loc 10 12106 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1677:
	.align	2
.L1676:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE516:
	.size	nrf52_errata_236, .-nrf52_errata_236
	.section	.text.nrf52_errata_237,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_237, %function
nrf52_errata_237:
.LFB517:
	.loc 10 12124 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12133 29
	ldr	r3, .L1689
	.loc 10 12133 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12134 29
	ldr	r3, .L1689+4
	.loc 10 12134 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12137 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1679
	.loc 10 12139 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1680
	adr	r2, .L1682
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1682:
	.word	.L1687+1
	.word	.L1686+1
	.word	.L1685+1
	.word	.L1684+1
	.word	.L1683+1
	.word	.L1681+1
	.p2align 1
.L1687:
	.loc 10 12142 32
	movs	r3, #1
	b	.L1688
.L1686:
	.loc 10 12144 32
	movs	r3, #1
	b	.L1688
.L1685:
	.loc 10 12146 32
	movs	r3, #1
	b	.L1688
.L1684:
	.loc 10 12148 32
	movs	r3, #1
	b	.L1688
.L1683:
	.loc 10 12150 32
	movs	r3, #1
	b	.L1688
.L1681:
	.loc 10 12152 32
	movs	r3, #1
	b	.L1688
.L1680:
	.loc 10 12154 32
	movs	r3, #1
	b	.L1688
.L1679:
	.loc 10 12218 16
	movs	r3, #0
.L1688:
	.loc 10 12220 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1690:
	.align	2
.L1689:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE517:
	.size	nrf52_errata_237, .-nrf52_errata_237
	.section	.text.nrf52_errata_242,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_242, %function
nrf52_errata_242:
.LFB518:
	.loc 10 12237 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12245 29
	ldr	r3, .L1702
	.loc 10 12245 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12246 29
	ldr	r3, .L1702+4
	.loc 10 12246 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12249 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1692
	.loc 10 12251 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1693
	adr	r2, .L1695
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1695:
	.word	.L1700+1
	.word	.L1699+1
	.word	.L1698+1
	.word	.L1697+1
	.word	.L1696+1
	.word	.L1694+1
	.p2align 1
.L1700:
	.loc 10 12254 32
	movs	r3, #1
	b	.L1701
.L1699:
	.loc 10 12256 32
	movs	r3, #1
	b	.L1701
.L1698:
	.loc 10 12258 32
	movs	r3, #1
	b	.L1701
.L1697:
	.loc 10 12260 32
	movs	r3, #1
	b	.L1701
.L1696:
	.loc 10 12262 32
	movs	r3, #1
	b	.L1701
.L1694:
	.loc 10 12264 32
	movs	r3, #1
	b	.L1701
.L1693:
	.loc 10 12266 32
	movs	r3, #1
	b	.L1701
.L1692:
	.loc 10 12308 16
	movs	r3, #0
.L1701:
	.loc 10 12310 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1703:
	.align	2
.L1702:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE518:
	.size	nrf52_errata_242, .-nrf52_errata_242
	.section	.text.nrf52_errata_243,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_243, %function
nrf52_errata_243:
.LFB519:
	.loc 10 12326 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12333 29
	ldr	r3, .L1715
	.loc 10 12333 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12334 29
	ldr	r3, .L1715+4
	.loc 10 12334 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12337 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1705
	.loc 10 12339 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1706
	adr	r2, .L1708
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1708:
	.word	.L1713+1
	.word	.L1712+1
	.word	.L1711+1
	.word	.L1710+1
	.word	.L1709+1
	.word	.L1707+1
	.p2align 1
.L1713:
	.loc 10 12342 32
	movs	r3, #1
	b	.L1714
.L1712:
	.loc 10 12344 32
	movs	r3, #1
	b	.L1714
.L1711:
	.loc 10 12346 32
	movs	r3, #1
	b	.L1714
.L1710:
	.loc 10 12348 32
	movs	r3, #1
	b	.L1714
.L1709:
	.loc 10 12350 32
	movs	r3, #1
	b	.L1714
.L1707:
	.loc 10 12352 32
	movs	r3, #1
	b	.L1714
.L1706:
	.loc 10 12354 32
	movs	r3, #1
	b	.L1714
.L1705:
	.loc 10 12392 16
	movs	r3, #0
.L1714:
	.loc 10 12394 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1716:
	.align	2
.L1715:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE519:
	.size	nrf52_errata_243, .-nrf52_errata_243
	.section	.text.nrf52_errata_244,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_244, %function
nrf52_errata_244:
.LFB520:
	.loc 10 12408 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12413 29
	ldr	r3, .L1728
	.loc 10 12413 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12414 29
	ldr	r3, .L1728+4
	.loc 10 12414 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12417 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1718
	.loc 10 12419 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1719
	adr	r2, .L1721
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1721:
	.word	.L1726+1
	.word	.L1725+1
	.word	.L1724+1
	.word	.L1723+1
	.word	.L1722+1
	.word	.L1720+1
	.p2align 1
.L1726:
	.loc 10 12422 32
	movs	r3, #1
	b	.L1727
.L1725:
	.loc 10 12424 32
	movs	r3, #1
	b	.L1727
.L1724:
	.loc 10 12426 32
	movs	r3, #1
	b	.L1727
.L1723:
	.loc 10 12428 32
	movs	r3, #1
	b	.L1727
.L1722:
	.loc 10 12430 32
	movs	r3, #1
	b	.L1727
.L1720:
	.loc 10 12432 32
	movs	r3, #1
	b	.L1727
.L1719:
	.loc 10 12434 32
	movs	r3, #1
	b	.L1727
.L1718:
	.loc 10 12438 16
	movs	r3, #0
.L1727:
	.loc 10 12440 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1729:
	.align	2
.L1728:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE520:
	.size	nrf52_errata_244, .-nrf52_errata_244
	.section	.text.nrf52_errata_245,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_245, %function
nrf52_errata_245:
.LFB521:
	.loc 10 12461 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12486 29
	ldr	r3, .L1741
	.loc 10 12486 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12487 29
	ldr	r3, .L1741+4
	.loc 10 12487 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12511 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1731
	.loc 10 12513 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1732
	adr	r2, .L1734
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1734:
	.word	.L1739+1
	.word	.L1738+1
	.word	.L1737+1
	.word	.L1736+1
	.word	.L1735+1
	.word	.L1733+1
	.p2align 1
.L1739:
	.loc 10 12516 32
	movs	r3, #1
	b	.L1740
.L1738:
	.loc 10 12518 32
	movs	r3, #1
	b	.L1740
.L1737:
	.loc 10 12520 32
	movs	r3, #1
	b	.L1740
.L1736:
	.loc 10 12522 32
	movs	r3, #1
	b	.L1740
.L1735:
	.loc 10 12524 32
	movs	r3, #1
	b	.L1740
.L1733:
	.loc 10 12526 32
	movs	r3, #1
	b	.L1740
.L1732:
	.loc 10 12528 32
	movs	r3, #1
	b	.L1740
.L1731:
	.loc 10 12604 16
	movs	r3, #0
.L1740:
	.loc 10 12606 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1742:
	.align	2
.L1741:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE521:
	.size	nrf52_errata_245, .-nrf52_errata_245
	.section	.text.nrf52_errata_246,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_246, %function
nrf52_errata_246:
.LFB522:
	.loc 10 12625 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12635 29
	ldr	r3, .L1754
	.loc 10 12635 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12636 29
	ldr	r3, .L1754+4
	.loc 10 12636 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12639 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1744
	.loc 10 12641 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1745
	adr	r2, .L1747
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1747:
	.word	.L1752+1
	.word	.L1751+1
	.word	.L1750+1
	.word	.L1749+1
	.word	.L1748+1
	.word	.L1746+1
	.p2align 1
.L1752:
	.loc 10 12644 32
	movs	r3, #1
	b	.L1753
.L1751:
	.loc 10 12646 32
	movs	r3, #1
	b	.L1753
.L1750:
	.loc 10 12648 32
	movs	r3, #1
	b	.L1753
.L1749:
	.loc 10 12650 32
	movs	r3, #1
	b	.L1753
.L1748:
	.loc 10 12652 32
	movs	r3, #1
	b	.L1753
.L1746:
	.loc 10 12654 32
	movs	r3, #1
	b	.L1753
.L1745:
	.loc 10 12656 32
	movs	r3, #1
	b	.L1753
.L1744:
	.loc 10 12732 16
	movs	r3, #0
.L1753:
	.loc 10 12734 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1755:
	.align	2
.L1754:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE522:
	.size	nrf52_errata_246, .-nrf52_errata_246
	.section	.text.nrf52_errata_248,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_248, %function
nrf52_errata_248:
.LFB523:
	.loc 10 12752 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12761 29
	ldr	r3, .L1767
	.loc 10 12761 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12762 29
	ldr	r3, .L1767+4
	.loc 10 12762 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12765 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1757
	.loc 10 12767 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1758
	adr	r2, .L1760
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1760:
	.word	.L1765+1
	.word	.L1764+1
	.word	.L1763+1
	.word	.L1762+1
	.word	.L1761+1
	.word	.L1759+1
	.p2align 1
.L1765:
	.loc 10 12770 32
	movs	r3, #1
	b	.L1766
.L1764:
	.loc 10 12772 32
	movs	r3, #1
	b	.L1766
.L1763:
	.loc 10 12774 32
	movs	r3, #1
	b	.L1766
.L1762:
	.loc 10 12776 32
	movs	r3, #1
	b	.L1766
.L1761:
	.loc 10 12778 32
	movs	r3, #1
	b	.L1766
.L1759:
	.loc 10 12780 32
	movs	r3, #1
	b	.L1766
.L1758:
	.loc 10 12782 32
	movs	r3, #1
	b	.L1766
.L1757:
	.loc 10 12846 16
	movs	r3, #0
.L1766:
	.loc 10 12848 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1768:
	.align	2
.L1767:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE523:
	.size	nrf52_errata_248, .-nrf52_errata_248
	.section	.text.nrf52_errata_249,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_249, %function
nrf52_errata_249:
.LFB524:
	.loc 10 12866 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 12875 29
	ldr	r3, .L1780
	.loc 10 12875 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 12876 29
	ldr	r3, .L1780+4
	.loc 10 12876 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 12900 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1770
	.loc 10 12902 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1771
	adr	r2, .L1773
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1773:
	.word	.L1778+1
	.word	.L1777+1
	.word	.L1776+1
	.word	.L1775+1
	.word	.L1774+1
	.word	.L1772+1
	.p2align 1
.L1778:
	.loc 10 12905 32
	movs	r3, #0
	b	.L1779
.L1777:
	.loc 10 12907 32
	movs	r3, #0
	b	.L1779
.L1776:
	.loc 10 12909 32
	movs	r3, #0
	b	.L1779
.L1775:
	.loc 10 12911 32
	movs	r3, #0
	b	.L1779
.L1774:
	.loc 10 12913 32
	movs	r3, #1
	b	.L1779
.L1772:
	.loc 10 12915 32
	movs	r3, #1
	b	.L1779
.L1771:
	.loc 10 12917 32
	movs	r3, #1
	b	.L1779
.L1770:
	.loc 10 12955 16
	movs	r3, #0
.L1779:
	.loc 10 12957 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1781:
	.align	2
.L1780:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE524:
	.size	nrf52_errata_249, .-nrf52_errata_249
	.section	.text.nrf52_errata_250,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_250, %function
nrf52_errata_250:
.LFB525:
	.loc 10 12972 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 13015 16
	movs	r3, #0
	.loc 10 13017 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE525:
	.size	nrf52_errata_250, .-nrf52_errata_250
	.section	.text.nrf52_errata_254,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_254, %function
nrf52_errata_254:
.LFB526:
	.loc 10 13027 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 10 13031 16
	movs	r3, #0
	.loc 10 13033 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE526:
	.size	nrf52_errata_254, .-nrf52_errata_254
	.section	.text.nrf53_errata_1,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_1, %function
nrf53_errata_1:
.LFB527:
	.file 11 "Files/nrfx/mdk/nrf53_erratas.h"
	.loc 11 159 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 161 16
	movs	r3, #0
	.loc 11 191 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE527:
	.size	nrf53_errata_1, .-nrf53_errata_1
	.section	.text.nrf53_errata_2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_2, %function
nrf53_errata_2:
.LFB528:
	.loc 11 209 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 211 16
	movs	r3, #0
	.loc 11 241 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE528:
	.size	nrf53_errata_2, .-nrf53_errata_2
	.section	.text.nrf53_errata_3,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_3, %function
nrf53_errata_3:
.LFB529:
	.loc 11 259 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 261 16
	movs	r3, #0
	.loc 11 291 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE529:
	.size	nrf53_errata_3, .-nrf53_errata_3
	.section	.text.nrf53_errata_4,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_4, %function
nrf53_errata_4:
.LFB530:
	.loc 11 309 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 311 16
	movs	r3, #0
	.loc 11 341 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE530:
	.size	nrf53_errata_4, .-nrf53_errata_4
	.section	.text.nrf53_errata_5,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_5, %function
nrf53_errata_5:
.LFB531:
	.loc 11 359 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 361 16
	movs	r3, #0
	.loc 11 391 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE531:
	.size	nrf53_errata_5, .-nrf53_errata_5
	.section	.text.nrf53_errata_6,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_6, %function
nrf53_errata_6:
.LFB532:
	.loc 11 409 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 411 16
	movs	r3, #0
	.loc 11 441 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE532:
	.size	nrf53_errata_6, .-nrf53_errata_6
	.section	.text.nrf53_errata_7,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_7, %function
nrf53_errata_7:
.LFB533:
	.loc 11 459 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 461 16
	movs	r3, #0
	.loc 11 491 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE533:
	.size	nrf53_errata_7, .-nrf53_errata_7
	.section	.text.nrf53_errata_8,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_8, %function
nrf53_errata_8:
.LFB534:
	.loc 11 509 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 511 16
	movs	r3, #0
	.loc 11 541 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE534:
	.size	nrf53_errata_8, .-nrf53_errata_8
	.section	.text.nrf53_errata_9,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_9, %function
nrf53_errata_9:
.LFB535:
	.loc 11 559 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 561 16
	movs	r3, #0
	.loc 11 591 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE535:
	.size	nrf53_errata_9, .-nrf53_errata_9
	.section	.text.nrf53_errata_10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_10, %function
nrf53_errata_10:
.LFB536:
	.loc 11 609 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 611 16
	movs	r3, #0
	.loc 11 641 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE536:
	.size	nrf53_errata_10, .-nrf53_errata_10
	.section	.text.nrf53_errata_11,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_11, %function
nrf53_errata_11:
.LFB537:
	.loc 11 659 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 661 16
	movs	r3, #0
	.loc 11 691 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE537:
	.size	nrf53_errata_11, .-nrf53_errata_11
	.section	.text.nrf53_errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_12, %function
nrf53_errata_12:
.LFB538:
	.loc 11 709 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 711 16
	movs	r3, #0
	.loc 11 741 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE538:
	.size	nrf53_errata_12, .-nrf53_errata_12
	.section	.text.nrf53_errata_13,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_13, %function
nrf53_errata_13:
.LFB539:
	.loc 11 760 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 762 16
	movs	r3, #0
	.loc 11 796 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE539:
	.size	nrf53_errata_13, .-nrf53_errata_13
	.section	.text.nrf53_errata_14,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_14, %function
nrf53_errata_14:
.LFB540:
	.loc 11 814 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 816 16
	movs	r3, #0
	.loc 11 846 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE540:
	.size	nrf53_errata_14, .-nrf53_errata_14
	.section	.text.nrf53_errata_15,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_15, %function
nrf53_errata_15:
.LFB541:
	.loc 11 865 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 867 16
	movs	r3, #0
	.loc 11 901 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE541:
	.size	nrf53_errata_15, .-nrf53_errata_15
	.section	.text.nrf53_errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf53_errata_16, %function
nrf53_errata_16:
.LFB542:
	.loc 11 919 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 921 16
	movs	r3, #0
	.loc 11 951 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE542:
	.size	nrf53_errata_16, .-nrf53_errata_