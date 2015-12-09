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
	.byte 4,1
	.asciz "Mono AOT Compiler 4.2.1 (mono-4.2.0-branch-c6sr0/a7605b3 Mon Nov 30 11:47:48 EST 2015)"
	.asciz "System.Core.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
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

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
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

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
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

	.byte 1,124,14
	.align 2
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 2
	.no_dead_strip System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF
System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF:

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,10,223,77,226,13,176,160,225,12,128,139,229,0,160,160,225,0,15,160,227
	.byte 0,0,139,229,0,15,90,227,104,0,0,10,12,0,155,229
bl _p_1

	.byte 0,32,160,225,4,16,146,229,10,0,160,225
bl _p_2

	.byte 0,96,160,225,0,15,80,227,22,0,0,10,12,0,155,229
bl _p_3

	.byte 0,32,160,225,6,0,160,225,0,16,150,229,2,128,160,225,15,224,160,225,76,240,17,229,0,80,160,225,0,15,80,227
	.byte 76,0,0,218,64,3,69,226,32,0,139,229,12,0,155,229
bl _p_4

	.byte 0,48,160,225,32,16,155,229,6,0,160,225,0,32,150,229,3,128,160,225,15,224,160,225,64,240,18,229,69,0,0,234
	.byte 12,0,155,229
bl _p_5

	.byte 0,32,160,225,10,0,160,225,0,16,154,229,2,128,160,225,15,224,160,225,8,240,17,229,0,0,139,229,0,16,155,229
	.byte 1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . + 8
	.byte 8,128,159,231,15,224,160,225,60,240,17,229,255,0,0,226,0,15,80,227,26,0,0,10,0,0,155,229,32,0,139,229
	.byte 12,0,155,229
bl _p_6

	.byte 0,32,160,225,32,16,155,229,1,0,160,225,0,16,145,229,2,128,160,225,15,224,160,225,4,240,17,229,0,64,160,225
	.byte 0,16,155,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . + 8
	.byte 8,128,159,231,15,224,160,225,60,240,17,229,255,0,0,226,0,15,80,227,231,255,255,26,4,64,139,229,2,0,0,235
	.byte 20,0,0,234,0,0,0,235,14,0,0,234,24,224,139,229,0,0,155,229,0,15,80,227,8,0,0,10,0,16,155,229
	.byte 1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . + 12
	.byte 8,128,159,231,15,224,160,225,20,240,17,229,24,192,155,229,12,240,160,225,0,15,160,227,8,0,139,229,0,15,160,227
	.byte 0,0,0,234,4,0,155,229,10,223,139,226,112,13,189,232,128,128,189,232,0,0,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . -12
	.byte 0,0,159,231,64,19,160,227
bl _p_7
bl _p_8
bl _p_9

Lme_0:
.text
	.align 2
	.no_dead_strip System_Linq_Error_ArgumentNull_string
System_Linq_Error_ArgumentNull_string:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . + 16
	.byte 0,0,159,231
bl _p_10

	.byte 8,0,141,229,0,16,157,229
bl _p_11

	.byte 8,0,157,229,5,223,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT
System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT:

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,12,223,77,226,13,176,160,225,16,128,139,229,0,16,139,229,0,96,160,225
	.byte 16,0,155,229
bl _p_12

	.byte 0,80,160,225,0,0,149,229,7,64,128,226,7,64,196,227,4,208,77,224,13,64,160,225,0,15,160,227,12,0,139,229
	.byte 16,0,149,229,0,0,132,224,4,16,149,229,8,32,149,229,50,255,47,225,20,16,149,229,4,0,160,225,1,0,128,224
	.byte 4,16,149,229,8,32,149,229,50,255,47,225,24,16,149,229,4,0,160,225,1,0,128,224,4,16,149,229,8,32,149,229
	.byte 50,255,47,225,0,15,86,227,168,0,0,10,16,0,155,229
bl _p_13

	.byte 0,32,160,225,4,16,146,229,6,0,160,225
bl _p_2

	.byte 4,0,139,229,0,15,80,227,42,0,0,10,16,0,155,229
bl _p_14

	.byte 32,0,139,229,16,0,155,229
bl _p_15

	.byte 0,16,160,225,32,32,155,229,4,0,155,229,2,128,160,225,49,255,47,225,8,0,139,229,0,15,80,227,104,0,0,218
	.byte 8,0,155,229,64,3,64,226,40,0,139,229,16,0,155,229
bl _p_16

	.byte 44,0,139,229,16,0,155,229
bl _p_17

	.byte 0,48,160,225,40,32,155,229,44,192,155,229,28,0,149,229,0,16,132,224,4,0,155,229,12,128,160,225,51,255,47,225
	.byte 28,0,149,229,0,0,132,224,36,0,139,229,0,0,155,229,32,0,139,229,4,0,149,229,12,0,149,229,16,0,155,229
bl _p_18

	.byte 0,32,160,225,32,0,155,229,36,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 113,0,0,234,16,0,155,229
bl _p_19

	.byte 32,0,139,229,16,0,155,229
bl _p_20

	.byte 0,16,160,225,32,32,155,229,6,0,160,225,2,128,160,225,49,255,47,225,12,0,139,229,12,16,155,229,1,0,160,225
	.byte 0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . + 8
	.byte 8,128,159,231,15,224,160,225,60,240,17,229,255,0,0,226,0,15,80,227,34,0,0,10,12,0,155,229,32,0,139,229
	.byte 16,0,155,229
bl _p_21

	.byte 36,0,139,229,16,0,155,229
bl _p_22

	.byte 0,32,160,225,32,0,155,229,36,48,155,229,16,16,149,229,1,16,132,224,3,128,160,225,50,255,47,225,12,16,155,229
	.byte 1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . + 8
	.byte 8,128,159,231,15,224,160,225,60,240,17,229,255,0,0,226,0,15,80,227,229,255,255,26,16,0,149,229,0,16,132,224
	.byte 20,0,149,229,0,0,132,224,4,32,149,229,12,48,149,229,51,255,47,225,2,0,0,235,42,0,0,234,0,0,0,235
	.byte 14,0,0,234,28,224,139,229,12,0,155,229,0,15,80,227,8,0,0,10,12,16,155,229,1,0,160,225,0,16,145,229
	.byte 0,128,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . + 12
	.byte 8,128,159,231,15,224,160,225,20,240,17,229,28,192,155,229,12,240,160,225,24,0,149,229,0,0,132,224,4,16,149,229
	.byte 8,32,149,229,50,255,47,225,24,0,149,229,0,16,132,224,32,0,149,229,0,0,132,224,4,32,149,229,12,48,149,229
	.byte 51,255,47,225,32,0,149,229,0,0,132,224,36,0,139,229,0,0,155,229,32,0,139,229,4,0,149,229,12,0,149,229
	.byte 16,0,155,229
bl _p_18

	.byte 0,32,160,225,32,0,155,229,36,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 12,0,0,234,20,0,149,229,0,0,132,224,36,0,139,229,0,0,155,229,32,0,139,229,4,0,149,229,12,0,149,229
	.byte 16,0,155,229
bl _p_18

	.byte 0,32,160,225,32,0,155,229,36,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 12,223,139,226,112,13,189,232,128,128,189,232,0,0,159,229,0,0,0,234
	.long mono_aot_System_Core_got - . -12
	.byte 0,0,159,231,64,19,160,227
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

	.byte 4,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,130,117,41,255,255,255,253,98,130,161
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 31,12,13,0,72,14,8,135,2,68,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,72,68,13,11
	.byte 18,12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32,31,12,13,0,72,14,8,135,2,68,14,32,132
	.byte 8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,80,68,13,11
.section __TEXT, __const
	.align 3
class_info_offsets:

	.byte 3,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,130,202,7,23

.text
	.align 4
plt:
mono_aot_System_Core_plt:
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 32,119
	.no_dead_strip plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 36,125
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 40,140
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 44,161
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 48,188
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 52,216
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 56,237
	.no_dead_strip plt_System_Linq_Error_ArgumentNull_string
plt_System_Linq_Error_ArgumentNull_string:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 60,257
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 64,259
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_10:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 68,287
	.no_dead_strip plt_System_ArgumentNullException__ctor_string
plt_System_ArgumentNullException__ctor_string:
_p_11:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 72,310
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_12:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 76,331
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_13:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 80,386
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_14:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 84,401
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_15:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 88,423
	.no_dead_strip plt__rgctx_fetch_9
plt__rgctx_fetch_9:
_p_16:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 92,450
	.no_dead_strip plt__rgctx_fetch_10
plt__rgctx_fetch_10:
_p_17:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 96,472
	.no_dead_strip plt__rgctx_fetch_11
plt__rgctx_fetch_11:
_p_18:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 100,502
	.no_dead_strip plt__rgctx_fetch_12
plt__rgctx_fetch_12:
_p_19:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 104,516
	.no_dead_strip plt__rgctx_fetch_13
plt__rgctx_fetch_13:
_p_20:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 108,538
	.no_dead_strip plt__rgctx_fetch_14
plt__rgctx_fetch_14:
_p_21:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 112,578
	.no_dead_strip plt__rgctx_fetch_15
plt__rgctx_fetch_15:
_p_22:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Core_got - . + 116,600
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
.lcomm mono_aot_System_Core_got, 124
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
	.align 2
	.long mono_aot_System_Core_got
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long method_addresses
	.align 2
	.long blob
	.align 2
	.long class_name_table
	.align 2
	.long class_info_offsets
	.align 2
	.long method_info_offsets
	.align 2
	.long ex_info_offsets
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long extra_method_table
	.align 2
	.long got_info_offsets
	.align 2
	.long 0
	.align 2
	.long mem_end
	.align 2
	.long image_table
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long unwind_info
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 8,124,23,4,2,387000831,0,767
	.long 128,4,4,15,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.globl _mono_aot_module_System_Core_info
	.align 2
_mono_aot_module_System_Core_info:
	.align 2
	.long _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,3,5,5,6,0,1,7,0,3,5,5,6,5,30,0,0,1,17,2,130,130,1,17,84,83,111,117,114,99,101
	.byte 95,71,83,72,65,82,69,68,86,84,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,14,12,0,39,42,52,47
	.byte 6,193,0,1,161,6,193,0,3,164,14,2,25,1,5,30,0,0,1,28,11,84,83,111,117,114,99,101,95,82,69,70
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
	.byte 0,30,7,14,255,253,0,0,0,7,130,59,1,198,0,1,73,1,7,14,0,39,0,1,1,2,24,129,176,128,208,129
	.byte 112,129,116,0,4,129,104,0,1,11,12,16,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,78,0,0,2,32
	.byte 0,39,51,1,1,2,28,130,144,129,144,130,80,130,84,0,4,130,72,0,1,11,16,16,255,253,0,0,0,1,2,0
	.byte 198,0,0,1,0,1,7,14,1,0,0,128,144,8,0,0,1,4,128,144,8,0,0,1,193,0,15,187,193,0,15,184
	.byte 193,0,15,183,193,0,15,182,4,128,144,8,0,0,1,193,0,15,187,193,0,15,184,193,0,15,183,193,0,15,182,115
	.byte 103,101,110,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_0:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 8,7
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

	.byte 8,7
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

	.byte 8,7
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

	.byte 8,16
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

	.byte 12,16
LDIFF_SYM16=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM17=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,8,0,7
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

	.byte 8,7
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
	.long System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF
	.long Lme_0

	.byte 2,118,16,3
	.asciz "source"

LDIFF_SYM24=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 1,90,11
	.asciz "V_0"

LDIFF_SYM25=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 1,86,11
	.asciz "V_1"

LDIFF_SYM26=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 1,85,11
	.asciz "V_2"

LDIFF_SYM27=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,123,0,11
	.asciz "V_3"

LDIFF_SYM28=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 1,84,11
	.asciz "V_4"

LDIFF_SYM29=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,123,4,11
	.asciz "V_5"

LDIFF_SYM30=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,123,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM31=Lfde0_end - Lfde0_start
	.long LDIFF_SYM31
Lfde0_start:

	.long 0
	.align 2
	.long System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF

LDIFF_SYM32=Lme_0 - System_Linq_Enumerable_LastOrDefault_TSource_REF_System_Collections_Generic_IEnumerable_1_TSource_REF
	.long LDIFF_SYM32
	.byte 12,13,0,72,14,8,135,2,68,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,72,68,13,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.Error:ArgumentNull"
	.asciz "System_Linq_Error_ArgumentNull_string"

	.byte 0,0
	.long System_Linq_Error_ArgumentNull_string
	.long Lme_1

	.byte 2,118,16,3
	.asciz "parameter"

LDIFF_SYM33=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,125,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM34=Lfde1_end - Lfde1_start
	.long LDIFF_SYM34
Lfde1_start:

	.long 0
	.align 2
	.long System_Linq_Error_ArgumentNull_string

LDIFF_SYM35=Lme_1 - System_Linq_Error_ArgumentNull_string
	.long LDIFF_SYM35
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 8,7
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

	.byte 8,7
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

	.byte 8,7
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
	.long System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT
	.long Lme_3

	.byte 2,118,16,3
	.asciz "source"

LDIFF_SYM45=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 1,86,11
	.asciz "V_0"

LDIFF_SYM46=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,123,4,11
	.asciz "V_1"

LDIFF_SYM47=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,123,8,11
	.asciz "V_2"

LDIFF_SYM48=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,123,12,11
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
	.align 2
	.long System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT

LDIFF_SYM53=Lme_3 - System_Linq_Enumerable_LastOrDefault_TSource_GSHAREDVT_System_Collections_Generic_IEnumerable_1_TSource_GSHAREDVT
	.long LDIFF_SYM53
	.byte 12,13,0,72,14,8,135,2,68,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,80,68,13,11
	.align 2
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
