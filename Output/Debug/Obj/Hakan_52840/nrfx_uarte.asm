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
	.file	"nrfx_uarte.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Hakan_SES\\nRF5_SDK_17.1.0_ddde560\\modules\\nrfx\\drivers\\src\\nrfx_uarte.c"
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
	.section	.text.nrfx_is_in_ram,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_is_in_ram, %function
nrfx_is_in_ram:
.LFB145:
	.file 4 "Files/nrfx/drivers/nrfx_common.h"
	.loc 4 308 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 4 309 15
	ldr	r3, [sp, #4]
	.loc 4 309 35
	and	r3, r3, #-536870912
	.loc 4 309 50
	cmp	r3, #536870912
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	.loc 4 310 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE145:
	.size	nrfx_is_in_ram, .-nrfx_is_in_ram
	.section	.text.nrfx_get_irq_number,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_get_irq_number, %function
nrfx_get_irq_number:
.LFB147:
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
	bls	.L23
	.loc 6 107 5 is_stmt 0 discriminator 2
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L24
.L23:
	.loc 6 107 5 discriminator 4
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L25
	.loc 6 107 5 discriminator 5
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L24
.L25:
	.loc 6 107 5 discriminator 7
	ldr	r1, .L26
	movs	r0, #107
	bl	assert_nrf_callback
.L24:
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
.L27:
	.align	2
.L26:
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
	.section	.text.nrf_uarte_event_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_event_clear, %function
nrf_uarte_event_clear:
.LFB239:
	.file 8 "Files/nrfx/hal/nrf_uarte.h"
	.loc 8 449 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 8 450 48
	ldrh	r3, [sp, #2]
	.loc 8 450 7
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 450 66
	movs	r2, #0
	str	r2, [r3]
	.loc 8 452 74
	ldrh	r3, [sp, #2]
	.loc 8 452 33
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 452 31
	ldr	r3, [r3]
	.loc 8 452 23
	str	r3, [sp, #12]
	.loc 8 453 5
	ldr	r3, [sp, #12]
	.loc 8 455 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE239:
	.size	nrf_uarte_event_clear, .-nrf_uarte_event_clear
	.section	.text.nrf_uarte_event_check,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_event_check, %function
nrf_uarte_event_check:
.LFB240:
	.loc 8 458 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 8 459 60
	ldrh	r3, [sp, #2]
	.loc 8 459 19
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 459 18
	ldr	r3, [r3]
	.loc 8 459 12
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 8 460 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE240:
	.size	nrf_uarte_event_check, .-nrf_uarte_event_check
	.section	.text.nrf_uarte_shorts_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_shorts_enable, %function
nrf_uarte_shorts_enable:
.LFB242:
	.loc 8 469 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 470 10
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #512]
	.loc 8 470 19
	ldr	r3, [sp]
	orrs	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #512]
	.loc 8 471 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE242:
	.size	nrf_uarte_shorts_enable, .-nrf_uarte_shorts_enable
	.section	.text.nrf_uarte_shorts_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_shorts_disable, %function
nrf_uarte_shorts_disable:
.LFB243:
	.loc 8 474 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 475 10
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #512]
	.loc 8 475 22
	ldr	r3, [sp]
	mvns	r3, r3
	.loc 8 475 19
	ands	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #512]
	.loc 8 476 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE243:
	.size	nrf_uarte_shorts_disable, .-nrf_uarte_shorts_disable
	.section	.text.nrf_uarte_int_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_int_enable, %function
nrf_uarte_int_enable:
.LFB244:
	.loc 8 479 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 480 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #772]
	.loc 8 481 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE244:
	.size	nrf_uarte_int_enable, .-nrf_uarte_int_enable
	.section	.text.nrf_uarte_int_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_int_disable, %function
nrf_uarte_int_disable:
.LFB246:
	.loc 8 489 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 490 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #776]
	.loc 8 491 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE246:
	.size	nrf_uarte_int_disable, .-nrf_uarte_int_disable
	.section	.text.nrf_uarte_errorsrc_get_and_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_errorsrc_get_and_clear, %function
nrf_uarte_errorsrc_get_and_clear:
.LFB247:
	.loc 8 524 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 8 525 14
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1152]
	str	r3, [sp, #12]
	.loc 8 526 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #12]
	str	r2, [r3, #1152]
	.loc 8 527 12
	ldr	r3, [sp, #12]
	.loc 8 528 1
	mov	r0, r3
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE247:
	.size	nrf_uarte_errorsrc_get_and_clear, .-nrf_uarte_errorsrc_get_and_clear
	.section	.text.nrf_uarte_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_enable, %function
nrf_uarte_enable:
.LFB248:
	.loc 8 531 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 532 19
	ldr	r3, [sp, #4]
	movs	r2, #8
	str	r2, [r3, #1280]
	.loc 8 533 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE248:
	.size	nrf_uarte_enable, .-nrf_uarte_enable
	.section	.text.nrf_uarte_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_disable, %function
nrf_uarte_disable:
.LFB249:
	.loc 8 536 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 537 19
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #1280]
	.loc 8 538 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE249:
	.size	nrf_uarte_disable, .-nrf_uarte_disable
	.section	.text.nrf_uarte_txrx_pins_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_txrx_pins_set, %function
nrf_uarte_txrx_pins_set:
.LFB250:
	.loc 8 541 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 8 542 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #1292]
	.loc 8 543 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #1300]
	.loc 8 544 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE250:
	.size	nrf_uarte_txrx_pins_set, .-nrf_uarte_txrx_pins_set
	.section	.text.nrf_uarte_txrx_pins_disconnect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_txrx_pins_disconnect, %function
nrf_uarte_txrx_pins_disconnect:
.LFB251:
	.loc 8 547 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 8 548 5
	mov	r2, #-1
	mov	r1, #-1
	ldr	r0, [sp, #4]
	bl	nrf_uarte_txrx_pins_set
	.loc 8 549 1
	nop
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE251:
	.size	nrf_uarte_txrx_pins_disconnect, .-nrf_uarte_txrx_pins_disconnect
	.section	.text.nrf_uarte_tx_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_tx_pin_get, %function
nrf_uarte_tx_pin_get:
.LFB252:
	.loc 8 552 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 553 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1292]
	.loc 8 554 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE252:
	.size	nrf_uarte_tx_pin_get, .-nrf_uarte_tx_pin_get
	.section	.text.nrf_uarte_rx_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_rx_pin_get, %function
nrf_uarte_rx_pin_get:
.LFB253:
	.loc 8 557 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 558 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1300]
	.loc 8 559 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE253:
	.size	nrf_uarte_rx_pin_get, .-nrf_uarte_rx_pin_get
	.section	.text.nrf_uarte_rts_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_rts_pin_get, %function
nrf_uarte_rts_pin_get:
.LFB254:
	.loc 8 562 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 563 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1288]
	.loc 8 564 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE254:
	.size	nrf_uarte_rts_pin_get, .-nrf_uarte_rts_pin_get
	.section	.text.nrf_uarte_cts_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_cts_pin_get, %function
nrf_uarte_cts_pin_get:
.LFB255:
	.loc 8 567 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 568 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1296]
	.loc 8 569 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE255:
	.size	nrf_uarte_cts_pin_get, .-nrf_uarte_cts_pin_get
	.section	.text.nrf_uarte_hwfc_pins_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_hwfc_pins_set, %function
nrf_uarte_hwfc_pins_set:
.LFB256:
	.loc 8 572 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 8 573 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #1288]
	.loc 8 574 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #1296]
	.loc 8 575 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE256:
	.size	nrf_uarte_hwfc_pins_set, .-nrf_uarte_hwfc_pins_set
	.section	.text.nrf_uarte_hwfc_pins_disconnect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_hwfc_pins_disconnect, %function
nrf_uarte_hwfc_pins_disconnect:
.LFB257:
	.loc 8 578 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 8 579 5
	mov	r2, #-1
	mov	r1, #-1
	ldr	r0, [sp, #4]
	bl	nrf_uarte_hwfc_pins_set
	.loc 8 580 1
	nop
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE257:
	.size	nrf_uarte_hwfc_pins_disconnect, .-nrf_uarte_hwfc_pins_disconnect
	.section	.text.nrf_uarte_task_trigger,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_task_trigger, %function
nrf_uarte_task_trigger:
.LFB258:
	.loc 8 583 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 8 584 48
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	.loc 8 584 7
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 8 584 65
	movs	r2, #1
	str	r2, [r3]
	.loc 8 585 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE258:
	.size	nrf_uarte_task_trigger, .-nrf_uarte_task_trigger
	.section	.text.nrf_uarte_configure,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_configure, %function
nrf_uarte_configure:
.LFB260:
	.loc 8 595 1
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
	.loc 8 596 38
	ldrb	r2, [sp, #3]
	ldrb	r3, [sp, #2]
	orrs	r3, r3, r2
	uxtb	r3, r3
	mov	r2, r3
	.loc 8 596 19
	ldr	r3, [sp, #4]
	str	r2, [r3, #1388]
	.loc 8 597 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE260:
	.size	nrf_uarte_configure, .-nrf_uarte_configure
	.section	.text.nrf_uarte_baudrate_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_baudrate_set, %function
nrf_uarte_baudrate_set:
.LFB261:
	.loc 8 600 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 8 601 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #1316]
	.loc 8 602 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE261:
	.size	nrf_uarte_baudrate_set, .-nrf_uarte_baudrate_set
	.section	.text.nrf_uarte_tx_buffer_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_tx_buffer_set, %function
nrf_uarte_tx_buffer_set:
.LFB262:
	.loc 8 607 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 8 608 25
	ldr	r2, [sp, #8]
	.loc 8 608 23
	ldr	r3, [sp, #12]
	str	r2, [r3, #1348]
	.loc 8 609 23
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #1352]
	.loc 8 610 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE262:
	.size	nrf_uarte_tx_buffer_set, .-nrf_uarte_tx_buffer_set
	.section	.text.nrf_uarte_tx_amount_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_tx_amount_get, %function
nrf_uarte_tx_amount_get:
.LFB263:
	.loc 8 613 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 614 22
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1356]
	.loc 8 615 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE263:
	.size	nrf_uarte_tx_amount_get, .-nrf_uarte_tx_amount_get
	.section	.text.nrf_uarte_rx_buffer_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_rx_buffer_set, %function
nrf_uarte_rx_buffer_set:
.LFB264:
	.loc 8 620 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 8 621 25
	ldr	r2, [sp, #8]
	.loc 8 621 23
	ldr	r3, [sp, #12]
	str	r2, [r3, #1332]
	.loc 8 622 23
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #1336]
	.loc 8 623 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE264:
	.size	nrf_uarte_rx_buffer_set, .-nrf_uarte_rx_buffer_set
	.section	.text.nrf_uarte_rx_amount_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uarte_rx_amount_get, %function
nrf_uarte_rx_amount_get:
.LFB265:
	.loc 8 626 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 8 627 22
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1340]
	.loc 8 628 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE265:
	.size	nrf_uarte_rx_amount_get, .-nrf_uarte_rx_amount_get
	.section	.text.nrf51_errata_1,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_1, %function
nrf51_errata_1:
.LFB268:
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
.LFE268:
	.size	nrf51_errata_1, .-nrf51_errata_1
	.section	.text.nrf51_errata_2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_2, %function
nrf51_errata_2:
.LFB269:
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
.LFE269:
	.size	nrf51_errata_2, .-nrf51_errata_2
	.section	.text.nrf51_errata_3,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_3, %function
nrf51_errata_3:
.LFB270:
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
.LFE270:
	.size	nrf51_errata_3, .-nrf51_errata_3
	.section	.text.nrf51_errata_4,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_4, %function
nrf51_errata_4:
.LFB271:
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
.LFE271:
	.size	nrf51_errata_4, .-nrf51_errata_4
	.section	.text.nrf51_errata_5,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_5, %function
nrf51_errata_5:
.LFB272:
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
.LFE272:
	.size	nrf51_errata_5, .-nrf51_errata_5
	.section	.text.nrf51_errata_6,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_6, %function
nrf51_errata_6:
.LFB273:
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
.LFE273:
	.size	nrf51_errata_6, .-nrf51_errata_6
	.section	.text.nrf51_errata_7,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_7, %function
nrf51_errata_7:
.LFB274:
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
.LFE274:
	.size	nrf51_errata_7, .-nrf51_errata_7
	.section	.text.nrf51_errata_8,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_8, %function
nrf51_errata_8:
.LFB275:
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
.LFE275:
	.size	nrf51_errata_8, .-nrf51_errata_8
	.section	.text.nrf51_errata_9,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_9, %function
nrf51_errata_9:
.LFB276:
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
.LFE276:
	.size	nrf51_errata_9, .-nrf51_errata_9
	.section	.text.nrf51_errata_10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_10, %function
nrf51_errata_10:
.LFB277:
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
.LFE277:
	.size	nrf51_errata_10, .-nrf51_errata_10
	.section	.text.nrf51_errata_11,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_11, %function
nrf51_errata_11:
.LFB278:
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
.LFE278:
	.size	nrf51_errata_11, .-nrf51_errata_11
	.section	.text.nrf51_errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_12, %function
nrf51_errata_12:
.LFB279:
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
.LFE279:
	.size	nrf51_errata_12, .-nrf51_errata_12
	.section	.text.nrf51_errata_13,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_13, %function
nrf51_errata_13:
.LFB280:
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
.LFE280:
	.size	nrf51_errata_13, .-nrf51_errata_13
	.section	.text.nrf51_errata_14,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_14, %function
nrf51_errata_14:
.LFB281:
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
.LFE281:
	.size	nrf51_errata_14, .-nrf51_errata_14
	.section	.text.nrf51_errata_15,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_15, %function
nrf51_errata_15:
.LFB282:
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
.LFE282:
	.size	nrf51_errata_15, .-nrf51_errata_15
	.section	.text.nrf51_errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_16, %function
nrf51_errata_16:
.LFB283:
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
.LFE283:
	.size	nrf51_errata_16, .-nrf51_errata_16
	.section	.text.nrf51_errata_17,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_17, %function
nrf51_errata_17:
.LFB284:
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
.LFE284:
	.size	nrf51_errata_17, .-nrf51_errata_17
	.section	.text.nrf51_errata_18,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_18, %function
nrf51_errata_18:
.LFB285:
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
.LFE285:
	.size	nrf51_errata_18, .-nrf51_errata_18
	.section	.text.nrf51_errata_19,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_19, %function
nrf51_errata_19:
.LFB286:
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
.LFE286:
	.size	nrf51_errata_19, .-nrf51_errata_19
	.section	.text.nrf51_errata_20,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_20, %function
nrf51_errata_20:
.LFB287:
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
.LFE287:
	.size	nrf51_errata_20, .-nrf51_errata_20
	.section	.text.nrf51_errata_21,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_21, %function
nrf51_errata_21:
.LFB288:
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
.LFE288:
	.size	nrf51_errata_21, .-nrf51_errata_21
	.section	.text.nrf51_errata_22,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_22, %function
nrf51_errata_22:
.LFB289:
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
.LFE289:
	.size	nrf51_errata_22, .-nrf51_errata_22
	.section	.text.nrf51_errata_23,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_23, %function
nrf51_errata_23:
.LFB290:
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
.LFE290:
	.size	nrf51_errata_23, .-nrf51_errata_23
	.section	.text.nrf51_errata_24,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_24, %function
nrf51_errata_24:
.LFB291:
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
.LFE291:
	.size	nrf51_errata_24, .-nrf51_errata_24
	.section	.text.nrf51_errata_25,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_25, %function
nrf51_errata_25:
.LFB292:
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
.LFE292:
	.size	nrf51_errata_25, .-nrf51_errata_25
	.section	.text.nrf51_errata_26,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_26, %function
nrf51_errata_26:
.LFB293:
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
.LFE293:
	.size	nrf51_errata_26, .-nrf51_errata_26
	.section	.text.nrf51_errata_27,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_27, %function
nrf51_errata_27:
.LFB294:
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
.LFE294:
	.size	nrf51_errata_27, .-nrf51_errata_27
	.section	.text.nrf51_errata_28,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_28, %function
nrf51_errata_28:
.LFB295:
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
.LFE295:
	.size	nrf51_errata_28, .-nrf51_errata_28
	.section	.text.nrf51_errata_29,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_29, %function
nrf51_errata_29:
.LFB296:
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
.LFE296:
	.size	nrf51_errata_29, .-nrf51_errata_29
	.section	.text.nrf51_errata_30,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_30, %function
nrf51_errata_30:
.LFB297:
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
.LFE297:
	.size	nrf51_errata_30, .-nrf51_errata_30
	.section	.text.nrf51_errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_31, %function
nrf51_errata_31:
.LFB298:
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
.LFE298:
	.size	nrf51_errata_31, .-nrf51_errata_31
	.section	.text.nrf51_errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_32, %function
nrf51_errata_32:
.LFB299:
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
.LFE299:
	.size	nrf51_errata_32, .-nrf51_errata_32
	.section	.text.nrf51_errata_33,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_33, %function
nrf51_errata_33:
.LFB300:
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
.LFE300:
	.size	nrf51_errata_33, .-nrf51_errata_33
	.section	.text.nrf51_errata_34,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_34, %function
nrf51_errata_34:
.LFB301:
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
.LFE301:
	.size	nrf51_errata_34, .-nrf51_errata_34
	.section	.text.nrf51_errata_35,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_35, %function
nrf51_errata_35:
.LFB302:
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
.LFE302:
	.size	nrf51_errata_35, .-nrf51_errata_35
	.section	.text.nrf51_errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_36, %function
nrf51_errata_36:
.LFB303:
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
.LFE303:
	.size	nrf51_errata_36, .-nrf51_errata_36
	.section	.text.nrf51_errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_37, %function
nrf51_errata_37:
.LFB304:
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
.LFE304:
	.size	nrf51_errata_37, .-nrf51_errata_37
	.section	.text.nrf51_errata_38,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_38, %function
nrf51_errata_38:
.LFB305:
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
.LFE305:
	.size	nrf51_errata_38, .-nrf51_errata_38
	.section	.text.nrf51_errata_39,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_39, %function
nrf51_errata_39:
.LFB306:
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
.LFE306:
	.size	nrf51_errata_39, .-nrf51_errata_39
	.section	.text.nrf51_errata_40,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_40, %function
nrf51_errata_40:
.LFB307:
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
.LFE307:
	.size	nrf51_errata_40, .-nrf51_errata_40
	.section	.text.nrf51_errata_41,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_41, %function
nrf51_errata_41:
.LFB308:
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
.LFE308:
	.size	nrf51_errata_41, .-nrf51_errata_41
	.section	.text.nrf51_errata_42,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_42, %function
nrf51_errata_42:
.LFB309:
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
.LFE309:
	.size	nrf51_errata_42, .-nrf51_errata_42
	.section	.text.nrf51_errata_43,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_43, %function
nrf51_errata_43:
.LFB310:
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
.LFE310:
	.size	nrf51_errata_43, .-nrf51_errata_43
	.section	.text.nrf51_errata_44,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_44, %function
nrf51_errata_44:
.LFB311:
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
.LFE311:
	.size	nrf51_errata_44, .-nrf51_errata_44
	.section	.text.nrf51_errata_45,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_45, %function
nrf51_errata_45:
.LFB312:
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
.LFE312:
	.size	nrf51_errata_45, .-nrf51_errata_45
	.section	.text.nrf51_errata_46,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_46, %function
nrf51_errata_46:
.LFB313:
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
.LFE313:
	.size	nrf51_errata_46, .-nrf51_errata_46
	.section	.text.nrf51_errata_47,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_47, %function
nrf51_errata_47:
.LFB314:
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
.LFE314:
	.size	nrf51_errata_47, .-nrf51_errata_47
	.section	.text.nrf51_errata_48,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_48, %function
nrf51_errata_48:
.LFB315:
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
.LFE315:
	.size	nrf51_errata_48, .-nrf51_errata_48
	.section	.text.nrf51_errata_49,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_49, %function
nrf51_errata_49:
.LFB316:
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
.LFE316:
	.size	nrf51_errata_49, .-nrf51_errata_49
	.section	.text.nrf51_errata_50,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_50, %function
nrf51_errata_50:
.LFB317:
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
.LFE317:
	.size	nrf51_errata_50, .-nrf51_errata_50
	.section	.text.nrf51_errata_51,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_51, %function
nrf51_errata_51:
.LFB318:
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
.LFE318:
	.size	nrf51_errata_51, .-nrf51_errata_51
	.section	.text.nrf51_errata_52,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_52, %function
nrf51_errata_52:
.LFB319:
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
.LFE319:
	.size	nrf51_errata_52, .-nrf51_errata_52
	.section	.text.nrf51_errata_53,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_53, %function
nrf51_errata_53:
.LFB320:
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
.LFE320:
	.size	nrf51_errata_53, .-nrf51_errata_53
	.section	.text.nrf51_errata_54,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_54, %function
nrf51_errata_54:
.LFB321:
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
.LFE321:
	.size	nrf51_errata_54, .-nrf51_errata_54
	.section	.text.nrf51_errata_55,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_55, %function
nrf51_errata_55:
.LFB322:
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
.LFE322:
	.size	nrf51_errata_55, .-nrf51_errata_55
	.section	.text.nrf51_errata_56,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_56, %function
nrf51_errata_56:
.LFB323:
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
.LFE323:
	.size	nrf51_errata_56, .-nrf51_errata_56
	.section	.text.nrf51_errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_57, %function
nrf51_errata_57:
.LFB324:
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
.LFE324:
	.size	nrf51_errata_57, .-nrf51_errata_57
	.section	.text.nrf51_errata_58,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_58, %function
nrf51_errata_58:
.LFB325:
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
.LFE325:
	.size	nrf51_errata_58, .-nrf51_errata_58
	.section	.text.nrf51_errata_59,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_59, %function
nrf51_errata_59:
.LFB326:
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
.LFE326:
	.size	nrf51_errata_59, .-nrf51_errata_59
	.section	.text.nrf51_errata_60,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_60, %function
nrf51_errata_60:
.LFB327:
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
.LFE327:
	.size	nrf51_errata_60, .-nrf51_errata_60
	.section	.text.nrf51_errata_61,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_61, %function
nrf51_errata_61:
.LFB328:
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
.LFE328:
	.size	nrf51_errata_61, .-nrf51_errata_61
	.section	.text.nrf51_errata_62,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_62, %function
nrf51_errata_62:
.LFB329:
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
.LFE329:
	.size	nrf51_errata_62, .-nrf51_errata_62
	.section	.text.nrf51_errata_63,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_63, %function
nrf51_errata_63:
.LFB330:
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
.LFE330:
	.size	nrf51_errata_63, .-nrf51_errata_63
	.section	.text.nrf51_errata_64,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_64, %function
nrf51_errata_64:
.LFB331:
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
.LFE331:
	.size	nrf51_errata_64, .-nrf51_errata_64
	.section	.text.nrf51_errata_65,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_65, %function
nrf51_errata_65:
.LFB332:
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
.LFE332:
	.size	nrf51_errata_65, .-nrf51_errata_65
	.section	.text.nrf51_errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_66, %function
nrf51_errata_66:
.LFB333:
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
.LFE333:
	.size	nrf51_errata_66, .-nrf51_errata_66
	.section	.text.nrf51_errata_67,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_67, %function
nrf51_errata_67:
.LFB334:
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
.LFE334:
	.size	nrf51_errata_67, .-nrf51_errata_67
	.section	.text.nrf51_errata_68,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_68, %function
nrf51_errata_68:
.LFB335:
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
.LFE335:
	.size	nrf51_errata_68, .-nrf51_errata_68
	.section	.text.nrf51_errata_69,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_69, %function
nrf51_errata_69:
.LFB336:
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
.LFE336:
	.size	nrf51_errata_69, .-nrf51_errata_69
	.section	.text.nrf51_errata_70,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_70, %function
nrf51_errata_70:
.LFB337:
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
.LFE337:
	.size	nrf51_errata_70, .-nrf51_errata_70
	.section	.text.nrf51_errata_71,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_71, %function
nrf51_errata_71:
.LFB338:
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
.LFE338:
	.size	nrf51_errata_71, .-nrf51_errata_71
	.section	.text.nrf51_errata_72,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_72, %function
nrf51_errata_72:
.LFB339:
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
.LFE339:
	.size	nrf51_errata_72, .-nrf51_errata_72
	.section	.text.nrf51_errata_73,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_73, %function
nrf51_errata_73:
.LFB340:
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
.LFE340:
	.size	nrf51_errata_73, .-nrf51_errata_73
	.section	.text.nrf51_errata_74,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_74, %function
nrf51_errata_74:
.LFB341:
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
.LFE341:
	.size	nrf51_errata_74, .-nrf51_errata_74
	.section	.text.nrf51_errata_75,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_75, %function
nrf51_errata_75:
.LFB342:
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
.LFE342:
	.size	nrf51_errata_75, .-nrf51_errata_75
	.section	.text.nrf51_errata_76,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_76, %function
nrf51_errata_76:
.LFB343:
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
.LFE343:
	.size	nrf51_errata_76, .-nrf51_errata_76
	.section	.text.nrf51_errata_77,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_77, %function
nrf51_errata_77:
.LFB344:
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
.LFE344:
	.size	nrf51_errata_77, .-nrf51_errata_77
	.section	.text.nrf51_errata_78,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_78, %function
nrf51_errata_78:
.LFB345:
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
.LFE345:
	.size	nrf51_errata_78, .-nrf51_errata_78
	.section	.text.nrf52_errata_1,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_1, %function
nrf52_errata_1:
.LFB346:
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
.LFE346:
	.size	nrf52_errata_1, .-nrf52_errata_1
	.section	.text.nrf52_errata_2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_2, %function
nrf52_errata_2:
.LFB347:
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
.LFE347:
	.size	nrf52_errata_2, .-nrf52_errata_2
	.section	.text.nrf52_errata_3,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_3, %function
nrf52_errata_3:
.LFB348:
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
.LFE348:
	.size	nrf52_errata_3, .-nrf52_errata_3
	.section	.text.nrf52_errata_4,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_4, %function
nrf52_errata_4:
.LFB349:
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
.LFE349:
	.size	nrf52_errata_4, .-nrf52_errata_4
	.section	.text.nrf52_errata_7,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_7, %function
nrf52_errata_7:
.LFB350:
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
.LFE350:
	.size	nrf52_errata_7, .-nrf52_errata_7
	.section	.text.nrf52_errata_8,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_8, %function
nrf52_errata_8:
.LFB351:
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
.LFE351:
	.size	nrf52_errata_8, .-nrf52_errata_8
	.section	.text.nrf52_errata_9,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_9, %function
nrf52_errata_9:
.LFB352:
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
.LFE352:
	.size	nrf52_errata_9, .-nrf52_errata_9
	.section	.text.nrf52_errata_10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_10, %function
nrf52_errata_10:
.LFB353:
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
.LFE353:
	.size	nrf52_errata_10, .-nrf52_errata_10
	.section	.text.nrf52_errata_11,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_11, %function
nrf52_errata_11:
.LFB354:
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
.LFE354:
	.size	nrf52_errata_11, .-nrf52_errata_11
	.section	.text.nrf52_errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_12, %function
nrf52_errata_12:
.LFB355:
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
.LFE355:
	.size	nrf52_errata_12, .-nrf52_errata_12
	.section	.text.nrf52_errata_15,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_15, %function
nrf52_errata_15:
.LFB356:
	.loc 10 733 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 756 29
	ldr	r3, .L297
	.loc 10 756 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 757 29
	ldr	r3, .L297+4
	.loc 10 757 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 781 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L287
	.loc 10 783 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L288
	adr	r2, .L290
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L290:
	.word	.L295+1
	.word	.L294+1
	.word	.L293+1
	.word	.L292+1
	.word	.L291+1
	.word	.L289+1
	.p2align 1
.L295:
	.loc 10 786 32
	movs	r3, #1
	b	.L296
.L294:
	.loc 10 788 32
	movs	r3, #0
	b	.L296
.L293:
	.loc 10 790 32
	movs	r3, #0
	b	.L296
.L292:
	.loc 10 792 32
	movs	r3, #0
	b	.L296
.L291:
	.loc 10 794 32
	movs	r3, #0
	b	.L296
.L289:
	.loc 10 796 32
	movs	r3, #0
	b	.L296
.L288:
	.loc 10 798 32
	movs	r3, #0
	b	.L296
.L287:
	.loc 10 840 16
	movs	r3, #0
.L296:
	.loc 10 842 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L298:
	.align	2
.L297:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE356:
	.size	nrf52_errata_15, .-nrf52_errata_15
	.section	.text.nrf52_errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_16, %function
nrf52_errata_16:
.LFB357:
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
.LFE357:
	.size	nrf52_errata_16, .-nrf52_errata_16
	.section	.text.nrf52_errata_17,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_17, %function
nrf52_errata_17:
.LFB358:
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
.LFE358:
	.size	nrf52_errata_17, .-nrf52_errata_17
	.section	.text.nrf52_errata_20,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_20, %function
nrf52_errata_20:
.LFB359:
	.loc 10 957 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 982 29
	ldr	r3, .L314
	.loc 10 982 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 983 29
	ldr	r3, .L314+4
	.loc 10 983 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 1007 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L304
	.loc 10 1009 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L305
	adr	r2, .L307
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L307:
	.word	.L312+1
	.word	.L311+1
	.word	.L310+1
	.word	.L309+1
	.word	.L308+1
	.word	.L306+1
	.p2align 1
.L312:
	.loc 10 1012 32
	movs	r3, #1
	b	.L313
.L311:
	.loc 10 1014 32
	movs	r3, #1
	b	.L313
.L310:
	.loc 10 1016 32
	movs	r3, #1
	b	.L313
.L309:
	.loc 10 1018 32
	movs	r3, #1
	b	.L313
.L308:
	.loc 10 1020 32
	movs	r3, #1
	b	.L313
.L306:
	.loc 10 1022 32
	movs	r3, #1
	b	.L313
.L305:
	.loc 10 1024 32
	movs	r3, #1
	b	.L313
.L304:
	.loc 10 1100 16
	movs	r3, #0
.L313:
	.loc 10 1102 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L315:
	.align	2
.L314:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE359:
	.size	nrf52_errata_20, .-nrf52_errata_20
	.section	.text.nrf52_errata_23,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_23, %function
nrf52_errata_23:
.LFB360:
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
.LFE360:
	.size	nrf52_errata_23, .-nrf52_errata_23
	.section	.text.nrf52_errata_24,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_24, %function
nrf52_errata_24:
.LFB361:
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
.LFE361:
	.size	nrf52_errata_24, .-nrf52_errata_24
	.section	.text.nrf52_errata_25,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_25, %function
nrf52_errata_25:
.LFB362:
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
.LFE362:
	.size	nrf52_errata_25, .-nrf52_errata_25
	.section	.text.nrf52_errata_26,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_26, %function
nrf52_errata_26:
.LFB363:
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
.LFE363:
	.size	nrf52_errata_26, .-nrf52_errata_26
	.section	.text.nrf52_errata_27,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_27, %function
nrf52_errata_27:
.LFB364:
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
.LFE364:
	.size	nrf52_errata_27, .-nrf52_errata_27
	.section	.text.nrf52_errata_28,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_28, %function
nrf52_errata_28:
.LFB365:
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
.LFE365:
	.size	nrf52_errata_28, .-nrf52_errata_28
	.section	.text.nrf52_errata_29,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_29, %function
nrf52_errata_29:
.LFB366:
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
.LFE366:
	.size	nrf52_errata_29, .-nrf52_errata_29
	.section	.text.nrf52_errata_30,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_30, %function
nrf52_errata_30:
.LFB367:
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
.LFE367:
	.size	nrf52_errata_30, .-nrf52_errata_30
	.section	.text.nrf52_errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_31, %function
nrf52_errata_31:
.LFB368:
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
.LFE368:
	.size	nrf52_errata_31, .-nrf52_errata_31
	.section	.text.nrf52_errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_32, %function
nrf52_errata_32:
.LFB369:
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
.LFE369:
	.size	nrf52_errata_32, .-nrf52_errata_32
	.section	.text.nrf52_errata_33,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_33, %function
nrf52_errata_33:
.LFB370:
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
.LFE370:
	.size	nrf52_errata_33, .-nrf52_errata_33
	.section	.text.nrf52_errata_34,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_34, %function
nrf52_errata_34:
.LFB371:
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
.LFE371:
	.size	nrf52_errata_34, .-nrf52_errata_34
	.section	.text.nrf52_errata_35,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_35, %function
nrf52_errata_35:
.LFB372:
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
.LFE372:
	.size	nrf52_errata_35, .-nrf52_errata_35
	.section	.text.nrf52_errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_36, %function
nrf52_errata_36:
.LFB373:
	.loc 10 1791 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 1816 29
	ldr	r3, .L353
	.loc 10 1816 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 1817 29
	ldr	r3, .L353+4
	.loc 10 1817 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 1841 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L343
	.loc 10 1843 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L344
	adr	r2, .L346
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L346:
	.word	.L351+1
	.word	.L350+1
	.word	.L349+1
	.word	.L348+1
	.word	.L347+1
	.word	.L345+1
	.p2align 1
.L351:
	.loc 10 1846 32
	movs	r3, #1
	b	.L352
.L350:
	.loc 10 1848 32
	movs	r3, #1
	b	.L352
.L349:
	.loc 10 1850 32
	movs	r3, #1
	b	.L352
.L348:
	.loc 10 1852 32
	movs	r3, #1
	b	.L352
.L347:
	.loc 10 1854 32
	movs	r3, #1
	b	.L352
.L345:
	.loc 10 1856 32
	movs	r3, #1
	b	.L352
.L344:
	.loc 10 1858 32
	movs	r3, #1
	b	.L352
.L343:
	.loc 10 1934 16
	movs	r3, #0
.L352:
	.loc 10 1936 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L354:
	.align	2
.L353:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE373:
	.size	nrf52_errata_36, .-nrf52_errata_36
	.section	.text.nrf52_errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_37, %function
nrf52_errata_37:
.LFB374:
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
.LFE374:
	.size	nrf52_errata_37, .-nrf52_errata_37
	.section	.text.nrf52_errata_38,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_38, %function
nrf52_errata_38:
.LFB375:
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
.LFE375:
	.size	nrf52_errata_38, .-nrf52_errata_38
	.section	.text.nrf52_errata_39,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_39, %function
nrf52_errata_39:
.LFB376:
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
.LFE376:
	.size	nrf52_errata_39, .-nrf52_errata_39
	.section	.text.nrf52_errata_40,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_40, %function
nrf52_errata_40:
.LFB377:
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
.LFE377:
	.size	nrf52_errata_40, .-nrf52_errata_40
	.section	.text.nrf52_errata_41,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_41, %function
nrf52_errata_41:
.LFB378:
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
.LFE378:
	.size	nrf52_errata_41, .-nrf52_errata_41
	.section	.text.nrf52_errata_42,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_42, %function
nrf52_errata_42:
.LFB379:
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
.LFE379:
	.size	nrf52_errata_42, .-nrf52_errata_42
	.section	.text.nrf52_errata_43,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_43, %function
nrf52_errata_43:
.LFB380:
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
.LFE380:
	.size	nrf52_errata_43, .-nrf52_errata_43
	.section	.text.nrf52_errata_44,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_44, %function
nrf52_errata_44:
.LFB381:
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
.LFE381:
	.size	nrf52_errata_44, .-nrf52_errata_44
	.section	.text.nrf52_errata_46,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_46, %function
nrf52_errata_46:
.LFB382:
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
.LFE382:
	.size	nrf52_errata_46, .-nrf52_errata_46
	.section	.text.nrf52_errata_47,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_47, %function
nrf52_errata_47:
.LFB383:
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
.LFE383:
	.size	nrf52_errata_47, .-nrf52_errata_47
	.section	.text.nrf52_errata_48,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_48, %function
nrf52_errata_48:
.LFB384:
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
.LFE384:
	.size	nrf52_errata_48, .-nrf52_errata_48
	.section	.text.nrf52_errata_49,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_49, %function
nrf52_errata_49:
.LFB385:
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
.LFE385:
	.size	nrf52_errata_49, .-nrf52_errata_49
	.section	.text.nrf52_errata_51,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_51, %function
nrf52_errata_51:
.LFB386:
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
.LFE386:
	.size	nrf52_errata_51, .-nrf52_errata_51
	.section	.text.nrf52_errata_54,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_54, %function
nrf52_errata_54:
.LFB387:
	.loc 10 2574 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 2594 29
	ldr	r3, .L392
	.loc 10 2594 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 2595 29
	ldr	r3, .L392+4
	.loc 10 2595 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 2619 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L382
	.loc 10 2621 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L383
	adr	r2, .L385
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L385:
	.word	.L390+1
	.word	.L389+1
	.word	.L388+1
	.word	.L387+1
	.word	.L386+1
	.word	.L384+1
	.p2align 1
.L390:
	.loc 10 2624 32
	movs	r3, #1
	b	.L391
.L389:
	.loc 10 2626 32
	movs	r3, #0
	b	.L391
.L388:
	.loc 10 2628 32
	movs	r3, #0
	b	.L391
.L387:
	.loc 10 2630 32
	movs	r3, #0
	b	.L391
.L386:
	.loc 10 2632 32
	movs	r3, #0
	b	.L391
.L384:
	.loc 10 2634 32
	movs	r3, #0
	b	.L391
.L383:
	.loc 10 2636 32
	movs	r3, #0
	b	.L391
.L382:
	.loc 10 2640 16
	movs	r3, #0
.L391:
	.loc 10 2642 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L393:
	.align	2
.L392:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE387:
	.size	nrf52_errata_54, .-nrf52_errata_54
	.section	.text.nrf52_errata_55,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_55, %function
nrf52_errata_55:
.LFB388:
	.loc 10 2660 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 2682 29
	ldr	r3, .L405
	.loc 10 2682 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 2683 29
	ldr	r3, .L405+4
	.loc 10 2683 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 2707 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L395
	.loc 10 2709 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L396
	adr	r2, .L398
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L398:
	.word	.L403+1
	.word	.L402+1
	.word	.L401+1
	.word	.L400+1
	.word	.L399+1
	.word	.L397+1
	.p2align 1
.L403:
	.loc 10 2712 32
	movs	r3, #1
	b	.L404
.L402:
	.loc 10 2714 32
	movs	r3, #1
	b	.L404
.L401:
	.loc 10 2716 32
	movs	r3, #1
	b	.L404
.L400:
	.loc 10 2718 32
	movs	r3, #1
	b	.L404
.L399:
	.loc 10 2720 32
	movs	r3, #1
	b	.L404
.L397:
	.loc 10 2722 32
	movs	r3, #1
	b	.L404
.L396:
	.loc 10 2724 32
	movs	r3, #1
	b	.L404
.L395:
	.loc 10 2762 16
	movs	r3, #0
.L404:
	.loc 10 2764 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L406:
	.align	2
.L405:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE388:
	.size	nrf52_errata_55, .-nrf52_errata_55
	.section	.text.nrf52_errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_57, %function
nrf52_errata_57:
.LFB389:
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
.LFE389:
	.size	nrf52_errata_57, .-nrf52_errata_57
	.section	.text.nrf52_errata_58,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_58, %function
nrf52_errata_58:
.LFB390:
	.loc 10 2827 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 2847 29
	ldr	r3, .L420
	.loc 10 2847 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 2848 29
	ldr	r3, .L420+4
	.loc 10 2848 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 2872 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L410
	.loc 10 2874 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L411
	adr	r2, .L413
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L413:
	.word	.L418+1
	.word	.L417+1
	.word	.L416+1
	.word	.L415+1
	.word	.L414+1
	.word	.L412+1
	.p2align 1
.L418:
	.loc 10 2877 32
	movs	r3, #1
	b	.L419
.L417:
	.loc 10 2879 32
	movs	r3, #0
	b	.L419
.L416:
	.loc 10 2881 32
	movs	r3, #0
	b	.L419
.L415:
	.loc 10 2883 32
	movs	r3, #0
	b	.L419
.L414:
	.loc 10 2885 32
	movs	r3, #0
	b	.L419
.L412:
	.loc 10 2887 32
	movs	r3, #0
	b	.L419
.L411:
	.loc 10 2889 32
	movs	r3, #0
	b	.L419
.L410:
	.loc 10 2893 16
	movs	r3, #0
.L419:
	.loc 10 2895 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L421:
	.align	2
.L420:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE390:
	.size	nrf52_errata_58, .-nrf52_errata_58
	.section	.text.nrf52_errata_62,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_62, %function
nrf52_errata_62:
.LFB391:
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
.LFE391:
	.size	nrf52_errata_62, .-nrf52_errata_62
	.section	.text.nrf52_errata_63,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_63, %function
nrf52_errata_63:
.LFB392:
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
.LFE392:
	.size	nrf52_errata_63, .-nrf52_errata_63
	.section	.text.nrf52_errata_64,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_64, %function
nrf52_errata_64:
.LFB393:
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
.LFE393:
	.size	nrf52_errata_64, .-nrf52_errata_64
	.section	.text.nrf52_errata_65,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_65, %function
nrf52_errata_65:
.LFB394:
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
.LFE394:
	.size	nrf52_errata_65, .-nrf52_errata_65
	.section	.text.nrf52_errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_66, %function
nrf52_errata_66:
.LFB395:
	.loc 10 3115 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 3140 29
	ldr	r3, .L441
	.loc 10 3140 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 3141 29
	ldr	r3, .L441+4
	.loc 10 3141 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 3165 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L431
	.loc 10 3167 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L432
	adr	r2, .L434
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L434:
	.word	.L439+1
	.word	.L438+1
	.word	.L437+1
	.word	.L436+1
	.word	.L435+1
	.word	.L433+1
	.p2align 1
.L439:
	.loc 10 3170 32
	movs	r3, #1
	b	.L440
.L438:
	.loc 10 3172 32
	movs	r3, #1
	b	.L440
.L437:
	.loc 10 3174 32
	movs	r3, #1
	b	.L440
.L436:
	.loc 10 3176 32
	movs	r3, #1
	b	.L440
.L435:
	.loc 10 3178 32
	movs	r3, #1
	b	.L440
.L433:
	.loc 10 3180 32
	movs	r3, #1
	b	.L440
.L432:
	.loc 10 3182 32
	movs	r3, #1
	b	.L440
.L431:
	.loc 10 3258 16
	movs	r3, #0
.L440:
	.loc 10 3260 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L442:
	.align	2
.L441:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE395:
	.size	nrf52_errata_66, .-nrf52_errata_66
	.section	.text.nrf52_errata_67,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_67, %function
nrf52_errata_67:
.LFB396:
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
.LFE396:
	.size	nrf52_errata_67, .-nrf52_errata_67
	.section	.text.nrf52_errata_68,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_68, %function
nrf52_errata_68:
.LFB397:
	.loc 10 3337 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 3360 29
	ldr	r3, .L456
	.loc 10 3360 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 3361 29
	ldr	r3, .L456+4
	.loc 10 3361 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 3385 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L446
	.loc 10 3387 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L447
	adr	r2, .L449
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L449:
	.word	.L454+1
	.word	.L453+1
	.word	.L452+1
	.word	.L451+1
	.word	.L450+1
	.word	.L448+1
	.p2align 1
.L454:
	.loc 10 3390 32
	movs	r3, #1
	b	.L455
.L453:
	.loc 10 3392 32
	movs	r3, #0
	b	.L455
.L452:
	.loc 10 3394 32
	movs	r3, #0
	b	.L455
.L451:
	.loc 10 3396 32
	movs	r3, #0
	b	.L455
.L450:
	.loc 10 3398 32
	movs	r3, #0
	b	.L455
.L448:
	.loc 10 3400 32
	movs	r3, #0
	b	.L455
.L447:
	.loc 10 3402 32
	movs	r3, #0
	b	.L455
.L446:
	.loc 10 3444 16
	movs	r3, #0
.L455:
	.loc 10 3446 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L457:
	.align	2
.L456:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE397:
	.size	nrf52_errata_68, .-nrf52_errata_68
	.section	.text.nrf52_errata_70,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_70, %function
nrf52_errata_70:
.LFB398:
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
.LFE398:
	.size	nrf52_errata_70, .-nrf52_errata_70
	.section	.text.nrf52_errata_71,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_71, %function
nrf52_errata_71:
.LFB399:
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
.LFE399:
	.size	nrf52_errata_71, .-nrf52_errata_71
	.section	.text.nrf52_errata_72,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_72, %function
nrf52_errata_72:
.LFB400:
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
.LFE400:
	.size	nrf52_errata_72, .-nrf52_errata_72
	.section	.text.nrf52_errata_73,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_73, %function
nrf52_errata_73:
.LFB401:
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
.LFE401:
	.size	nrf52_errata_73, .-nrf52_errata_73
	.section	.text.nrf52_errata_74,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_74, %function
nrf52_errata_74:
.LFB402:
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
.LFE402:
	.size	nrf52_errata_74, .-nrf52_errata_74
	.section	.text.nrf52_errata_75,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_75, %function
nrf52_errata_75:
.LFB403:
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
.LFE403:
	.size	nrf52_errata_75, .-nrf52_errata_75
	.section	.text.nrf52_errata_76,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_76, %function
nrf52_errata_76:
.LFB404:
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
.LFE404:
	.size	nrf52_errata_76, .-nrf52_errata_76
	.section	.text.nrf52_errata_77,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_77, %function
nrf52_errata_77:
.LFB405:
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
.LFE405:
	.size	nrf52_errata_77, .-nrf52_errata_77
	.section	.text.nrf52_errata_78,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_78, %function
nrf52_errata_78:
.LFB406:
	.loc 10 3944 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 3969 29
	ldr	r3, .L485
	.loc 10 3969 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 3970 29
	ldr	r3, .L485+4
	.loc 10 3970 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 3994 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L475
	.loc 10 3996 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L476
	adr	r2, .L478
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L478:
	.word	.L483+1
	.word	.L482+1
	.word	.L481+1
	.word	.L480+1
	.word	.L479+1
	.word	.L477+1
	.p2align 1
.L483:
	.loc 10 3999 32
	movs	r3, #1
	b	.L484
.L482:
	.loc 10 4001 32
	movs	r3, #1
	b	.L484
.L481:
	.loc 10 4003 32
	movs	r3, #1
	b	.L484
.L480:
	.loc 10 4005 32
	movs	r3, #1
	b	.L484
.L479:
	.loc 10 4007 32
	movs	r3, #1
	b	.L484
.L477:
	.loc 10 4009 32
	movs	r3, #1
	b	.L484
.L476:
	.loc 10 4011 32
	movs	r3, #1
	b	.L484
.L475:
	.loc 10 4087 16
	movs	r3, #0
.L484:
	.loc 10 4089 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L486:
	.align	2
.L485:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE406:
	.size	nrf52_errata_78, .-nrf52_errata_78
	.section	.text.nrf52_errata_79,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_79, %function
nrf52_errata_79:
.LFB407:
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
.LFE407:
	.size	nrf52_errata_79, .-nrf52_errata_79
	.section	.text.nrf52_errata_81,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_81, %function
nrf52_errata_81:
.LFB408:
	.loc 10 4166 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4189 29
	ldr	r3, .L500
	.loc 10 4189 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4190 29
	ldr	r3, .L500+4
	.loc 10 4190 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4214 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L490
	.loc 10 4216 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L491
	adr	r2, .L493
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L493:
	.word	.L498+1
	.word	.L497+1
	.word	.L496+1
	.word	.L495+1
	.word	.L494+1
	.word	.L492+1
	.p2align 1
.L498:
	.loc 10 4219 32
	movs	r3, #1
	b	.L499
.L497:
	.loc 10 4221 32
	movs	r3, #1
	b	.L499
.L496:
	.loc 10 4223 32
	movs	r3, #1
	b	.L499
.L495:
	.loc 10 4225 32
	movs	r3, #1
	b	.L499
.L494:
	.loc 10 4227 32
	movs	r3, #1
	b	.L499
.L492:
	.loc 10 4229 32
	movs	r3, #1
	b	.L499
.L491:
	.loc 10 4231 32
	movs	r3, #1
	b	.L499
.L490:
	.loc 10 4273 16
	movs	r3, #0
.L499:
	.loc 10 4275 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L501:
	.align	2
.L500:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE408:
	.size	nrf52_errata_81, .-nrf52_errata_81
	.section	.text.nrf52_errata_83,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_83, %function
nrf52_errata_83:
.LFB409:
	.loc 10 4294 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4317 29
	ldr	r3, .L513
	.loc 10 4317 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4318 29
	ldr	r3, .L513+4
	.loc 10 4318 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4342 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L503
	.loc 10 4344 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L504
	adr	r2, .L506
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L506:
	.word	.L511+1
	.word	.L510+1
	.word	.L509+1
	.word	.L508+1
	.word	.L507+1
	.word	.L505+1
	.p2align 1
.L511:
	.loc 10 4347 32
	movs	r3, #1
	b	.L512
.L510:
	.loc 10 4349 32
	movs	r3, #0
	b	.L512
.L509:
	.loc 10 4351 32
	movs	r3, #0
	b	.L512
.L508:
	.loc 10 4353 32
	movs	r3, #0
	b	.L512
.L507:
	.loc 10 4355 32
	movs	r3, #0
	b	.L512
.L505:
	.loc 10 4357 32
	movs	r3, #0
	b	.L512
.L504:
	.loc 10 4359 32
	movs	r3, #0
	b	.L512
.L503:
	.loc 10 4401 16
	movs	r3, #0
.L512:
	.loc 10 4403 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L514:
	.align	2
.L513:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE409:
	.size	nrf52_errata_83, .-nrf52_errata_83
	.section	.text.nrf52_errata_84,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_84, %function
nrf52_errata_84:
.LFB410:
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
.LFE410:
	.size	nrf52_errata_84, .-nrf52_errata_84
	.section	.text.nrf52_errata_86,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_86, %function
nrf52_errata_86:
.LFB411:
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
.LFE411:
	.size	nrf52_errata_86, .-nrf52_errata_86
	.section	.text.nrf52_errata_87,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_87, %function
nrf52_errata_87:
.LFB412:
	.loc 10 4537 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4559 29
	ldr	r3, .L530
	.loc 10 4559 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4560 29
	ldr	r3, .L530+4
	.loc 10 4560 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4584 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L520
	.loc 10 4586 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L521
	adr	r2, .L523
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L523:
	.word	.L528+1
	.word	.L527+1
	.word	.L526+1
	.word	.L525+1
	.word	.L524+1
	.word	.L522+1
	.p2align 1
.L528:
	.loc 10 4589 32
	movs	r3, #1
	b	.L529
.L527:
	.loc 10 4591 32
	movs	r3, #1
	b	.L529
.L526:
	.loc 10 4593 32
	movs	r3, #1
	b	.L529
.L525:
	.loc 10 4595 32
	movs	r3, #1
	b	.L529
.L524:
	.loc 10 4597 32
	movs	r3, #1
	b	.L529
.L522:
	.loc 10 4599 32
	movs	r3, #1
	b	.L529
.L521:
	.loc 10 4601 32
	movs	r3, #1
	b	.L529
.L520:
	.loc 10 4639 16
	movs	r3, #0
.L529:
	.loc 10 4641 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L531:
	.align	2
.L530:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE412:
	.size	nrf52_errata_87, .-nrf52_errata_87
	.section	.text.nrf52_errata_88,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_88, %function
nrf52_errata_88:
.LFB413:
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
.LFE413:
	.size	nrf52_errata_88, .-nrf52_errata_88
	.section	.text.nrf52_errata_89,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_89, %function
nrf52_errata_89:
.LFB414:
	.loc 10 4761 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4781 29
	ldr	r3, .L545
	.loc 10 4781 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4782 29
	ldr	r3, .L545+4
	.loc 10 4782 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4806 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L535
	.loc 10 4808 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L536
	adr	r2, .L538
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L538:
	.word	.L543+1
	.word	.L542+1
	.word	.L541+1
	.word	.L540+1
	.word	.L539+1
	.word	.L537+1
	.p2align 1
.L543:
	.loc 10 4811 32
	movs	r3, #1
	b	.L544
.L542:
	.loc 10 4813 32
	movs	r3, #0
	b	.L544
.L541:
	.loc 10 4815 32
	movs	r3, #0
	b	.L544
.L540:
	.loc 10 4817 32
	movs	r3, #0
	b	.L544
.L539:
	.loc 10 4819 32
	movs	r3, #0
	b	.L544
.L537:
	.loc 10 4821 32
	movs	r3, #0
	b	.L544
.L536:
	.loc 10 4823 32
	movs	r3, #0
	b	.L544
.L535:
	.loc 10 4827 16
	movs	r3, #0
.L544:
	.loc 10 4829 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L546:
	.align	2
.L545:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE414:
	.size	nrf52_errata_89, .-nrf52_errata_89
	.section	.text.nrf52_errata_91,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_91, %function
nrf52_errata_91:
.LFB415:
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
.LFE415:
	.size	nrf52_errata_91, .-nrf52_errata_91
	.section	.text.nrf52_errata_94,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_94, %function
nrf52_errata_94:
.LFB416:
	.loc 10 4901 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4906 29
	ldr	r3, .L560
	.loc 10 4906 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4907 29
	ldr	r3, .L560+4
	.loc 10 4907 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4910 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L550
	.loc 10 4912 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L551
	adr	r2, .L553
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L553:
	.word	.L558+1
	.word	.L557+1
	.word	.L556+1
	.word	.L555+1
	.word	.L554+1
	.word	.L552+1
	.p2align 1
.L558:
	.loc 10 4915 32
	movs	r3, #1
	b	.L559
.L557:
	.loc 10 4917 32
	movs	r3, #1
	b	.L559
.L556:
	.loc 10 4919 32
	movs	r3, #0
	b	.L559
.L555:
	.loc 10 4921 32
	movs	r3, #0
	b	.L559
.L554:
	.loc 10 4923 32
	movs	r3, #0
	b	.L559
.L552:
	.loc 10 4925 32
	movs	r3, #0
	b	.L559
.L551:
	.loc 10 4927 32
	movs	r3, #0
	b	.L559
.L550:
	.loc 10 4931 16
	movs	r3, #0
.L559:
	.loc 10 4933 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L561:
	.align	2
.L560:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE416:
	.size	nrf52_errata_94, .-nrf52_errata_94
	.section	.text.nrf52_errata_96,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_96, %function
nrf52_errata_96:
.LFB417:
	.loc 10 4947 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 4952 29
	ldr	r3, .L573
	.loc 10 4952 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 4953 29
	ldr	r3, .L573+4
	.loc 10 4953 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 4956 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L563
	.loc 10 4958 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L564
	adr	r2, .L566
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L566:
	.word	.L571+1
	.word	.L570+1
	.word	.L569+1
	.word	.L568+1
	.word	.L567+1
	.word	.L565+1
	.p2align 1
.L571:
	.loc 10 4961 32
	movs	r3, #1
	b	.L572
.L570:
	.loc 10 4963 32
	movs	r3, #0
	b	.L572
.L569:
	.loc 10 4965 32
	movs	r3, #0
	b	.L572
.L568:
	.loc 10 4967 32
	movs	r3, #0
	b	.L572
.L567:
	.loc 10 4969 32
	movs	r3, #0
	b	.L572
.L565:
	.loc 10 4971 32
	movs	r3, #0
	b	.L572
.L564:
	.loc 10 4973 32
	movs	r3, #0
	b	.L572
.L563:
	.loc 10 4977 16
	movs	r3, #0
.L572:
	.loc 10 4979 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L574:
	.align	2
.L573:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE417:
	.size	nrf52_errata_96, .-nrf52_errata_96
	.section	.text.nrf52_errata_97,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_97, %function
nrf52_errata_97:
.LFB418:
	.loc 10 4995 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5015 29
	ldr	r3, .L586
	.loc 10 5015 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5016 29
	ldr	r3, .L586+4
	.loc 10 5016 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5040 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L576
	.loc 10 5042 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L577
	adr	r2, .L579
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L579:
	.word	.L584+1
	.word	.L583+1
	.word	.L582+1
	.word	.L581+1
	.word	.L580+1
	.word	.L578+1
	.p2align 1
.L584:
	.loc 10 5045 32
	movs	r3, #1
	b	.L585
.L583:
	.loc 10 5047 32
	movs	r3, #0
	b	.L585
.L582:
	.loc 10 5049 32
	movs	r3, #0
	b	.L585
.L581:
	.loc 10 5051 32
	movs	r3, #0
	b	.L585
.L580:
	.loc 10 5053 32
	movs	r3, #0
	b	.L585
.L578:
	.loc 10 5055 32
	movs	r3, #0
	b	.L585
.L577:
	.loc 10 5057 32
	movs	r3, #0
	b	.L585
.L576:
	.loc 10 5061 16
	movs	r3, #0
.L585:
	.loc 10 5063 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L587:
	.align	2
.L586:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE418:
	.size	nrf52_errata_97, .-nrf52_errata_97
	.section	.text.nrf52_errata_98,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_98, %function
nrf52_errata_98:
.LFB419:
	.loc 10 5077 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5082 29
	ldr	r3, .L599
	.loc 10 5082 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5083 29
	ldr	r3, .L599+4
	.loc 10 5083 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5086 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L589
	.loc 10 5088 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L590
	adr	r2, .L592
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L592:
	.word	.L597+1
	.word	.L596+1
	.word	.L595+1
	.word	.L594+1
	.word	.L593+1
	.word	.L591+1
	.p2align 1
.L597:
	.loc 10 5091 32
	movs	r3, #1
	b	.L598
.L596:
	.loc 10 5093 32
	movs	r3, #0
	b	.L598
.L595:
	.loc 10 5095 32
	movs	r3, #0
	b	.L598
.L594:
	.loc 10 5097 32
	movs	r3, #0
	b	.L598
.L593:
	.loc 10 5099 32
	movs	r3, #0
	b	.L598
.L591:
	.loc 10 5101 32
	movs	r3, #0
	b	.L598
.L590:
	.loc 10 5103 32
	movs	r3, #0
	b	.L598
.L589:
	.loc 10 5107 16
	movs	r3, #0
.L598:
	.loc 10 5109 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L600:
	.align	2
.L599:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE419:
	.size	nrf52_errata_98, .-nrf52_errata_98
	.section	.text.nrf52_errata_101,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_101, %function
nrf52_errata_101:
.LFB420:
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
.LFE420:
	.size	nrf52_errata_101, .-nrf52_errata_101
	.section	.text.nrf52_errata_102,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_102, %function
nrf52_errata_102:
.LFB421:
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
.LFE421:
	.size	nrf52_errata_102, .-nrf52_errata_102
	.section	.text.nrf52_errata_103,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_103, %function
nrf52_errata_103:
.LFB422:
	.loc 10 5239 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5244 29
	ldr	r3, .L616
	.loc 10 5244 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5245 29
	ldr	r3, .L616+4
	.loc 10 5245 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5248 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L606
	.loc 10 5250 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L607
	adr	r2, .L609
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L609:
	.word	.L614+1
	.word	.L613+1
	.word	.L612+1
	.word	.L611+1
	.word	.L610+1
	.word	.L608+1
	.p2align 1
.L614:
	.loc 10 5253 32
	movs	r3, #1
	b	.L615
.L613:
	.loc 10 5255 32
	movs	r3, #0
	b	.L615
.L612:
	.loc 10 5257 32
	movs	r3, #0
	b	.L615
.L611:
	.loc 10 5259 32
	movs	r3, #0
	b	.L615
.L610:
	.loc 10 5261 32
	movs	r3, #0
	b	.L615
.L608:
	.loc 10 5263 32
	movs	r3, #0
	b	.L615
.L607:
	.loc 10 5265 32
	movs	r3, #0
	b	.L615
.L606:
	.loc 10 5269 16
	movs	r3, #0
.L615:
	.loc 10 5271 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L617:
	.align	2
.L616:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE422:
	.size	nrf52_errata_103, .-nrf52_errata_103
	.section	.text.nrf52_errata_104,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_104, %function
nrf52_errata_104:
.LFB423:
	.loc 10 5285 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5290 29
	ldr	r3, .L629
	.loc 10 5290 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5291 29
	ldr	r3, .L629+4
	.loc 10 5291 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5294 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L619
	.loc 10 5296 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L620
	adr	r2, .L622
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L622:
	.word	.L627+1
	.word	.L626+1
	.word	.L625+1
	.word	.L624+1
	.word	.L623+1
	.word	.L621+1
	.p2align 1
.L627:
	.loc 10 5299 32
	movs	r3, #1
	b	.L628
.L626:
	.loc 10 5301 32
	movs	r3, #0
	b	.L628
.L625:
	.loc 10 5303 32
	movs	r3, #0
	b	.L628
.L624:
	.loc 10 5305 32
	movs	r3, #0
	b	.L628
.L623:
	.loc 10 5307 32
	movs	r3, #0
	b	.L628
.L621:
	.loc 10 5309 32
	movs	r3, #0
	b	.L628
.L620:
	.loc 10 5311 32
	movs	r3, #0
	b	.L628
.L619:
	.loc 10 5315 16
	movs	r3, #0
.L628:
	.loc 10 5317 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L630:
	.align	2
.L629:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE423:
	.size	nrf52_errata_104, .-nrf52_errata_104
	.section	.text.nrf52_errata_106,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_106, %function
nrf52_errata_106:
.LFB424:
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
.LFE424:
	.size	nrf52_errata_106, .-nrf52_errata_106
	.section	.text.nrf52_errata_107,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_107, %function
nrf52_errata_107:
.LFB425:
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
.LFE425:
	.size	nrf52_errata_107, .-nrf52_errata_107
	.section	.text.nrf52_errata_108,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_108, %function
nrf52_errata_108:
.LFB426:
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
.LFE426:
	.size	nrf52_errata_108, .-nrf52_errata_108
	.section	.text.nrf52_errata_109,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_109, %function
nrf52_errata_109:
.LFB427:
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
.LFE427:
	.size	nrf52_errata_109, .-nrf52_errata_109
	.section	.text.nrf52_errata_110,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_110, %function
nrf52_errata_110:
.LFB428:
	.loc 10 5563 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5568 29
	ldr	r3, .L650
	.loc 10 5568 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5569 29
	ldr	r3, .L650+4
	.loc 10 5569 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5572 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L640
	.loc 10 5574 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L641
	adr	r2, .L643
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L643:
	.word	.L648+1
	.word	.L647+1
	.word	.L646+1
	.word	.L645+1
	.word	.L644+1
	.word	.L642+1
	.p2align 1
.L648:
	.loc 10 5577 32
	movs	r3, #1
	b	.L649
.L647:
	.loc 10 5579 32
	movs	r3, #0
	b	.L649
.L646:
	.loc 10 5581 32
	movs	r3, #0
	b	.L649
.L645:
	.loc 10 5583 32
	movs	r3, #0
	b	.L649
.L644:
	.loc 10 5585 32
	movs	r3, #0
	b	.L649
.L642:
	.loc 10 5587 32
	movs	r3, #0
	b	.L649
.L641:
	.loc 10 5589 32
	movs	r3, #0
	b	.L649
.L640:
	.loc 10 5593 16
	movs	r3, #0
.L649:
	.loc 10 5595 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L651:
	.align	2
.L650:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE428:
	.size	nrf52_errata_110, .-nrf52_errata_110
	.section	.text.nrf52_errata_111,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_111, %function
nrf52_errata_111:
.LFB429:
	.loc 10 5609 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5614 29
	ldr	r3, .L663
	.loc 10 5614 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5615 29
	ldr	r3, .L663+4
	.loc 10 5615 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5618 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L653
	.loc 10 5620 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L654
	adr	r2, .L656
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L656:
	.word	.L661+1
	.word	.L660+1
	.word	.L659+1
	.word	.L658+1
	.word	.L657+1
	.word	.L655+1
	.p2align 1
.L661:
	.loc 10 5623 32
	movs	r3, #1
	b	.L662
.L660:
	.loc 10 5625 32
	movs	r3, #0
	b	.L662
.L659:
	.loc 10 5627 32
	movs	r3, #0
	b	.L662
.L658:
	.loc 10 5629 32
	movs	r3, #0
	b	.L662
.L657:
	.loc 10 5631 32
	movs	r3, #0
	b	.L662
.L655:
	.loc 10 5633 32
	movs	r3, #0
	b	.L662
.L654:
	.loc 10 5635 32
	movs	r3, #0
	b	.L662
.L653:
	.loc 10 5639 16
	movs	r3, #0
.L662:
	.loc 10 5641 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L664:
	.align	2
.L663:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE429:
	.size	nrf52_errata_111, .-nrf52_errata_111
	.section	.text.nrf52_errata_112,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_112, %function
nrf52_errata_112:
.LFB430:
	.loc 10 5655 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5660 29
	ldr	r3, .L676
	.loc 10 5660 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5661 29
	ldr	r3, .L676+4
	.loc 10 5661 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5664 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L666
	.loc 10 5666 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L667
	adr	r2, .L669
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L669:
	.word	.L674+1
	.word	.L673+1
	.word	.L672+1
	.word	.L671+1
	.word	.L670+1
	.word	.L668+1
	.p2align 1
.L674:
	.loc 10 5669 32
	movs	r3, #1
	b	.L675
.L673:
	.loc 10 5671 32
	movs	r3, #0
	b	.L675
.L672:
	.loc 10 5673 32
	movs	r3, #0
	b	.L675
.L671:
	.loc 10 5675 32
	movs	r3, #0
	b	.L675
.L670:
	.loc 10 5677 32
	movs	r3, #0
	b	.L675
.L668:
	.loc 10 5679 32
	movs	r3, #0
	b	.L675
.L667:
	.loc 10 5681 32
	movs	r3, #0
	b	.L675
.L666:
	.loc 10 5685 16
	movs	r3, #0
.L675:
	.loc 10 5687 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L677:
	.align	2
.L676:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE430:
	.size	nrf52_errata_112, .-nrf52_errata_112
	.section	.text.nrf52_errata_113,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_113, %function
nrf52_errata_113:
.LFB431:
	.loc 10 5703 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5723 29
	ldr	r3, .L689
	.loc 10 5723 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5724 29
	ldr	r3, .L689+4
	.loc 10 5724 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5748 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L679
	.loc 10 5750 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L680
	adr	r2, .L682
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L682:
	.word	.L687+1
	.word	.L686+1
	.word	.L685+1
	.word	.L684+1
	.word	.L683+1
	.word	.L681+1
	.p2align 1
.L687:
	.loc 10 5753 32
	movs	r3, #1
	b	.L688
.L686:
	.loc 10 5755 32
	movs	r3, #0
	b	.L688
.L685:
	.loc 10 5757 32
	movs	r3, #0
	b	.L688
.L684:
	.loc 10 5759 32
	movs	r3, #0
	b	.L688
.L683:
	.loc 10 5761 32
	movs	r3, #0
	b	.L688
.L681:
	.loc 10 5763 32
	movs	r3, #0
	b	.L688
.L680:
	.loc 10 5765 32
	movs	r3, #0
	b	.L688
.L679:
	.loc 10 5769 16
	movs	r3, #0
.L688:
	.loc 10 5771 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L690:
	.align	2
.L689:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE431:
	.size	nrf52_errata_113, .-nrf52_errata_113
	.section	.text.nrf52_errata_115,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_115, %function
nrf52_errata_115:
.LFB432:
	.loc 10 5785 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5790 29
	ldr	r3, .L702
	.loc 10 5790 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5791 29
	ldr	r3, .L702+4
	.loc 10 5791 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5794 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L692
	.loc 10 5796 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L693
	adr	r2, .L695
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L695:
	.word	.L700+1
	.word	.L699+1
	.word	.L698+1
	.word	.L697+1
	.word	.L696+1
	.word	.L694+1
	.p2align 1
.L700:
	.loc 10 5799 32
	movs	r3, #1
	b	.L701
.L699:
	.loc 10 5801 32
	movs	r3, #0
	b	.L701
.L698:
	.loc 10 5803 32
	movs	r3, #0
	b	.L701
.L697:
	.loc 10 5805 32
	movs	r3, #0
	b	.L701
.L696:
	.loc 10 5807 32
	movs	r3, #0
	b	.L701
.L694:
	.loc 10 5809 32
	movs	r3, #0
	b	.L701
.L693:
	.loc 10 5811 32
	movs	r3, #0
	b	.L701
.L692:
	.loc 10 5815 16
	movs	r3, #0
.L701:
	.loc 10 5817 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L703:
	.align	2
.L702:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE432:
	.size	nrf52_errata_115, .-nrf52_errata_115
	.section	.text.nrf52_errata_116,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_116, %function
nrf52_errata_116:
.LFB433:
	.loc 10 5831 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5836 29
	ldr	r3, .L715
	.loc 10 5836 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5837 29
	ldr	r3, .L715+4
	.loc 10 5837 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5840 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L705
	.loc 10 5842 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L706
	adr	r2, .L708
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L708:
	.word	.L713+1
	.word	.L712+1
	.word	.L711+1
	.word	.L710+1
	.word	.L709+1
	.word	.L707+1
	.p2align 1
.L713:
	.loc 10 5845 32
	movs	r3, #1
	b	.L714
.L712:
	.loc 10 5847 32
	movs	r3, #0
	b	.L714
.L711:
	.loc 10 5849 32
	movs	r3, #0
	b	.L714
.L710:
	.loc 10 5851 32
	movs	r3, #0
	b	.L714
.L709:
	.loc 10 5853 32
	movs	r3, #0
	b	.L714
.L707:
	.loc 10 5855 32
	movs	r3, #0
	b	.L714
.L706:
	.loc 10 5857 32
	movs	r3, #0
	b	.L714
.L705:
	.loc 10 5861 16
	movs	r3, #0
.L714:
	.loc 10 5863 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L716:
	.align	2
.L715:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE433:
	.size	nrf52_errata_116, .-nrf52_errata_116
	.section	.text.nrf52_errata_117,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_117, %function
nrf52_errata_117:
.LFB434:
	.loc 10 5877 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5882 29
	ldr	r3, .L728
	.loc 10 5882 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5883 29
	ldr	r3, .L728+4
	.loc 10 5883 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5886 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L718
	.loc 10 5888 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L719
	adr	r2, .L721
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L721:
	.word	.L726+1
	.word	.L725+1
	.word	.L724+1
	.word	.L723+1
	.word	.L722+1
	.word	.L720+1
	.p2align 1
.L726:
	.loc 10 5891 32
	movs	r3, #1
	b	.L727
.L725:
	.loc 10 5893 32
	movs	r3, #0
	b	.L727
.L724:
	.loc 10 5895 32
	movs	r3, #0
	b	.L727
.L723:
	.loc 10 5897 32
	movs	r3, #0
	b	.L727
.L722:
	.loc 10 5899 32
	movs	r3, #0
	b	.L727
.L720:
	.loc 10 5901 32
	movs	r3, #0
	b	.L727
.L719:
	.loc 10 5903 32
	movs	r3, #0
	b	.L727
.L718:
	.loc 10 5907 16
	movs	r3, #0
.L727:
	.loc 10 5909 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L729:
	.align	2
.L728:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE434:
	.size	nrf52_errata_117, .-nrf52_errata_117
	.section	.text.nrf52_errata_118,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_118, %function
nrf52_errata_118:
.LFB435:
	.loc 10 5923 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5928 29
	ldr	r3, .L741
	.loc 10 5928 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5929 29
	ldr	r3, .L741+4
	.loc 10 5929 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5932 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L731
	.loc 10 5934 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L732
	adr	r2, .L734
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L734:
	.word	.L739+1
	.word	.L738+1
	.word	.L737+1
	.word	.L736+1
	.word	.L735+1
	.word	.L733+1
	.p2align 1
.L739:
	.loc 10 5937 32
	movs	r3, #1
	b	.L740
.L738:
	.loc 10 5939 32
	movs	r3, #0
	b	.L740
.L737:
	.loc 10 5941 32
	movs	r3, #0
	b	.L740
.L736:
	.loc 10 5943 32
	movs	r3, #0
	b	.L740
.L735:
	.loc 10 5945 32
	movs	r3, #0
	b	.L740
.L733:
	.loc 10 5947 32
	movs	r3, #0
	b	.L740
.L732:
	.loc 10 5949 32
	movs	r3, #0
	b	.L740
.L731:
	.loc 10 5953 16
	movs	r3, #0
.L740:
	.loc 10 5955 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L742:
	.align	2
.L741:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE435:
	.size	nrf52_errata_118, .-nrf52_errata_118
	.section	.text.nrf52_errata_119,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_119, %function
nrf52_errata_119:
.LFB436:
	.loc 10 5969 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 5974 29
	ldr	r3, .L754
	.loc 10 5974 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 5975 29
	ldr	r3, .L754+4
	.loc 10 5975 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 5978 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L744
	.loc 10 5980 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L745
	adr	r2, .L747
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L747:
	.word	.L752+1
	.word	.L751+1
	.word	.L750+1
	.word	.L749+1
	.word	.L748+1
	.word	.L746+1
	.p2align 1
.L752:
	.loc 10 5983 32
	movs	r3, #1
	b	.L753
.L751:
	.loc 10 5985 32
	movs	r3, #0
	b	.L753
.L750:
	.loc 10 5987 32
	movs	r3, #0
	b	.L753
.L749:
	.loc 10 5989 32
	movs	r3, #0
	b	.L753
.L748:
	.loc 10 5991 32
	movs	r3, #0
	b	.L753
.L746:
	.loc 10 5993 32
	movs	r3, #0
	b	.L753
.L745:
	.loc 10 5995 32
	movs	r3, #0
	b	.L753
.L744:
	.loc 10 5999 16
	movs	r3, #0
.L753:
	.loc 10 6001 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L755:
	.align	2
.L754:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE436:
	.size	nrf52_errata_119, .-nrf52_errata_119
	.section	.text.nrf52_errata_120,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_120, %function
nrf52_errata_120:
.LFB437:
	.loc 10 6015 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6020 29
	ldr	r3, .L767
	.loc 10 6020 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6021 29
	ldr	r3, .L767+4
	.loc 10 6021 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6024 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L757
	.loc 10 6026 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L758
	adr	r2, .L760
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L760:
	.word	.L765+1
	.word	.L764+1
	.word	.L763+1
	.word	.L762+1
	.word	.L761+1
	.word	.L759+1
	.p2align 1
.L765:
	.loc 10 6029 32
	movs	r3, #1
	b	.L766
.L764:
	.loc 10 6031 32
	movs	r3, #0
	b	.L766
.L763:
	.loc 10 6033 32
	movs	r3, #0
	b	.L766
.L762:
	.loc 10 6035 32
	movs	r3, #0
	b	.L766
.L761:
	.loc 10 6037 32
	movs	r3, #0
	b	.L766
.L759:
	.loc 10 6039 32
	movs	r3, #0
	b	.L766
.L758:
	.loc 10 6041 32
	movs	r3, #0
	b	.L766
.L757:
	.loc 10 6045 16
	movs	r3, #0
.L766:
	.loc 10 6047 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L768:
	.align	2
.L767:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE437:
	.size	nrf52_errata_120, .-nrf52_errata_120
	.section	.text.nrf52_errata_121,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_121, %function
nrf52_errata_121:
.LFB438:
	.loc 10 6061 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6066 29
	ldr	r3, .L780
	.loc 10 6066 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6067 29
	ldr	r3, .L780+4
	.loc 10 6067 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6070 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L770
	.loc 10 6072 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L771
	adr	r2, .L773
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L773:
	.word	.L778+1
	.word	.L777+1
	.word	.L776+1
	.word	.L775+1
	.word	.L774+1
	.word	.L772+1
	.p2align 1
.L778:
	.loc 10 6075 32
	movs	r3, #1
	b	.L779
.L777:
	.loc 10 6077 32
	movs	r3, #0
	b	.L779
.L776:
	.loc 10 6079 32
	movs	r3, #0
	b	.L779
.L775:
	.loc 10 6081 32
	movs	r3, #0
	b	.L779
.L774:
	.loc 10 6083 32
	movs	r3, #0
	b	.L779
.L772:
	.loc 10 6085 32
	movs	r3, #0
	b	.L779
.L771:
	.loc 10 6087 32
	movs	r3, #0
	b	.L779
.L770:
	.loc 10 6091 16
	movs	r3, #0
.L779:
	.loc 10 6093 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L781:
	.align	2
.L780:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE438:
	.size	nrf52_errata_121, .-nrf52_errata_121
	.section	.text.nrf52_errata_122,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_122, %function
nrf52_errata_122:
.LFB439:
	.loc 10 6107 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6112 29
	ldr	r3, .L793
	.loc 10 6112 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6113 29
	ldr	r3, .L793+4
	.loc 10 6113 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6116 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L783
	.loc 10 6118 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L784
	adr	r2, .L786
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L786:
	.word	.L791+1
	.word	.L790+1
	.word	.L789+1
	.word	.L788+1
	.word	.L787+1
	.word	.L785+1
	.p2align 1
.L791:
	.loc 10 6121 32
	movs	r3, #1
	b	.L792
.L790:
	.loc 10 6123 32
	movs	r3, #1
	b	.L792
.L789:
	.loc 10 6125 32
	movs	r3, #1
	b	.L792
.L788:
	.loc 10 6127 32
	movs	r3, #1
	b	.L792
.L787:
	.loc 10 6129 32
	movs	r3, #1
	b	.L792
.L785:
	.loc 10 6131 32
	movs	r3, #1
	b	.L792
.L784:
	.loc 10 6133 32
	movs	r3, #1
	b	.L792
.L783:
	.loc 10 6137 16
	movs	r3, #0
.L792:
	.loc 10 6139 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L794:
	.align	2
.L793:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE439:
	.size	nrf52_errata_122, .-nrf52_errata_122
	.section	.text.nrf52_errata_127,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_127, %function
nrf52_errata_127:
.LFB440:
	.loc 10 6153 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6158 29
	ldr	r3, .L806
	.loc 10 6158 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6159 29
	ldr	r3, .L806+4
	.loc 10 6159 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6162 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L796
	.loc 10 6164 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L797
	adr	r2, .L799
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L799:
	.word	.L804+1
	.word	.L803+1
	.word	.L802+1
	.word	.L801+1
	.word	.L800+1
	.word	.L798+1
	.p2align 1
.L804:
	.loc 10 6167 32
	movs	r3, #1
	b	.L805
.L803:
	.loc 10 6169 32
	movs	r3, #0
	b	.L805
.L802:
	.loc 10 6171 32
	movs	r3, #0
	b	.L805
.L801:
	.loc 10 6173 32
	movs	r3, #0
	b	.L805
.L800:
	.loc 10 6175 32
	movs	r3, #0
	b	.L805
.L798:
	.loc 10 6177 32
	movs	r3, #0
	b	.L805
.L797:
	.loc 10 6179 32
	movs	r3, #0
	b	.L805
.L796:
	.loc 10 6183 16
	movs	r3, #0
.L805:
	.loc 10 6185 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L807:
	.align	2
.L806:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE440:
	.size	nrf52_errata_127, .-nrf52_errata_127
	.section	.text.nrf52_errata_128,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_128, %function
nrf52_errata_128:
.LFB441:
	.loc 10 6199 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6204 29
	ldr	r3, .L819
	.loc 10 6204 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6205 29
	ldr	r3, .L819+4
	.loc 10 6205 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6208 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L809
	.loc 10 6210 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L810
	adr	r2, .L812
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L812:
	.word	.L817+1
	.word	.L816+1
	.word	.L815+1
	.word	.L814+1
	.word	.L813+1
	.word	.L811+1
	.p2align 1
.L817:
	.loc 10 6213 32
	movs	r3, #1
	b	.L818
.L816:
	.loc 10 6215 32
	movs	r3, #0
	b	.L818
.L815:
	.loc 10 6217 32
	movs	r3, #0
	b	.L818
.L814:
	.loc 10 6219 32
	movs	r3, #0
	b	.L818
.L813:
	.loc 10 6221 32
	movs	r3, #0
	b	.L818
.L811:
	.loc 10 6223 32
	movs	r3, #0
	b	.L818
.L810:
	.loc 10 6225 32
	movs	r3, #0
	b	.L818
.L809:
	.loc 10 6229 16
	movs	r3, #0
.L818:
	.loc 10 6231 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L820:
	.align	2
.L819:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE441:
	.size	nrf52_errata_128, .-nrf52_errata_128
	.section	.text.nrf52_errata_131,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_131, %function
nrf52_errata_131:
.LFB442:
	.loc 10 6245 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6250 29
	ldr	r3, .L832
	.loc 10 6250 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6251 29
	ldr	r3, .L832+4
	.loc 10 6251 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6254 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L822
	.loc 10 6256 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L823
	adr	r2, .L825
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L825:
	.word	.L830+1
	.word	.L829+1
	.word	.L828+1
	.word	.L827+1
	.word	.L826+1
	.word	.L824+1
	.p2align 1
.L830:
	.loc 10 6259 32
	movs	r3, #1
	b	.L831
.L829:
	.loc 10 6261 32
	movs	r3, #0
	b	.L831
.L828:
	.loc 10 6263 32
	movs	r3, #0
	b	.L831
.L827:
	.loc 10 6265 32
	movs	r3, #0
	b	.L831
.L826:
	.loc 10 6267 32
	movs	r3, #0
	b	.L831
.L824:
	.loc 10 6269 32
	movs	r3, #0
	b	.L831
.L823:
	.loc 10 6271 32
	movs	r3, #0
	b	.L831
.L822:
	.loc 10 6275 16
	movs	r3, #0
.L831:
	.loc 10 6277 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L833:
	.align	2
.L832:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE442:
	.size	nrf52_errata_131, .-nrf52_errata_131
	.section	.text.nrf52_errata_132,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_132, %function
nrf52_errata_132:
.LFB443:
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
.LFE443:
	.size	nrf52_errata_132, .-nrf52_errata_132
	.section	.text.nrf52_errata_133,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_133, %function
nrf52_errata_133:
.LFB444:
	.loc 10 6349 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6354 29
	ldr	r3, .L847
	.loc 10 6354 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6355 29
	ldr	r3, .L847+4
	.loc 10 6355 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6358 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L837
	.loc 10 6360 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L838
	adr	r2, .L840
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L840:
	.word	.L845+1
	.word	.L844+1
	.word	.L843+1
	.word	.L842+1
	.word	.L841+1
	.word	.L839+1
	.p2align 1
.L845:
	.loc 10 6363 32
	movs	r3, #1
	b	.L846
.L844:
	.loc 10 6365 32
	movs	r3, #0
	b	.L846
.L843:
	.loc 10 6367 32
	movs	r3, #0
	b	.L846
.L842:
	.loc 10 6369 32
	movs	r3, #0
	b	.L846
.L841:
	.loc 10 6371 32
	movs	r3, #0
	b	.L846
.L839:
	.loc 10 6373 32
	movs	r3, #0
	b	.L846
.L838:
	.loc 10 6375 32
	movs	r3, #0
	b	.L846
.L837:
	.loc 10 6379 16
	movs	r3, #0
.L846:
	.loc 10 6381 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L848:
	.align	2
.L847:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE444:
	.size	nrf52_errata_133, .-nrf52_errata_133
	.section	.text.nrf52_errata_134,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_134, %function
nrf52_errata_134:
.LFB445:
	.loc 10 6395 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6400 29
	ldr	r3, .L860
	.loc 10 6400 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6401 29
	ldr	r3, .L860+4
	.loc 10 6401 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6404 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L850
	.loc 10 6406 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L851
	adr	r2, .L853
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L853:
	.word	.L858+1
	.word	.L857+1
	.word	.L856+1
	.word	.L855+1
	.word	.L854+1
	.word	.L852+1
	.p2align 1
.L858:
	.loc 10 6409 32
	movs	r3, #1
	b	.L859
.L857:
	.loc 10 6411 32
	movs	r3, #0
	b	.L859
.L856:
	.loc 10 6413 32
	movs	r3, #0
	b	.L859
.L855:
	.loc 10 6415 32
	movs	r3, #0
	b	.L859
.L854:
	.loc 10 6417 32
	movs	r3, #0
	b	.L859
.L852:
	.loc 10 6419 32
	movs	r3, #0
	b	.L859
.L851:
	.loc 10 6421 32
	movs	r3, #0
	b	.L859
.L850:
	.loc 10 6425 16
	movs	r3, #0
.L859:
	.loc 10 6427 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L861:
	.align	2
.L860:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE445:
	.size	nrf52_errata_134, .-nrf52_errata_134
	.section	.text.nrf52_errata_135,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_135, %function
nrf52_errata_135:
.LFB446:
	.loc 10 6441 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6446 29
	ldr	r3, .L873
	.loc 10 6446 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6447 29
	ldr	r3, .L873+4
	.loc 10 6447 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6450 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L863
	.loc 10 6452 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L864
	adr	r2, .L866
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L866:
	.word	.L871+1
	.word	.L870+1
	.word	.L869+1
	.word	.L868+1
	.word	.L867+1
	.word	.L865+1
	.p2align 1
.L871:
	.loc 10 6455 32
	movs	r3, #1
	b	.L872
.L870:
	.loc 10 6457 32
	movs	r3, #0
	b	.L872
.L869:
	.loc 10 6459 32
	movs	r3, #0
	b	.L872
.L868:
	.loc 10 6461 32
	movs	r3, #0
	b	.L872
.L867:
	.loc 10 6463 32
	movs	r3, #0
	b	.L872
.L865:
	.loc 10 6465 32
	movs	r3, #0
	b	.L872
.L864:
	.loc 10 6467 32
	movs	r3, #0
	b	.L872
.L863:
	.loc 10 6471 16
	movs	r3, #0
.L872:
	.loc 10 6473 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L874:
	.align	2
.L873:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE446:
	.size	nrf52_errata_135, .-nrf52_errata_135
	.section	.text.nrf52_errata_136,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_136, %function
nrf52_errata_136:
.LFB447:
	.loc 10 6494 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6519 29
	ldr	r3, .L886
	.loc 10 6519 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6520 29
	ldr	r3, .L886+4
	.loc 10 6520 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6544 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L876
	.loc 10 6546 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L877
	adr	r2, .L879
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L879:
	.word	.L884+1
	.word	.L883+1
	.word	.L882+1
	.word	.L881+1
	.word	.L880+1
	.word	.L878+1
	.p2align 1
.L884:
	.loc 10 6549 32
	movs	r3, #1
	b	.L885
.L883:
	.loc 10 6551 32
	movs	r3, #1
	b	.L885
.L882:
	.loc 10 6553 32
	movs	r3, #1
	b	.L885
.L881:
	.loc 10 6555 32
	movs	r3, #1
	b	.L885
.L880:
	.loc 10 6557 32
	movs	r3, #1
	b	.L885
.L878:
	.loc 10 6559 32
	movs	r3, #1
	b	.L885
.L877:
	.loc 10 6561 32
	movs	r3, #1
	b	.L885
.L876:
	.loc 10 6637 16
	movs	r3, #0
.L885:
	.loc 10 6639 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L887:
	.align	2
.L886:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE447:
	.size	nrf52_errata_136, .-nrf52_errata_136
	.section	.text.nrf52_errata_138,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_138, %function
nrf52_errata_138:
.LFB448:
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
.LFE448:
	.size	nrf52_errata_138, .-nrf52_errata_138
	.section	.text.nrf52_errata_140,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_140, %function
nrf52_errata_140:
.LFB449:
	.loc 10 6711 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6716 29
	ldr	r3, .L901
	.loc 10 6716 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6717 29
	ldr	r3, .L901+4
	.loc 10 6717 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6720 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L891
	.loc 10 6722 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L892
	adr	r2, .L894
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L894:
	.word	.L899+1
	.word	.L898+1
	.word	.L897+1
	.word	.L896+1
	.word	.L895+1
	.word	.L893+1
	.p2align 1
.L899:
	.loc 10 6725 32
	movs	r3, #1
	b	.L900
.L898:
	.loc 10 6727 32
	movs	r3, #0
	b	.L900
.L897:
	.loc 10 6729 32
	movs	r3, #0
	b	.L900
.L896:
	.loc 10 6731 32
	movs	r3, #0
	b	.L900
.L895:
	.loc 10 6733 32
	movs	r3, #0
	b	.L900
.L893:
	.loc 10 6735 32
	movs	r3, #0
	b	.L900
.L892:
	.loc 10 6737 32
	movs	r3, #0
	b	.L900
.L891:
	.loc 10 6741 16
	movs	r3, #0
.L900:
	.loc 10 6743 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L902:
	.align	2
.L901:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE449:
	.size	nrf52_errata_140, .-nrf52_errata_140
	.section	.text.nrf52_errata_141,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_141, %function
nrf52_errata_141:
.LFB450:
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
.LFE450:
	.size	nrf52_errata_141, .-nrf52_errata_141
	.section	.text.nrf52_errata_142,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_142, %function
nrf52_errata_142:
.LFB451:
	.loc 10 6815 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6820 29
	ldr	r3, .L916
	.loc 10 6820 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6821 29
	ldr	r3, .L916+4
	.loc 10 6821 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6824 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L906
	.loc 10 6826 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L907
	adr	r2, .L909
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L909:
	.word	.L914+1
	.word	.L913+1
	.word	.L912+1
	.word	.L911+1
	.word	.L910+1
	.word	.L908+1
	.p2align 1
.L914:
	.loc 10 6829 32
	movs	r3, #1
	b	.L915
.L913:
	.loc 10 6831 32
	movs	r3, #0
	b	.L915
.L912:
	.loc 10 6833 32
	movs	r3, #0
	b	.L915
.L911:
	.loc 10 6835 32
	movs	r3, #0
	b	.L915
.L910:
	.loc 10 6837 32
	movs	r3, #0
	b	.L915
.L908:
	.loc 10 6839 32
	movs	r3, #0
	b	.L915
.L907:
	.loc 10 6841 32
	movs	r3, #0
	b	.L915
.L906:
	.loc 10 6845 16
	movs	r3, #0
.L915:
	.loc 10 6847 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L917:
	.align	2
.L916:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE451:
	.size	nrf52_errata_142, .-nrf52_errata_142
	.section	.text.nrf52_errata_143,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_143, %function
nrf52_errata_143:
.LFB452:
	.loc 10 6863 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6883 29
	ldr	r3, .L929
	.loc 10 6883 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6884 29
	ldr	r3, .L929+4
	.loc 10 6884 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6908 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L919
	.loc 10 6910 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L920
	adr	r2, .L922
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L922:
	.word	.L927+1
	.word	.L926+1
	.word	.L925+1
	.word	.L924+1
	.word	.L923+1
	.word	.L921+1
	.p2align 1
.L927:
	.loc 10 6913 32
	movs	r3, #1
	b	.L928
.L926:
	.loc 10 6915 32
	movs	r3, #0
	b	.L928
.L925:
	.loc 10 6917 32
	movs	r3, #0
	b	.L928
.L924:
	.loc 10 6919 32
	movs	r3, #0
	b	.L928
.L923:
	.loc 10 6921 32
	movs	r3, #0
	b	.L928
.L921:
	.loc 10 6923 32
	movs	r3, #0
	b	.L928
.L920:
	.loc 10 6925 32
	movs	r3, #0
	b	.L928
.L919:
	.loc 10 6929 16
	movs	r3, #0
.L928:
	.loc 10 6931 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L930:
	.align	2
.L929:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE452:
	.size	nrf52_errata_143, .-nrf52_errata_143
	.section	.text.nrf52_errata_144,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_144, %function
nrf52_errata_144:
.LFB453:
	.loc 10 6945 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6950 29
	ldr	r3, .L942
	.loc 10 6950 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6951 29
	ldr	r3, .L942+4
	.loc 10 6951 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 6954 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L932
	.loc 10 6956 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L933
	adr	r2, .L935
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L935:
	.word	.L940+1
	.word	.L939+1
	.word	.L938+1
	.word	.L937+1
	.word	.L936+1
	.word	.L934+1
	.p2align 1
.L940:
	.loc 10 6959 32
	movs	r3, #1
	b	.L941
.L939:
	.loc 10 6961 32
	movs	r3, #0
	b	.L941
.L938:
	.loc 10 6963 32
	movs	r3, #0
	b	.L941
.L937:
	.loc 10 6965 32
	movs	r3, #0
	b	.L941
.L936:
	.loc 10 6967 32
	movs	r3, #0
	b	.L941
.L934:
	.loc 10 6969 32
	movs	r3, #0
	b	.L941
.L933:
	.loc 10 6971 32
	movs	r3, #0
	b	.L941
.L932:
	.loc 10 6975 16
	movs	r3, #0
.L941:
	.loc 10 6977 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L943:
	.align	2
.L942:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE453:
	.size	nrf52_errata_144, .-nrf52_errata_144
	.section	.text.nrf52_errata_145,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_145, %function
nrf52_errata_145:
.LFB454:
	.loc 10 6991 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 6996 29
	ldr	r3, .L955
	.loc 10 6996 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 6997 29
	ldr	r3, .L955+4
	.loc 10 6997 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7000 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L945
	.loc 10 7002 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L946
	adr	r2, .L948
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L948:
	.word	.L953+1
	.word	.L952+1
	.word	.L951+1
	.word	.L950+1
	.word	.L949+1
	.word	.L947+1
	.p2align 1
.L953:
	.loc 10 7005 32
	movs	r3, #1
	b	.L954
.L952:
	.loc 10 7007 32
	movs	r3, #0
	b	.L954
.L951:
	.loc 10 7009 32
	movs	r3, #0
	b	.L954
.L950:
	.loc 10 7011 32
	movs	r3, #0
	b	.L954
.L949:
	.loc 10 7013 32
	movs	r3, #0
	b	.L954
.L947:
	.loc 10 7015 32
	movs	r3, #0
	b	.L954
.L946:
	.loc 10 7017 32
	movs	r3, #0
	b	.L954
.L945:
	.loc 10 7021 16
	movs	r3, #0
.L954:
	.loc 10 7023 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L956:
	.align	2
.L955:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE454:
	.size	nrf52_errata_145, .-nrf52_errata_145
	.section	.text.nrf52_errata_146,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_146, %function
nrf52_errata_146:
.LFB455:
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
.LFE455:
	.size	nrf52_errata_146, .-nrf52_errata_146
	.section	.text.nrf52_errata_147,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_147, %function
nrf52_errata_147:
.LFB456:
	.loc 10 7095 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7100 29
	ldr	r3, .L970
	.loc 10 7100 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7101 29
	ldr	r3, .L970+4
	.loc 10 7101 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7104 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L960
	.loc 10 7106 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L961
	adr	r2, .L963
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L963:
	.word	.L968+1
	.word	.L967+1
	.word	.L966+1
	.word	.L965+1
	.word	.L964+1
	.word	.L962+1
	.p2align 1
.L968:
	.loc 10 7109 32
	movs	r3, #1
	b	.L969
.L967:
	.loc 10 7111 32
	movs	r3, #0
	b	.L969
.L966:
	.loc 10 7113 32
	movs	r3, #0
	b	.L969
.L965:
	.loc 10 7115 32
	movs	r3, #0
	b	.L969
.L964:
	.loc 10 7117 32
	movs	r3, #0
	b	.L969
.L962:
	.loc 10 7119 32
	movs	r3, #0
	b	.L969
.L961:
	.loc 10 7121 32
	movs	r3, #0
	b	.L969
.L960:
	.loc 10 7125 16
	movs	r3, #0
.L969:
	.loc 10 7127 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L971:
	.align	2
.L970:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE456:
	.size	nrf52_errata_147, .-nrf52_errata_147
	.section	.text.nrf52_errata_149,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_149, %function
nrf52_errata_149:
.LFB457:
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
.LFE457:
	.size	nrf52_errata_149, .-nrf52_errata_149
	.section	.text.nrf52_errata_150,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_150, %function
nrf52_errata_150:
.LFB458:
	.loc 10 7202 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7223 29
	ldr	r3, .L985
	.loc 10 7223 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7224 29
	ldr	r3, .L985+4
	.loc 10 7224 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7248 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L975
	.loc 10 7250 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L976
	adr	r2, .L978
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L978:
	.word	.L983+1
	.word	.L982+1
	.word	.L981+1
	.word	.L980+1
	.word	.L979+1
	.word	.L977+1
	.p2align 1
.L983:
	.loc 10 7253 32
	movs	r3, #1
	b	.L984
.L982:
	.loc 10 7255 32
	movs	r3, #0
	b	.L984
.L981:
	.loc 10 7257 32
	movs	r3, #0
	b	.L984
.L980:
	.loc 10 7259 32
	movs	r3, #0
	b	.L984
.L979:
	.loc 10 7261 32
	movs	r3, #0
	b	.L984
.L977:
	.loc 10 7263 32
	movs	r3, #0
	b	.L984
.L976:
	.loc 10 7265 32
	movs	r3, #0
	b	.L984
.L975:
	.loc 10 7283 16
	movs	r3, #0
.L984:
	.loc 10 7285 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L986:
	.align	2
.L985:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE458:
	.size	nrf52_errata_150, .-nrf52_errata_150
	.section	.text.nrf52_errata_151,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_151, %function
nrf52_errata_151:
.LFB459:
	.loc 10 7299 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7304 29
	ldr	r3, .L998
	.loc 10 7304 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7305 29
	ldr	r3, .L998+4
	.loc 10 7305 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7308 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L988
	.loc 10 7310 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L989
	adr	r2, .L991
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L991:
	.word	.L996+1
	.word	.L995+1
	.word	.L994+1
	.word	.L993+1
	.word	.L992+1
	.word	.L990+1
	.p2align 1
.L996:
	.loc 10 7313 32
	movs	r3, #1
	b	.L997
.L995:
	.loc 10 7315 32
	movs	r3, #0
	b	.L997
.L994:
	.loc 10 7317 32
	movs	r3, #0
	b	.L997
.L993:
	.loc 10 7319 32
	movs	r3, #0
	b	.L997
.L992:
	.loc 10 7321 32
	movs	r3, #0
	b	.L997
.L990:
	.loc 10 7323 32
	movs	r3, #0
	b	.L997
.L989:
	.loc 10 7325 32
	movs	r3, #0
	b	.L997
.L988:
	.loc 10 7329 16
	movs	r3, #0
.L997:
	.loc 10 7331 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L999:
	.align	2
.L998:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE459:
	.size	nrf52_errata_151, .-nrf52_errata_151
	.section	.text.nrf52_errata_153,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_153, %function
nrf52_errata_153:
.LFB460:
	.loc 10 7347 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7354 29
	ldr	r3, .L1011
	.loc 10 7354 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7355 29
	ldr	r3, .L1011+4
	.loc 10 7355 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7358 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1001
	.loc 10 7360 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1002
	adr	r2, .L1004
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1004:
	.word	.L1009+1
	.word	.L1008+1
	.word	.L1007+1
	.word	.L1006+1
	.word	.L1005+1
	.word	.L1003+1
	.p2align 1
.L1009:
	.loc 10 7363 32
	movs	r3, #1
	b	.L1010
.L1008:
	.loc 10 7365 32
	movs	r3, #1
	b	.L1010
.L1007:
	.loc 10 7367 32
	movs	r3, #1
	b	.L1010
.L1006:
	.loc 10 7369 32
	movs	r3, #1
	b	.L1010
.L1005:
	.loc 10 7371 32
	movs	r3, #1
	b	.L1010
.L1003:
	.loc 10 7373 32
	movs	r3, #1
	b	.L1010
.L1002:
	.loc 10 7375 32
	movs	r3, #1
	b	.L1010
.L1001:
	.loc 10 7405 16
	movs	r3, #0
.L1010:
	.loc 10 7407 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1012:
	.align	2
.L1011:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE460:
	.size	nrf52_errata_153, .-nrf52_errata_153
	.section	.text.nrf52_errata_154,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_154, %function
nrf52_errata_154:
.LFB461:
	.loc 10 7421 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7426 29
	ldr	r3, .L1024
	.loc 10 7426 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7427 29
	ldr	r3, .L1024+4
	.loc 10 7427 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7430 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1014
	.loc 10 7432 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1015
	adr	r2, .L1017
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1017:
	.word	.L1022+1
	.word	.L1021+1
	.word	.L1020+1
	.word	.L1019+1
	.word	.L1018+1
	.word	.L1016+1
	.p2align 1
.L1022:
	.loc 10 7435 32
	movs	r3, #1
	b	.L1023
.L1021:
	.loc 10 7437 32
	movs	r3, #0
	b	.L1023
.L1020:
	.loc 10 7439 32
	movs	r3, #0
	b	.L1023
.L1019:
	.loc 10 7441 32
	movs	r3, #0
	b	.L1023
.L1018:
	.loc 10 7443 32
	movs	r3, #0
	b	.L1023
.L1016:
	.loc 10 7445 32
	movs	r3, #0
	b	.L1023
.L1015:
	.loc 10 7447 32
	movs	r3, #0
	b	.L1023
.L1014:
	.loc 10 7451 16
	movs	r3, #0
.L1023:
	.loc 10 7453 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1025:
	.align	2
.L1024:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE461:
	.size	nrf52_errata_154, .-nrf52_errata_154
	.section	.text.nrf52_errata_155,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_155, %function
nrf52_errata_155:
.LFB462:
	.loc 10 7472 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7495 29
	ldr	r3, .L1037
	.loc 10 7495 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7496 29
	ldr	r3, .L1037+4
	.loc 10 7496 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7520 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1027
	.loc 10 7522 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1028
	adr	r2, .L1030
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1030:
	.word	.L1035+1
	.word	.L1034+1
	.word	.L1033+1
	.word	.L1032+1
	.word	.L1031+1
	.word	.L1029+1
	.p2align 1
.L1035:
	.loc 10 7525 32
	movs	r3, #1
	b	.L1036
.L1034:
	.loc 10 7527 32
	movs	r3, #1
	b	.L1036
.L1033:
	.loc 10 7529 32
	movs	r3, #1
	b	.L1036
.L1032:
	.loc 10 7531 32
	movs	r3, #1
	b	.L1036
.L1031:
	.loc 10 7533 32
	movs	r3, #1
	b	.L1036
.L1029:
	.loc 10 7535 32
	movs	r3, #1
	b	.L1036
.L1028:
	.loc 10 7537 32
	movs	r3, #1
	b	.L1036
.L1027:
	.loc 10 7579 16
	movs	r3, #0
.L1036:
	.loc 10 7581 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1038:
	.align	2
.L1037:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE462:
	.size	nrf52_errata_155, .-nrf52_errata_155
	.section	.text.nrf52_errata_156,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_156, %function
nrf52_errata_156:
.LFB463:
	.loc 10 7600 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7623 29
	ldr	r3, .L1050
	.loc 10 7623 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7624 29
	ldr	r3, .L1050+4
	.loc 10 7624 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7648 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1040
	.loc 10 7650 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1041
	adr	r2, .L1043
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1043:
	.word	.L1048+1
	.word	.L1047+1
	.word	.L1046+1
	.word	.L1045+1
	.word	.L1044+1
	.word	.L1042+1
	.p2align 1
.L1048:
	.loc 10 7653 32
	movs	r3, #1
	b	.L1049
.L1047:
	.loc 10 7655 32
	movs	r3, #0
	b	.L1049
.L1046:
	.loc 10 7657 32
	movs	r3, #0
	b	.L1049
.L1045:
	.loc 10 7659 32
	movs	r3, #0
	b	.L1049
.L1044:
	.loc 10 7661 32
	movs	r3, #0
	b	.L1049
.L1042:
	.loc 10 7663 32
	movs	r3, #0
	b	.L1049
.L1041:
	.loc 10 7665 32
	movs	r3, #0
	b	.L1049
.L1040:
	.loc 10 7707 16
	movs	r3, #0
.L1049:
	.loc 10 7709 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1051:
	.align	2
.L1050:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE463:
	.size	nrf52_errata_156, .-nrf52_errata_156
	.section	.text.nrf52_errata_158,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_158, %function
nrf52_errata_158:
.LFB464:
	.loc 10 7723 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7728 29
	ldr	r3, .L1063
	.loc 10 7728 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7729 29
	ldr	r3, .L1063+4
	.loc 10 7729 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7732 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1053
	.loc 10 7734 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1054
	adr	r2, .L1056
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1056:
	.word	.L1061+1
	.word	.L1060+1
	.word	.L1059+1
	.word	.L1058+1
	.word	.L1057+1
	.word	.L1055+1
	.p2align 1
.L1061:
	.loc 10 7737 32
	movs	r3, #1
	b	.L1062
.L1060:
	.loc 10 7739 32
	movs	r3, #0
	b	.L1062
.L1059:
	.loc 10 7741 32
	movs	r3, #0
	b	.L1062
.L1058:
	.loc 10 7743 32
	movs	r3, #0
	b	.L1062
.L1057:
	.loc 10 7745 32
	movs	r3, #0
	b	.L1062
.L1055:
	.loc 10 7747 32
	movs	r3, #0
	b	.L1062
.L1054:
	.loc 10 7749 32
	movs	r3, #0
	b	.L1062
.L1053:
	.loc 10 7753 16
	movs	r3, #0
.L1062:
	.loc 10 7755 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1064:
	.align	2
.L1063:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE464:
	.size	nrf52_errata_158, .-nrf52_errata_158
	.section	.text.nrf52_errata_160,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_160, %function
nrf52_errata_160:
.LFB465:
	.loc 10 7769 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7774 29
	ldr	r3, .L1076
	.loc 10 7774 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7775 29
	ldr	r3, .L1076+4
	.loc 10 7775 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7778 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1066
	.loc 10 7780 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1067
	adr	r2, .L1069
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1069:
	.word	.L1074+1
	.word	.L1073+1
	.word	.L1072+1
	.word	.L1071+1
	.word	.L1070+1
	.word	.L1068+1
	.p2align 1
.L1074:
	.loc 10 7783 32
	movs	r3, #1
	b	.L1075
.L1073:
	.loc 10 7785 32
	movs	r3, #0
	b	.L1075
.L1072:
	.loc 10 7787 32
	movs	r3, #0
	b	.L1075
.L1071:
	.loc 10 7789 32
	movs	r3, #0
	b	.L1075
.L1070:
	.loc 10 7791 32
	movs	r3, #0
	b	.L1075
.L1068:
	.loc 10 7793 32
	movs	r3, #0
	b	.L1075
.L1067:
	.loc 10 7795 32
	movs	r3, #0
	b	.L1075
.L1066:
	.loc 10 7799 16
	movs	r3, #0
.L1075:
	.loc 10 7801 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1077:
	.align	2
.L1076:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE465:
	.size	nrf52_errata_160, .-nrf52_errata_160
	.section	.text.nrf52_errata_162,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_162, %function
nrf52_errata_162:
.LFB466:
	.loc 10 7815 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7820 29
	ldr	r3, .L1089
	.loc 10 7820 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7821 29
	ldr	r3, .L1089+4
	.loc 10 7821 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7824 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1079
	.loc 10 7826 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1080
	adr	r2, .L1082
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1082:
	.word	.L1087+1
	.word	.L1086+1
	.word	.L1085+1
	.word	.L1084+1
	.word	.L1083+1
	.word	.L1081+1
	.p2align 1
.L1087:
	.loc 10 7829 32
	movs	r3, #1
	b	.L1088
.L1086:
	.loc 10 7831 32
	movs	r3, #0
	b	.L1088
.L1085:
	.loc 10 7833 32
	movs	r3, #0
	b	.L1088
.L1084:
	.loc 10 7835 32
	movs	r3, #0
	b	.L1088
.L1083:
	.loc 10 7837 32
	movs	r3, #0
	b	.L1088
.L1081:
	.loc 10 7839 32
	movs	r3, #0
	b	.L1088
.L1080:
	.loc 10 7841 32
	movs	r3, #0
	b	.L1088
.L1079:
	.loc 10 7845 16
	movs	r3, #0
.L1088:
	.loc 10 7847 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1090:
	.align	2
.L1089:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE466:
	.size	nrf52_errata_162, .-nrf52_errata_162
	.section	.text.nrf52_errata_163,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_163, %function
nrf52_errata_163:
.LFB467:
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
.LFE467:
	.size	nrf52_errata_163, .-nrf52_errata_163
	.section	.text.nrf52_errata_164,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_164, %function
nrf52_errata_164:
.LFB468:
	.loc 10 7919 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7924 29
	ldr	r3, .L1104
	.loc 10 7924 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7925 29
	ldr	r3, .L1104+4
	.loc 10 7925 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7928 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1094
	.loc 10 7930 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1095
	adr	r2, .L1097
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1097:
	.word	.L1102+1
	.word	.L1101+1
	.word	.L1100+1
	.word	.L1099+1
	.word	.L1098+1
	.word	.L1096+1
	.p2align 1
.L1102:
	.loc 10 7933 32
	movs	r3, #1
	b	.L1103
.L1101:
	.loc 10 7935 32
	movs	r3, #0
	b	.L1103
.L1100:
	.loc 10 7937 32
	movs	r3, #0
	b	.L1103
.L1099:
	.loc 10 7939 32
	movs	r3, #0
	b	.L1103
.L1098:
	.loc 10 7941 32
	movs	r3, #0
	b	.L1103
.L1096:
	.loc 10 7943 32
	movs	r3, #0
	b	.L1103
.L1095:
	.loc 10 7945 32
	movs	r3, #0
	b	.L1103
.L1094:
	.loc 10 7949 16
	movs	r3, #0
.L1103:
	.loc 10 7951 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1105:
	.align	2
.L1104:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE468:
	.size	nrf52_errata_164, .-nrf52_errata_164
	.section	.text.nrf52_errata_166,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_166, %function
nrf52_errata_166:
.LFB469:
	.loc 10 7965 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 7970 29
	ldr	r3, .L1117
	.loc 10 7970 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 7971 29
	ldr	r3, .L1117+4
	.loc 10 7971 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 7974 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1107
	.loc 10 7976 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1108
	adr	r2, .L1110
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1110:
	.word	.L1115+1
	.word	.L1114+1
	.word	.L1113+1
	.word	.L1112+1
	.word	.L1111+1
	.word	.L1109+1
	.p2align 1
.L1115:
	.loc 10 7979 32
	movs	r3, #1
	b	.L1116
.L1114:
	.loc 10 7981 32
	movs	r3, #1
	b	.L1116
.L1113:
	.loc 10 7983 32
	movs	r3, #1
	b	.L1116
.L1112:
	.loc 10 7985 32
	movs	r3, #1
	b	.L1116
.L1111:
	.loc 10 7987 32
	movs	r3, #1
	b	.L1116
.L1109:
	.loc 10 7989 32
	movs	r3, #1
	b	.L1116
.L1108:
	.loc 10 7991 32
	movs	r3, #1
	b	.L1116
.L1107:
	.loc 10 7995 16
	movs	r3, #0
.L1116:
	.loc 10 7997 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1118:
	.align	2
.L1117:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE469:
	.size	nrf52_errata_166, .-nrf52_errata_166
	.section	.text.nrf52_errata_170,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_170, %function
nrf52_errata_170:
.LFB470:
	.loc 10 8013 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8020 29
	ldr	r3, .L1130
	.loc 10 8020 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8021 29
	ldr	r3, .L1130+4
	.loc 10 8021 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8024 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1120
	.loc 10 8026 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1121
	adr	r2, .L1123
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1123:
	.word	.L1128+1
	.word	.L1127+1
	.word	.L1126+1
	.word	.L1125+1
	.word	.L1124+1
	.word	.L1122+1
	.p2align 1
.L1128:
	.loc 10 8029 32
	movs	r3, #1
	b	.L1129
.L1127:
	.loc 10 8031 32
	movs	r3, #1
	b	.L1129
.L1126:
	.loc 10 8033 32
	movs	r3, #1
	b	.L1129
.L1125:
	.loc 10 8035 32
	movs	r3, #1
	b	.L1129
.L1124:
	.loc 10 8037 32
	movs	r3, #1
	b	.L1129
.L1122:
	.loc 10 8039 32
	movs	r3, #1
	b	.L1129
.L1121:
	.loc 10 8041 32
	movs	r3, #1
	b	.L1129
.L1120:
	.loc 10 8079 16
	movs	r3, #0
.L1129:
	.loc 10 8081 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1131:
	.align	2
.L1130:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE470:
	.size	nrf52_errata_170, .-nrf52_errata_170
	.section	.text.nrf52_errata_171,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_171, %function
nrf52_errata_171:
.LFB471:
	.loc 10 8095 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8100 29
	ldr	r3, .L1143
	.loc 10 8100 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8101 29
	ldr	r3, .L1143+4
	.loc 10 8101 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8104 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1133
	.loc 10 8106 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1134
	adr	r2, .L1136
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1136:
	.word	.L1141+1
	.word	.L1140+1
	.word	.L1139+1
	.word	.L1138+1
	.word	.L1137+1
	.word	.L1135+1
	.p2align 1
.L1141:
	.loc 10 8109 32
	movs	r3, #1
	b	.L1142
.L1140:
	.loc 10 8111 32
	movs	r3, #1
	b	.L1142
.L1139:
	.loc 10 8113 32
	movs	r3, #1
	b	.L1142
.L1138:
	.loc 10 8115 32
	movs	r3, #1
	b	.L1142
.L1137:
	.loc 10 8117 32
	movs	r3, #1
	b	.L1142
.L1135:
	.loc 10 8119 32
	movs	r3, #1
	b	.L1142
.L1134:
	.loc 10 8121 32
	movs	r3, #1
	b	.L1142
.L1133:
	.loc 10 8125 16
	movs	r3, #0
.L1142:
	.loc 10 8127 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1144:
	.align	2
.L1143:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE471:
	.size	nrf52_errata_171, .-nrf52_errata_171
	.section	.text.nrf52_errata_172,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_172, %function
nrf52_errata_172:
.LFB472:
	.loc 10 8141 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8146 29
	ldr	r3, .L1156
	.loc 10 8146 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8147 29
	ldr	r3, .L1156+4
	.loc 10 8147 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8150 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1146
	.loc 10 8152 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1147
	adr	r2, .L1149
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1149:
	.word	.L1154+1
	.word	.L1153+1
	.word	.L1152+1
	.word	.L1151+1
	.word	.L1150+1
	.word	.L1148+1
	.p2align 1
.L1154:
	.loc 10 8155 32
	movs	r3, #0
	b	.L1155
.L1153:
	.loc 10 8157 32
	movs	r3, #1
	b	.L1155
.L1152:
	.loc 10 8159 32
	movs	r3, #1
	b	.L1155
.L1151:
	.loc 10 8161 32
	movs	r3, #1
	b	.L1155
.L1150:
	.loc 10 8163 32
	movs	r3, #1
	b	.L1155
.L1148:
	.loc 10 8165 32
	movs	r3, #1
	b	.L1155
.L1147:
	.loc 10 8167 32
	movs	r3, #1
	b	.L1155
.L1146:
	.loc 10 8171 16
	movs	r3, #0
.L1155:
	.loc 10 8173 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1157:
	.align	2
.L1156:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE472:
	.size	nrf52_errata_172, .-nrf52_errata_172
	.section	.text.nrf52_errata_173,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_173, %function
nrf52_errata_173:
.LFB473:
	.loc 10 8194 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8219 29
	ldr	r3, .L1169
	.loc 10 8219 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8220 29
	ldr	r3, .L1169+4
	.loc 10 8220 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8244 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1159
	.loc 10 8246 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1160
	adr	r2, .L1162
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1162:
	.word	.L1167+1
	.word	.L1166+1
	.word	.L1165+1
	.word	.L1164+1
	.word	.L1163+1
	.word	.L1161+1
	.p2align 1
.L1167:
	.loc 10 8249 32
	movs	r3, #1
	b	.L1168
.L1166:
	.loc 10 8251 32
	movs	r3, #1
	b	.L1168
.L1165:
	.loc 10 8253 32
	movs	r3, #1
	b	.L1168
.L1164:
	.loc 10 8255 32
	movs	r3, #1
	b	.L1168
.L1163:
	.loc 10 8257 32
	movs	r3, #1
	b	.L1168
.L1161:
	.loc 10 8259 32
	movs	r3, #1
	b	.L1168
.L1160:
	.loc 10 8261 32
	movs	r3, #1
	b	.L1168
.L1159:
	.loc 10 8337 16
	movs	r3, #0
.L1168:
	.loc 10 8339 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1170:
	.align	2
.L1169:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE473:
	.size	nrf52_errata_173, .-nrf52_errata_173
	.section	.text.nrf52_errata_174,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_174, %function
nrf52_errata_174:
.LFB474:
	.loc 10 8353 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8358 29
	ldr	r3, .L1182
	.loc 10 8358 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8359 29
	ldr	r3, .L1182+4
	.loc 10 8359 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8362 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1172
	.loc 10 8364 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1173
	adr	r2, .L1175
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1175:
	.word	.L1180+1
	.word	.L1179+1
	.word	.L1178+1
	.word	.L1177+1
	.word	.L1176+1
	.word	.L1174+1
	.p2align 1
.L1180:
	.loc 10 8367 32
	movs	r3, #0
	b	.L1181
.L1179:
	.loc 10 8369 32
	movs	r3, #1
	b	.L1181
.L1178:
	.loc 10 8371 32
	movs	r3, #1
	b	.L1181
.L1177:
	.loc 10 8373 32
	movs	r3, #1
	b	.L1181
.L1176:
	.loc 10 8375 32
	movs	r3, #1
	b	.L1181
.L1174:
	.loc 10 8377 32
	movs	r3, #1
	b	.L1181
.L1173:
	.loc 10 8379 32
	movs	r3, #1
	b	.L1181
.L1172:
	.loc 10 8383 16
	movs	r3, #0
.L1181:
	.loc 10 8385 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1183:
	.align	2
.L1182:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE474:
	.size	nrf52_errata_174, .-nrf52_errata_174
	.section	.text.nrf52_errata_176,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_176, %function
nrf52_errata_176:
.LFB475:
	.loc 10 8406 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8431 29
	ldr	r3, .L1195
	.loc 10 8431 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8432 29
	ldr	r3, .L1195+4
	.loc 10 8432 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8456 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1185
	.loc 10 8458 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1186
	adr	r2, .L1188
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1188:
	.word	.L1193+1
	.word	.L1192+1
	.word	.L1191+1
	.word	.L1190+1
	.word	.L1189+1
	.word	.L1187+1
	.p2align 1
.L1193:
	.loc 10 8461 32
	movs	r3, #1
	b	.L1194
.L1192:
	.loc 10 8463 32
	movs	r3, #1
	b	.L1194
.L1191:
	.loc 10 8465 32
	movs	r3, #1
	b	.L1194
.L1190:
	.loc 10 8467 32
	movs	r3, #1
	b	.L1194
.L1189:
	.loc 10 8469 32
	movs	r3, #1
	b	.L1194
.L1187:
	.loc 10 8471 32
	movs	r3, #1
	b	.L1194
.L1186:
	.loc 10 8473 32
	movs	r3, #1
	b	.L1194
.L1185:
	.loc 10 8549 16
	movs	r3, #0
.L1194:
	.loc 10 8551 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1196:
	.align	2
.L1195:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE475:
	.size	nrf52_errata_176, .-nrf52_errata_176
	.section	.text.nrf52_errata_178,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_178, %function
nrf52_errata_178:
.LFB476:
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
.LFE476:
	.size	nrf52_errata_178, .-nrf52_errata_178
	.section	.text.nrf52_errata_179,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_179, %function
nrf52_errata_179:
.LFB477:
	.loc 10 8628 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8651 29
	ldr	r3, .L1210
	.loc 10 8651 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8652 29
	ldr	r3, .L1210+4
	.loc 10 8652 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8676 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1200
	.loc 10 8678 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1201
	adr	r2, .L1203
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1203:
	.word	.L1208+1
	.word	.L1207+1
	.word	.L1206+1
	.word	.L1205+1
	.word	.L1204+1
	.word	.L1202+1
	.p2align 1
.L1208:
	.loc 10 8681 32
	movs	r3, #1
	b	.L1209
.L1207:
	.loc 10 8683 32
	movs	r3, #1
	b	.L1209
.L1206:
	.loc 10 8685 32
	movs	r3, #1
	b	.L1209
.L1205:
	.loc 10 8687 32
	movs	r3, #1
	b	.L1209
.L1204:
	.loc 10 8689 32
	movs	r3, #1
	b	.L1209
.L1202:
	.loc 10 8691 32
	movs	r3, #1
	b	.L1209
.L1201:
	.loc 10 8693 32
	movs	r3, #1
	b	.L1209
.L1200:
	.loc 10 8735 16
	movs	r3, #0
.L1209:
	.loc 10 8737 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1211:
	.align	2
.L1210:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE477:
	.size	nrf52_errata_179, .-nrf52_errata_179
	.section	.text.nrf52_errata_180,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_180, %function
nrf52_errata_180:
.LFB478:
	.loc 10 8751 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8756 29
	ldr	r3, .L1223
	.loc 10 8756 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8757 29
	ldr	r3, .L1223+4
	.loc 10 8757 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8760 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1213
	.loc 10 8762 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1214
	adr	r2, .L1216
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1216:
	.word	.L1221+1
	.word	.L1220+1
	.word	.L1219+1
	.word	.L1218+1
	.word	.L1217+1
	.word	.L1215+1
	.p2align 1
.L1221:
	.loc 10 8765 32
	movs	r3, #1
	b	.L1222
.L1220:
	.loc 10 8767 32
	movs	r3, #0
	b	.L1222
.L1219:
	.loc 10 8769 32
	movs	r3, #0
	b	.L1222
.L1218:
	.loc 10 8771 32
	movs	r3, #0
	b	.L1222
.L1217:
	.loc 10 8773 32
	movs	r3, #0
	b	.L1222
.L1215:
	.loc 10 8775 32
	movs	r3, #0
	b	.L1222
.L1214:
	.loc 10 8777 32
	movs	r3, #0
	b	.L1222
.L1213:
	.loc 10 8781 16
	movs	r3, #0
.L1222:
	.loc 10 8783 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1224:
	.align	2
.L1223:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE478:
	.size	nrf52_errata_180, .-nrf52_errata_180
	.section	.text.nrf52_errata_181,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_181, %function
nrf52_errata_181:
.LFB479:
	.loc 10 8799 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8819 29
	ldr	r3, .L1236
	.loc 10 8819 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8820 29
	ldr	r3, .L1236+4
	.loc 10 8820 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8844 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1226
	.loc 10 8846 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1227
	adr	r2, .L1229
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1229:
	.word	.L1234+1
	.word	.L1233+1
	.word	.L1232+1
	.word	.L1231+1
	.word	.L1230+1
	.word	.L1228+1
	.p2align 1
.L1234:
	.loc 10 8849 32
	movs	r3, #1
	b	.L1235
.L1233:
	.loc 10 8851 32
	movs	r3, #0
	b	.L1235
.L1232:
	.loc 10 8853 32
	movs	r3, #0
	b	.L1235
.L1231:
	.loc 10 8855 32
	movs	r3, #0
	b	.L1235
.L1230:
	.loc 10 8857 32
	movs	r3, #0
	b	.L1235
.L1228:
	.loc 10 8859 32
	movs	r3, #0
	b	.L1235
.L1227:
	.loc 10 8861 32
	movs	r3, #0
	b	.L1235
.L1226:
	.loc 10 8865 16
	movs	r3, #0
.L1235:
	.loc 10 8867 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1237:
	.align	2
.L1236:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE479:
	.size	nrf52_errata_181, .-nrf52_errata_181
	.section	.text.nrf52_errata_182,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_182, %function
nrf52_errata_182:
.LFB480:
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
.LFE480:
	.size	nrf52_errata_182, .-nrf52_errata_182
	.section	.text.nrf52_errata_183,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_183, %function
nrf52_errata_183:
.LFB481:
	.loc 10 8934 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 8958 29
	ldr	r3, .L1251
	.loc 10 8958 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 8959 29
	ldr	r3, .L1251+4
	.loc 10 8959 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 8983 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1241
	.loc 10 8985 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1242
	adr	r2, .L1244
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1244:
	.word	.L1249+1
	.word	.L1248+1
	.word	.L1247+1
	.word	.L1246+1
	.word	.L1245+1
	.word	.L1243+1
	.p2align 1
.L1249:
	.loc 10 8988 32
	movs	r3, #1
	b	.L1250
.L1248:
	.loc 10 8990 32
	movs	r3, #1
	b	.L1250
.L1247:
	.loc 10 8992 32
	movs	r3, #1
	b	.L1250
.L1246:
	.loc 10 8994 32
	movs	r3, #1
	b	.L1250
.L1245:
	.loc 10 8996 32
	movs	r3, #1
	b	.L1250
.L1243:
	.loc 10 8998 32
	movs	r3, #1
	b	.L1250
.L1242:
	.loc 10 9000 32
	movs	r3, #1
	b	.L1250
.L1241:
	.loc 10 9064 16
	movs	r3, #0
.L1250:
	.loc 10 9066 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1252:
	.align	2
.L1251:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE481:
	.size	nrf52_errata_183, .-nrf52_errata_183
	.section	.text.nrf52_errata_184,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_184, %function
nrf52_errata_184:
.LFB482:
	.loc 10 9085 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9095 29
	ldr	r3, .L1264
	.loc 10 9095 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9096 29
	ldr	r3, .L1264+4
	.loc 10 9096 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9099 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1254
	.loc 10 9101 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1255
	adr	r2, .L1257
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1257:
	.word	.L1262+1
	.word	.L1261+1
	.word	.L1260+1
	.word	.L1259+1
	.word	.L1258+1
	.word	.L1256+1
	.p2align 1
.L1262:
	.loc 10 9104 32
	movs	r3, #1
	b	.L1263
.L1261:
	.loc 10 9106 32
	movs	r3, #1
	b	.L1263
.L1260:
	.loc 10 9108 32
	movs	r3, #1
	b	.L1263
.L1259:
	.loc 10 9110 32
	movs	r3, #1
	b	.L1263
.L1258:
	.loc 10 9112 32
	movs	r3, #1
	b	.L1263
.L1256:
	.loc 10 9114 32
	movs	r3, #1
	b	.L1263
.L1255:
	.loc 10 9116 32
	movs	r3, #1
	b	.L1263
.L1254:
	.loc 10 9192 16
	movs	r3, #0
.L1263:
	.loc 10 9194 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1265:
	.align	2
.L1264:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE482:
	.size	nrf52_errata_184, .-nrf52_errata_184
	.section	.text.nrf52_errata_186,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_186, %function
nrf52_errata_186:
.LFB483:
	.loc 10 9208 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9213 29
	ldr	r3, .L1277
	.loc 10 9213 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9214 29
	ldr	r3, .L1277+4
	.loc 10 9214 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9217 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1267
	.loc 10 9219 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1268
	adr	r2, .L1270
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1270:
	.word	.L1275+1
	.word	.L1274+1
	.word	.L1273+1
	.word	.L1272+1
	.word	.L1271+1
	.word	.L1269+1
	.p2align 1
.L1275:
	.loc 10 9222 32
	movs	r3, #0
	b	.L1276
.L1274:
	.loc 10 9224 32
	movs	r3, #1
	b	.L1276
.L1273:
	.loc 10 9226 32
	movs	r3, #0
	b	.L1276
.L1272:
	.loc 10 9228 32
	movs	r3, #0
	b	.L1276
.L1271:
	.loc 10 9230 32
	movs	r3, #0
	b	.L1276
.L1269:
	.loc 10 9232 32
	movs	r3, #0
	b	.L1276
.L1268:
	.loc 10 9234 32
	movs	r3, #0
	b	.L1276
.L1267:
	.loc 10 9238 16
	movs	r3, #0
.L1276:
	.loc 10 9240 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1278:
	.align	2
.L1277:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE483:
	.size	nrf52_errata_186, .-nrf52_errata_186
	.section	.text.nrf52_errata_187,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_187, %function
nrf52_errata_187:
.LFB484:
	.loc 10 9256 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9263 29
	ldr	r3, .L1290
	.loc 10 9263 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9264 29
	ldr	r3, .L1290+4
	.loc 10 9264 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9267 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1280
	.loc 10 9269 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1281
	adr	r2, .L1283
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1283:
	.word	.L1288+1
	.word	.L1287+1
	.word	.L1286+1
	.word	.L1285+1
	.word	.L1284+1
	.word	.L1282+1
	.p2align 1
.L1288:
	.loc 10 9272 32
	movs	r3, #0
	b	.L1289
.L1287:
	.loc 10 9274 32
	movs	r3, #1
	b	.L1289
.L1286:
	.loc 10 9276 32
	movs	r3, #1
	b	.L1289
.L1285:
	.loc 10 9278 32
	movs	r3, #1
	b	.L1289
.L1284:
	.loc 10 9280 32
	movs	r3, #1
	b	.L1289
.L1282:
	.loc 10 9282 32
	movs	r3, #1
	b	.L1289
.L1281:
	.loc 10 9284 32
	movs	r3, #1
	b	.L1289
.L1280:
	.loc 10 9322 16
	movs	r3, #0
.L1289:
	.loc 10 9324 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1291:
	.align	2
.L1290:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE484:
	.size	nrf52_errata_187, .-nrf52_errata_187
	.section	.text.nrf52_errata_189,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_189, %function
nrf52_errata_189:
.LFB485:
	.loc 10 9338 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9343 29
	ldr	r3, .L1303
	.loc 10 9343 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9344 29
	ldr	r3, .L1303+4
	.loc 10 9344 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9347 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1293
	.loc 10 9349 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1294
	adr	r2, .L1296
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1296:
	.word	.L1301+1
	.word	.L1300+1
	.word	.L1299+1
	.word	.L1298+1
	.word	.L1297+1
	.word	.L1295+1
	.p2align 1
.L1301:
	.loc 10 9352 32
	movs	r3, #0
	b	.L1302
.L1300:
	.loc 10 9354 32
	movs	r3, #1
	b	.L1302
.L1299:
	.loc 10 9356 32
	movs	r3, #0
	b	.L1302
.L1298:
	.loc 10 9358 32
	movs	r3, #0
	b	.L1302
.L1297:
	.loc 10 9360 32
	movs	r3, #0
	b	.L1302
.L1295:
	.loc 10 9362 32
	movs	r3, #0
	b	.L1302
.L1294:
	.loc 10 9364 32
	movs	r3, #0
	b	.L1302
.L1293:
	.loc 10 9368 16
	movs	r3, #0
.L1302:
	.loc 10 9370 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1304:
	.align	2
.L1303:
	.word	268435760
	.word	268435764
	.cfi_endproc
.LFE485:
	.size	nrf52_errata_189, .-nrf52_errata_189
	.section	.text.nrf52_errata_190,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_190, %function
nrf52_errata_190:
.LFB486:
	.loc 10 9386 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 10 9393 29
	ldr	r3, .L1316
	.loc 10 9393 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 10 9394 29
	ldr	r3, .L1316+4
	.loc 10 9394 22
	ldr	r3, [r3]
	str	r3, [sp]
	.loc 10 9397 16
	ldr	r3, [sp, #4]
	cmp	r3, #8
	bne	.L1306
	.loc 10 9399 17
	ldr	r3, [sp]
	cmp	r3, #5
	bhi	.L1307
	adr	r2, .L1309
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1309:
	.word	.L1314+1
	.word	.L1313+1
	.word	.L1312+1
	.word	.L1311+1
	.word	.L1310+1
	.word	.L1308+1
	.p2align 1
.L1314:
	.loc 10 9402 32
	movs	r3, #0
	b	.L1315
.L1313:
	.loc 10 9404 32
	movs	r3, #1
	b	.L1315
.L1312:
	.loc 10 9406 