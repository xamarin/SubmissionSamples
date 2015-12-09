.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 4.2.1 (mono-4.2.0-branch-c6sr0/a7605b3 Mon Nov 30 11:48:05 EST 2015)"
	.asciz "System.Core.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF
System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af
.word 0xaa0003fa
.word 0xf90017bf
.word 0xb4000dfa
.word 0xf94013a0
bl _p_1
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1a03e0
bl _p_2
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xb4000380
.word 0xf94013a0
bl _p_3
.word 0xaa0003ef
.word 0xaa1903e0
.word 0xf9400321
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x6b1f001f
.word 0x54000a2d
.word 0x51000740
.word 0xf9002ba0
.word 0xf94013a0
bl _p_4
.word 0xaa0003ef
.word 0xf9402ba1
.word 0xaa1903e0
.word 0xf9400322
.word 0x92800ff0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x14000047
.word 0xf94013a0
bl _p_5
.word 0xaa0003ef
.word 0xaa1a03e0
.word 0xf9400341
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90017a0
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x15, [x16, #40]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x340003a0
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94013a0
bl _p_6
.word 0xaa0003ef
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0x928000f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x15, [x16, #40]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffd00
.word 0xaa1a03f9
.word 0x94000004
.word 0x14000014
.word 0x94000002
.word 0x14000010
.word 0xf90023be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x15, [x16, #48]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1903e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_7
bl _p_8
bl _p_9

Lme_0:
.text
	.align 4
	.no_dead_strip System_Linq_Error_ArgumentNull_string
System_Linq_Error_ArgumentNull_string:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x0, [x16, #56]
bl _p_10
.word 0xf90013a0
.word 0xf9400ba1
bl _p_11
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT
System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba8
.word 0xf9001faf
.word 0xaa0003fa
.word 0xf9401fa0
bl _p_12
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xf90023bf
.word 0xb9802320
.word 0x8b000300
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xb9802b21
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xb9803321
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xb400153a
.word 0xf9401fa0
bl _p_13
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1a03e0
bl _p_2
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb4000560
.word 0xf9401fa0
bl _p_14
.word 0xf90033a0
.word 0xf9401fa0
bl _p_15
.word 0xaa0003e1
.word 0xf94033af
.word 0xaa1703e0
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x6b1f001f
.word 0x54000ccd
.word 0x51000740
.word 0xf9003ba0
.word 0xf9401fa0
bl _p_16
.word 0xf9003fa0
.word 0xf9401fa0
bl _p_17
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xf9403faf
.word 0xb9803b20
.word 0x8b000308
.word 0xaa1703e0
.word 0xd63f0040
.word 0xf9401ba0
.word 0xb9803b21
.word 0x8b010301
.word 0xf90037a1
.word 0xf90033a0
.word 0xf9400720
.word 0xf9400f20
.word 0xf9401fa0
bl _p_18
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0x14000071
.word 0xf9401fa0
bl _p_19
.word 0xf90033a0
.word 0xf9401fa0
bl _p_20
.word 0xaa0003e1
.word 0xf94033af
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf90023a0
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x15, [x16, #40]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x34000460
.word 0xf94023a0
.word 0xf90033a0
.word 0xf9401fa0
bl _p_21
.word 0xf90037a0
.word 0xf9401fa0
bl _p_22
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf94037af
.word 0xb9802322
.word 0x8b020308
.word 0xd63f0020
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x15, [x16, #40]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffd00
.word 0xb9802320
.word 0x8b000301
.word 0xb9802b20
.word 0x8b000300
.word 0xf9400722
.word 0xf9400f23
.word 0xd63f0060
.word 0x94000004
.word 0x1400002c
.word 0x94000002
.word 0x14000010
.word 0xf9002fbe
.word 0xf94023a0
.word 0xb4000160
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x15, [x16, #48]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xb9803320
.word 0x8b000300
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xb9803320
.word 0x8b000301
.word 0xb9804320
.word 0x8b000300
.word 0xf9400722
.word 0xf9400f23
.word 0xd63f0060
.word 0xf9401ba0
.word 0xb9804321
.word 0x8b010301
.word 0xf90037a1
.word 0xf90033a0
.word 0xf9400720
.word 0xf9400f20
.word 0xf9401fa0
bl _p_18
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0x1400000e
.word 0xf9401ba0
.word 0xb9802b21
.word 0x8b010301
.word 0xf90037a1
.word 0xf90033a0
.word 0xf9400720
.word 0xf9400f20
.word 0xf9401fa0
bl _p_18
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_7
bl _p_8
bl _p_9

Lme_3:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF
bl System_Linq_Error_ArgumentNull_string
bl method_addresses
bl System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.byte 4,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,1,5,255,255,255,255,250,9
.section __TEXT, __const
	.align 3
extra_method_table:

	.byte 11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,42,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.byte 1,0,0,0,3,0,0,0,42,0,0,0
.section __TEXT, __const
	.align 3
class_name_table:

	.byte 11,0,1,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.byte 8,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,58,2,1,1,1,1,5,5
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.byte 4,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,130,117,36,255,255,255,253,103,130,156
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 18,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9,13,12,31,0,68,14,48,157,6,158,5,68,13
	.byte 29,24,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,151,14,152,13,68,153,12,154,11
.section __TEXT, __const
	.align 3
class_info_offsets:

	.byte 3,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,130,192,7,23

.text
	.align 4
plt:
mono_aot_System_Core_plt:
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_1:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #72]
br x16
.word 119
	.no_dead_strip plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
_p_2:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #80]
br x16
.word 125
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_3:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #88]
br x16
.word 140
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_4:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #96]
br x16
.word 161
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_5:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #104]
br x16
.word 188
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_6:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #112]
br x16
.word 216
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_7:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #120]
br x16
.word 237
	.no_dead_strip plt_System_Linq_Error_ArgumentNull_string
plt_System_Linq_Error_ArgumentNull_string:
_p_8:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #128]
br x16
.word 257
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_9:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #136]
br x16
.word 259
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_10:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #144]
br x16
.word 287
	.no_dead_strip plt_System_ArgumentNullException__ctor_string
plt_System_ArgumentNullException__ctor_string:
_p_11:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #152]
br x16
.word 310
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_12:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #160]
br x16
.word 331
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_13:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #168]
br x16
.word 386
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_14:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #176]
br x16
.word 401
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_15:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #184]
br x16
.word 423
	.no_dead_strip plt__rgctx_fetch_9
plt__rgctx_fetch_9:
_p_16:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #192]
br x16
.word 450
	.no_dead_strip plt__rgctx_fetch_10
plt__rgctx_fetch_10:
_p_17:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #200]
br x16
.word 472
	.no_dead_strip plt__rgctx_fetch_11
plt__rgctx_fetch_11:
_p_18:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #208]
br x16
.word 502
	.no_dead_strip plt__rgctx_fetch_12
plt__rgctx_fetch_12:
_p_19:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #216]
br x16
.word 516
	.no_dead_strip plt__rgctx_fetch_13
plt__rgctx_fetch_13:
_p_20:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #224]
br x16
.word 538
	.no_dead_strip plt__rgctx_fetch_14
plt__rgctx_fetch_14:
_p_21:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #232]
br x16
.word 578
	.no_dead_strip plt__rgctx_fetch_15
plt__rgctx_fetch_15:
_p_22:
adrp x16, mono_aot_System_Core_got@PAGE+0
add x16, x16, mono_aot_System_Core_got@PAGEOFF
ldr x16, [x16, #240]
br x16
.word 600
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.byte 2,0,0,0,83,121,115,116,101,109,46,67,111,114,101,0,55,54,68,48,65,55,50,70,45,48,50,56,70,45,52,70
	.byte 56,48,45,56,66,55,51,45,52,51,48,66,67,50,50,51,70,51,68,54,0,0,55,99,101,99,56,53,100,55,98,101
	.byte 97,55,55,57,56,101,0,0,1,0,0,0,2,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,109,115,99,111
	.byte 114,108,105,98,0,54,67,66,49,50,52,69,52,45,55,67,57,53,45,52,52,48,50,45,56,48,48,68,45,53,56,70
	.byte 68,65,57,55,67,67,49,66,54,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56,101,0,0,0,0,0
	.byte 1,0,0,0,2,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0
.section __DATA, __bss
	.align 3
.lcomm mono_aot_System_Core_got, 248
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "76D0A72F-028F-4F80-8B73-430BC223F3D6"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "System.Core"
.data
	.align 3
_mono_aot_file_info:

	.long 119,0
	.align 3
	.quad mono_aot_System_Core_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad blob
	.align 3
	.quad class_name_table
	.align 3
	.quad class_info_offsets
	.align 3
	.quad method_info_offsets
	.align 3
	.quad ex_info_offsets
	.align 3
	.quad extra_method_info_offsets
	.align 3
	.quad extra_method_table
	.align 3
	.quad got_info_offsets
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad image_table
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 8,248,23,4,2,387000831,0,757
	.long 128,8,8,15,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.globl _mono_aot_module_System_Core_info
	.align 3
_mono_aot_module_System_Core_info:
	.align 3
	.quad _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,3,5,5,6,0,1,7,0,3,5,5,6,5,30,0,0,1,17,2,130,130,1,17,84,83,111,117,114,99,101
	.byte 95,71,83,72,65,82,69,68,86,84,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,14,12,0,39,42,52,47
	.byte 6,193,0,1,161,6,193,0,3,165,14,2,25,1,5,30,0,0,1,28,11,84,83,111,117,114,99,101,95,82,69,70
	.byte 255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,78,4,2,67,1,1,7,78,35,96,150,27,7,112,3,255,252
	.byte 0,0,0,19,10,4,2,61,1,1,7,78,35,96,140,13,255,253,0,0,0,7,128,133,1,198,0,1,63,1,7,78
	.byte 0,35,96,140,13,255,253,0,0,0,7,112,1,198,0,1,76,1,7,78,0,4,2,64,1,1,7,78,35,96,140,13
	.byte 255,253,0,0,0,7,128,181,1,198,0,1,72,1,7,78,0,4,2,65,1,1,7,78,35,96,140,13,255,253,0,0
	.byte 0,7,128,209,1,198,0,1,73,1,7,78,0,7,17,109,111,110,111,95,104,101,108,112,101,114,95,108,100,115,116,114
	.byte 0,3,2,7,25,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95,101,120,99,101,112,116,105,111,110,0,7
	.byte 20,109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,102,97,115,116,0,3,193,0,0,90,255,253,0,0,0
	.byte 1,2,0,198,0,0,1,0,1,7,14,35,129,59,192,0,92,43,255,253,0,0,0,1,2,0,198,0,0,1,0,1
	.byte 7,14,8,15,7,14,24,7,14,23,7,14,22,7,14,22,7,14,22,7,14,22,7,14,22,7,14,4,2,67,1,1
	.byte 7,14,35,129,59,150,27,7,129,123,4,2,61,1,1,7,14,35,129,59,140,13,255,253,0,0,0,7,129,138,1,198
	.byte 0,1,63,1,7,14,0,35,129,59,192,0,90,37,32,0,8,255,253,0,0,0,7,129,138,1,198,0,1,63,1,7
	.byte 14,0,35,129,59,140,13,255,253,0,0,0,7,129,123,1,198,0,1,76,1,7,14,0,35,129,59,192,0,90,37,32
	.byte 1,30,7,14,8,255,253,0,0,0,7,129,123,1,198,0,1,76,1,7,14,0,35,129,59,150,3,7,14,4,2,64
	.byte 1,1,7,14,35,129,59,140,13,255,253,0,0,0,7,129,253,1,198,0,1,72,1,7,14,0,35,129,59,192,0,90
	.byte 37,32,0,21,2,65,1,1,7,14,255,253,0,0,0,7,129,253,1,198,0,1,72,1,7,14,0,4,2,65,1,1
	.byte 7,14,35,129,59,140,13,255,253,0,0,0,7,130,59,1,198,0,1,73,1,7,14,0,35,129,59,192,0,90,37,32
	.byte 0,30,7,14,255,253,0,0,0,7,130,59,1,198,0,1,73,1,7,14,0,7,0,1,2,64,129,184,128,212,129,124
	.byte 129,124,0,1,29,32,16,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,78,0,0,2,19,0,7,33,1,2
	.byte 88,130,160,129,164,130,100,130,100,0,1,29,56,16,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,14,1,0
	.byte 0,128,144,16,0,0,1,4,128,144,16,0,0,1,193,0,15,188,193,0,15,185,193,0,15,184,193,0,15,183,4,128
	.byte 144,16,0,0,1,193,0,15,188,193,0,15,185,193,0,15,184,193,0,15,183,115,103,101,110,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_0:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM3=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_1:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM7=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM8=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_4:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM9=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM10=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM11=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM11
LTDIE_3:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM12=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM13=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_2:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM16=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM17=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM18=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM19=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM20=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_5:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM21=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM22=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM23=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2
	.asciz "System.Linq.Enumerable:LastOrDefault<TSource_REF>"
	.asciz "System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF"

	.byte 0,0
	.quad System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "source"

LDIFF_SYM24=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM25=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM26=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM27=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,141,40,11
	.asciz "V_3"

LDIFF_SYM28=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM29=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM30=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM31=Lfde0_end - Lfde0_start
	.long LDIFF_SYM31
Lfde0_start:

	.long 0
	.align 3
	.quad System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF

LDIFF_SYM32=Lme_0 - System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF
	.long LDIFF_SYM32
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.Error:ArgumentNull"
	.asciz "System_Linq_Error_ArgumentNull_string"

	.byte 0,0
	.quad System_Linq_Error_ArgumentNull_string
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "parameter"

LDIFF_SYM33=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM34=Lfde1_end - Lfde1_start
	.long LDIFF_SYM34
Lfde1_start:

	.long 0
	.align 3
	.quad System_Linq_Error_ArgumentNull_string

LDIFF_SYM35=Lme_1 - System_Linq_Error_ArgumentNull_string
	.long LDIFF_SYM35
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM36=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM37=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM38=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_7:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM39=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM40=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM41=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_8:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM42=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2
	.asciz "System.Linq.Enumerable:LastOrDefault<TSource_GSHAREDVT>"
	.asciz "System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT"

	.byte 0,0
	.quad System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "source"

LDIFF_SYM45=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM46=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM47=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM48=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 3,141,192,0,11
	.asciz "V_3"

LDIFF_SYM49=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 1,80,11
	.asciz "V_4"

LDIFF_SYM50=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 1,80,11
	.asciz "V_5"

LDIFF_SYM51=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM52=Lfde2_end - Lfde2_start
	.long LDIFF_SYM52
Lfde2_start:

	.long 0
	.align 3
	.quad System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT

LDIFF_SYM53=Lme_3 - System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT
	.long LDIFF_SYM53
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,151,14,152,13,68,153,12,154,11
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug

	.byte 0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:

	.byte 0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
