#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#include <stdarg.h>
#include <xamarin/xamarin.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CloudKit/CloudKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	void * a0 = p0;
	arg_ptrs [0] = &a0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static id native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static id native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (xamarin_try_get_nsobject (self))
		return self;
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = 2;
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

	return self;
}


static void native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static NSInteger native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static id native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSInteger p1, id p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	long long nativeEnum1 = p1;
	arg_ptrs [1] = &nativeEnum1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, id p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, unsigned int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSArray * p1, id p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	if (p1) {
		NSArray *arr = (NSArray *) p1;
		MonoClass *e_class;
		MonoArray *marr;
		MonoType *p;
		int j;
		p = xamarin_get_parameter_type (managed_method, 1);
		e_class = mono_class_get_element_class (mono_class_from_mono_type (p));
		marr = mono_array_new (mono_domain_get (), e_class, [arr count]);
		for (j = 0; j < [arr count]; j++) {
			NSObject *nobj = [arr objectAtIndex: j];
			MonoObject *mobj1 = NULL;
			if (nobj) {
				mobj1 = xamarin_get_managed_object_for_ptr_fast (nobj);
			}
			mono_array_set (marr, MonoObject *, j, mobj1);
		}
		arg_ptrs [1] = marr;
	} else {
		arg_ptrs [1] = NULL;
	}
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSArray * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	if (p1) {
		NSArray *arr = (NSArray *) p1;
		MonoClass *e_class;
		MonoArray *marr;
		MonoType *p;
		int j;
		p = xamarin_get_parameter_type (managed_method, 1);
		e_class = mono_class_get_element_class (mono_class_from_mono_type (p));
		marr = mono_array_new (mono_domain_get (), e_class, [arr count]);
		for (j = 0; j < [arr count]; j++) {
			NSObject *nobj = [arr objectAtIndex: j];
			MonoObject *mobj1 = NULL;
			if (nobj) {
				mobj1 = xamarin_get_managed_object_for_ptr_fast (nobj);
			}
			mono_array_set (marr, MonoObject *, j, mobj1);
		}
		arg_ptrs [1] = marr;
	} else {
		arg_ptrs [1] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, NSUInteger p2, NSUInteger p3, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4, const char *r5)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[4] = { r0, r1, r2, r3 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r4, r5, 4, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;
	unsigned long long nativeEnum2 = p2;
	arg_ptrs [2] = &nativeEnum2;
	unsigned long long nativeEnum3 = p3;
	arg_ptrs [3] = &nativeEnum3;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSUInteger p1, BOOL p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	unsigned long long nativeEnum1 = p1;
	arg_ptrs [1] = &nativeEnum1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, BOOL p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static id native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_get_inative_object_static (p1, false, "MapKit.MKAnnotationWrapper, Xamarin.iOS", "MapKit.IMKAnnotation, Xamarin.iOS");

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static id native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = xamarin_get_inative_object_static (p1, false, "MapKit.MKOverlayWrapper, Xamarin.iOS", "MapKit.IMKOverlay, Xamarin.iOS");

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}



@interface __MonoMac_NSActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Foundation.NSActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface AppDelegate : NSObject<UIApplicationDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) window;
	-(void) setWindow:(id)p0;
	-(BOOL) application:(id)p0 didFinishLaunchingWithOptions:(id)p1;
	-(void) application:(id)p0 didRegisterForRemoteNotificationsWithDeviceToken:(id)p1;
	-(void) application:(id)p0 didFailToRegisterForRemoteNotificationsWithError:(id)p1;
	-(void) application:(id)p0 didReceiveRemoteNotification:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.AppDelegate, CloudKitAtlas", "get_Window");
	}

	-(void) setWindow:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIWindow, Xamarin.iOS", "CloudKitAtlas.AppDelegate, CloudKitAtlas", "set_Window");
	}

	-(BOOL) application:(id)p0 didFinishLaunchingWithOptions:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "CloudKitAtlas.AppDelegate, CloudKitAtlas", "FinishedLaunching");
	}

	-(void) application:(id)p0 didRegisterForRemoteNotificationsWithDeviceToken:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSData, Xamarin.iOS", "CloudKitAtlas.AppDelegate, CloudKitAtlas", "RegisteredForRemoteNotifications");
	}

	-(void) application:(id)p0 didFailToRegisterForRemoteNotificationsWithError:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSError, Xamarin.iOS", "CloudKitAtlas.AppDelegate, CloudKitAtlas", "FailedToRegisterForRemoteNotifications");
	}

	-(void) application:(id)p0 didReceiveRemoteNotification:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "CloudKitAtlas.AppDelegate, CloudKitAtlas", "ReceivedRemoteNotification");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "CloudKitAtlas.AppDelegate, CloudKitAtlas", ".ctor");
	}
@end

@interface CKSubscriptionViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) id subscriptionSwitch;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) subscriptionSwitch;
	-(void) setSubscriptionSwitch:(id)p0;
	-(void) viewDidLoad;
	-(void) SubscriptionPreferenceUpdated:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation CKSubscriptionViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) subscriptionSwitch
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKSubscriptionViewController, CloudKitAtlas", "get_subscriptionSwitch");
	}

	-(void) setSubscriptionSwitch:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UISwitch, Xamarin.iOS", "CloudKitAtlas.CKSubscriptionViewController, CloudKitAtlas", "set_subscriptionSwitch");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "CloudKitAtlas.CKSubscriptionViewController, CloudKitAtlas", "ViewDidLoad");
	}

	-(void) SubscriptionPreferenceUpdated:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UISwitch, Xamarin.iOS", "CloudKitAtlas.CKSubscriptionViewController, CloudKitAtlas", "SubscriptionPreferenceUpdated");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface LocationQueryViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) id map;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) map;
	-(void) setMap:(id)p0;
	-(void) viewDidLoad;
	-(void) viewWillDisappear:(BOOL)p0;
	-(void) QueryRecords:(id)p0;
	-(NSInteger) tableView:(id)p0 numberOfRowsInSection:(NSInteger)p1;
	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation LocationQueryViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) map
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", "get_map");
	}

	-(void) setMap:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", "set_map");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", "ViewDidLoad");
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", "ViewWillDisappear");
	}

	-(void) QueryRecords:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIBarButtonItem, Xamarin.iOS", "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", "QueryRecords");
	}

	-(NSInteger) tableView:(id)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", "RowsInSection");
	}

	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", "GetCell");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MasterViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) prepareForSegue:(id)p0 sender:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MasterViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "CloudKitAtlas.MasterViewController, CloudKitAtlas", "ViewDidLoad");
	}

	-(void) prepareForSegue:(id)p0 sender:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "UIKit.UIStoryboardSegue, Xamarin.iOS", "Foundation.NSObject, Xamarin.iOS", "CloudKitAtlas.MasterViewController, CloudKitAtlas", "PrepareForSegue");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface CKAssetViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) id assetPreview;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) assetPreview;
	-(void) setAssetPreview:(id)p0;
	-(void) viewDidLoad;
	-(void) DownloadPhoto:(id)p0;
	-(void) TakePhoto:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation CKAssetViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) assetPreview
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKAssetViewController, CloudKitAtlas", "get_assetPreview");
	}

	-(void) setAssetPreview:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "CloudKitAtlas.CKAssetViewController, CloudKitAtlas", "set_assetPreview");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "CloudKitAtlas.CKAssetViewController, CloudKitAtlas", "ViewDidLoad");
	}

	-(void) DownloadPhoto:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "CloudKitAtlas.CKAssetViewController, CloudKitAtlas", "DownloadPhoto");
	}

	-(void) TakePhoto:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "CloudKitAtlas.CKAssetViewController, CloudKitAtlas", "TakePhoto");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface CKRecordViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) id map;
	@property (nonatomic, assign) id nameTextField;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) map;
	-(void) setMap:(id)p0;
	-(id) nameTextField;
	-(void) setNameTextField:(id)p0;
	-(void) viewDidLoad;
	-(void) viewWillDisappear:(BOOL)p0;
	-(void) SaveRecord:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation CKRecordViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) map
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", "get_map");
	}

	-(void) setMap:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", "set_map");
	}

	-(id) nameTextField
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", "get_nameTextField");
	}

	-(void) setNameTextField:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", "set_nameTextField");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", "ViewDidLoad");
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", "ViewWillDisappear");
	}

	-(void) SaveRecord:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", "SaveRecord");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface CKReferenceDetailViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) id AddButton;
	@property (nonatomic, assign) id nameTextField;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) AddButton;
	-(void) setAddButton:(id)p0;
	-(id) nameTextField;
	-(void) setNameTextField:(id)p0;
	-(void) viewDidLoad;
	-(void) Add:(id)p0;
	-(NSInteger) tableView:(id)p0 numberOfRowsInSection:(NSInteger)p1;
	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1;
	-(BOOL) tableView:(id)p0 canEditRowAtIndexPath:(id)p1;
	-(void) tableView:(id)p0 commitEditingStyle:(NSInteger)p1 forRowAtIndexPath:(id)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation CKReferenceDetailViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) AddButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "get_AddButton");
	}

	-(void) setAddButton:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "set_AddButton");
	}

	-(id) nameTextField
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "get_nameTextField");
	}

	-(void) setNameTextField:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "set_nameTextField");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "ViewDidLoad");
	}

	-(void) Add:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "Add");
	}

	-(NSInteger) tableView:(id)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "RowsInSection");
	}

	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "GetCell");
	}

	-(BOOL) tableView:(id)p0 canEditRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "CanEditRow");
	}

	-(void) tableView:(id)p0 commitEditingStyle:(NSInteger)p1 forRowAtIndexPath:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITableView, Xamarin.iOS", "UIKit.UITableViewCellEditingStyle, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", "CommitEditingStyle");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface CKReferenceViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) id AddButton;
	@property (nonatomic, assign) id nameTextField;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) AddButton;
	-(void) setAddButton:(id)p0;
	-(id) nameTextField;
	-(void) setNameTextField:(id)p0;
	-(void) viewDidLoad;
	-(NSInteger) tableView:(id)p0 numberOfRowsInSection:(NSInteger)p1;
	-(BOOL) tableView:(id)p0 canEditRowAtIndexPath:(id)p1;
	-(void) tableView:(id)p0 commitEditingStyle:(NSInteger)p1 forRowAtIndexPath:(id)p2;
	-(void) prepareForSegue:(id)p0 sender:(id)p1;
	-(void) Add:(id)p0;
	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation CKReferenceViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) AddButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "get_AddButton");
	}

	-(void) setAddButton:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "set_AddButton");
	}

	-(id) nameTextField
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "get_nameTextField");
	}

	-(void) setNameTextField:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "set_nameTextField");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "ViewDidLoad");
	}

	-(NSInteger) tableView:(id)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "RowsInSection");
	}

	-(BOOL) tableView:(id)p0 canEditRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "CanEditRow");
	}

	-(void) tableView:(id)p0 commitEditingStyle:(NSInteger)p1 forRowAtIndexPath:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITableView, Xamarin.iOS", "UIKit.UITableViewCellEditingStyle, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "CommitEditingStyle");
	}

	-(void) prepareForSegue:(id)p0 sender:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "UIKit.UIStoryboardSegue, Xamarin.iOS", "Foundation.NSObject, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "PrepareForSegue");
	}

	-(void) Add:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "Add");
	}

	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", "GetCell");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface CloudKitAtlas_CloudManager : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation CloudKitAtlas_CloudManager { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "CloudKitAtlas.CloudManager, CloudKitAtlas", ".ctor");
	}
@end

@interface DiscoverabilityViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) id name;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(id) name;
	-(void) setName:(id)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation DiscoverabilityViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(id) name
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "CloudKitAtlas.DiscoverabilityViewController, CloudKitAtlas", "get_name");
	}

	-(void) setName:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "CloudKitAtlas.DiscoverabilityViewController, CloudKitAtlas", "set_name");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "CloudKitAtlas.DiscoverabilityViewController, CloudKitAtlas", "ViewDidAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __UIGestureRecognizerToken : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __UIGestureRecognizerToken { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParameterlessToken { } 
@end

@interface __UIGestureRecognizerParametrizedToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParametrizedToken { } 
@end

@interface UIKit_UIImagePickerController__UIImagePickerControllerDelegate : NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) imagePickerControllerDidCancel:(id)p0;
	-(void) imagePickerController:(id)p0 didFinishPickingImage:(id)p1 editingInfo:(id)p2;
	-(void) imagePickerController:(id)p0 didFinishPickingMediaWithInfo:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UIImagePickerController__UIImagePickerControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) imagePickerControllerDidCancel:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIImagePickerController, Xamarin.iOS", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", "Canceled");
	}

	-(void) imagePickerController:(id)p0 didFinishPickingImage:(id)p1 editingInfo:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIImagePickerController, Xamarin.iOS", "UIKit.UIImage, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", "FinishedPickingImage");
	}

	-(void) imagePickerController:(id)p0 didFinishPickingMediaWithInfo:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "UIKit.UIImagePickerController, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", "FinishedPickingMedia");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", ".ctor");
	}
@end

@interface CoreLocation_CLLocationManager__CLLocationManagerDelegate : NSObject<CLLocationManagerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) locationManager:(id)p0 didChangeAuthorizationStatus:(unsigned int)p1;
	-(void) locationManager:(id)p0 didFinishDeferredUpdatesWithError:(id)p1;
	-(void) locationManager:(id)p0 didDetermineState:(NSInteger)p1 forRegion:(id)p2;
	-(void) locationManager:(id)p0 didRangeBeacons:(NSArray *)p1 inRegion:(id)p2;
	-(void) locationManager:(id)p0 didStartMonitoringForRegion:(id)p1;
	-(void) locationManager:(id)p0 didVisit:(id)p1;
	-(void) locationManager:(id)p0 didFailWithError:(id)p1;
	-(void) locationManager:(id)p0 didUpdateLocations:(NSArray *)p1;
	-(void) locationManagerDidPauseLocationUpdates:(id)p0;
	-(void) locationManagerDidResumeLocationUpdates:(id)p0;
	-(void) locationManager:(id)p0 monitoringDidFailForRegion:(id)p1 withError:(id)p2;
	-(void) locationManager:(id)p0 rangingBeaconsDidFailForRegion:(id)p1 withError:(id)p2;
	-(void) locationManager:(id)p0 didEnterRegion:(id)p1;
	-(void) locationManager:(id)p0 didExitRegion:(id)p1;
	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(id)p0;
	-(void) locationManager:(id)p0 didUpdateHeading:(id)p1;
	-(void) locationManager:(id)p0 didUpdateToLocation:(id)p1 fromLocation:(id)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation CoreLocation_CLLocationManager__CLLocationManagerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) locationManager:(id)p0 didChangeAuthorizationStatus:(unsigned int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLAuthorizationStatus, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "AuthorizationChanged");
	}

	-(void) locationManager:(id)p0 didFinishDeferredUpdatesWithError:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "Foundation.NSError, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "DeferredUpdatesFinished");
	}

	-(void) locationManager:(id)p0 didDetermineState:(NSInteger)p1 forRegion:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, p2, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLRegionState, Xamarin.iOS", "CoreLocation.CLRegion, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "DidDetermineState");
	}

	-(void) locationManager:(id)p0 didRangeBeacons:(NSArray *)p1 inRegion:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, p1, p2, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLBeacon[], Xamarin.iOS", "CoreLocation.CLBeaconRegion, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "DidRangeBeacons");
	}

	-(void) locationManager:(id)p0 didStartMonitoringForRegion:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLRegion, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "DidStartMonitoringForRegion");
	}

	-(void) locationManager:(id)p0 didVisit:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLVisit, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "DidVisit");
	}

	-(void) locationManager:(id)p0 didFailWithError:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "Foundation.NSError, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "Failed");
	}

	-(void) locationManager:(id)p0 didUpdateLocations:(NSArray *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLLocation[], Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "LocationsUpdated");
	}

	-(void) locationManagerDidPauseLocationUpdates:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "LocationUpdatesPaused");
	}

	-(void) locationManagerDidResumeLocationUpdates:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "LocationUpdatesResumed");
	}

	-(void) locationManager:(id)p0 monitoringDidFailForRegion:(id)p1 withError:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, p2, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLRegion, Xamarin.iOS", "Foundation.NSError, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "MonitoringFailed");
	}

	-(void) locationManager:(id)p0 rangingBeaconsDidFailForRegion:(id)p1 withError:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, p2, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLBeaconRegion, Xamarin.iOS", "Foundation.NSError, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "RangingBeaconsDidFailForRegion");
	}

	-(void) locationManager:(id)p0 didEnterRegion:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLRegion, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "RegionEntered");
	}

	-(void) locationManager:(id)p0 didExitRegion:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLRegion, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "RegionLeft");
	}

	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "ShouldDisplayHeadingCalibration");
	}

	-(void) locationManager:(id)p0 didUpdateHeading:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLHeading, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "UpdatedHeading");
	}

	-(void) locationManager:(id)p0 didUpdateToLocation:(id)p1 fromLocation:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, p2, "CoreLocation.CLLocationManager, Xamarin.iOS", "CoreLocation.CLLocation, Xamarin.iOS", "CoreLocation.CLLocation, Xamarin.iOS", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", "UpdatedLocation");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", ".ctor");
	}
@end

@interface __NSObject_Disposer : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", "Drain");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", ".ctor");
	}
@end

@interface MapKit_MKMapView__MKMapViewDelegate : NSObject<MKMapViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) mapView:(id)p0 annotationView:(id)p1 calloutAccessoryControlTapped:(id)p2;
	-(void) mapView:(id)p0 annotationView:(id)p1 didChangeDragState:(NSUInteger)p2 fromOldState:(NSUInteger)p3;
	-(void) mapView:(id)p0 didAddAnnotationViews:(NSArray *)p1;
	-(void) mapView:(id)p0 didAddOverlayRenderers:(NSArray *)p1;
	-(void) mapView:(id)p0 didAddOverlayViews:(id)p1;
	-(void) mapView:(id)p0 didChangeUserTrackingMode:(NSUInteger)p1 animated:(BOOL)p2;
	-(void) mapView:(id)p0 didDeselectAnnotationView:(id)p1;
	-(void) mapView:(id)p0 didFailToLocateUserWithError:(id)p1;
	-(void) mapViewDidFinishRenderingMap:(id)p0 fullyRendered:(BOOL)p1;
	-(void) mapView:(id)p0 didSelectAnnotationView:(id)p1;
	-(void) mapViewDidStopLocatingUser:(id)p0;
	-(void) mapView:(id)p0 didUpdateUserLocation:(id)p1;
	-(id) mapView:(id)p0 viewForAnnotation:(id)p1;
	-(id) mapView:(id)p0 viewForOverlay:(id)p1;
	-(void) mapViewDidFailLoadingMap:(id)p0 withError:(id)p1;
	-(void) mapViewDidFinishLoadingMap:(id)p0;
	-(id) mapView:(id)p0 rendererForOverlay:(id)p1;
	-(void) mapView:(id)p0 regionDidChangeAnimated:(BOOL)p1;
	-(void) mapView:(id)p0 regionWillChangeAnimated:(BOOL)p1;
	-(void) mapViewWillStartLoadingMap:(id)p0;
	-(void) mapViewWillStartLocatingUser:(id)p0;
	-(void) mapViewWillStartRenderingMap:(id)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MapKit_MKMapView__MKMapViewDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) mapView:(id)p0 annotationView:(id)p1 calloutAccessoryControlTapped:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, p2, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKAnnotationView, Xamarin.iOS", "UIKit.UIControl, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "CalloutAccessoryControlTapped");
	}

	-(void) mapView:(id)p0 annotationView:(id)p1 didChangeDragState:(NSUInteger)p2 fromOldState:(NSUInteger)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, p1, p2, p3, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKAnnotationView, Xamarin.iOS", "MapKit.MKAnnotationViewDragState, Xamarin.iOS", "MapKit.MKAnnotationViewDragState, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "ChangedDragState");
	}

	-(void) mapView:(id)p0 didAddAnnotationViews:(NSArray *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKAnnotationView[], Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidAddAnnotationViews");
	}

	-(void) mapView:(id)p0 didAddOverlayRenderers:(NSArray *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKOverlayRenderer[], Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidAddOverlayRenderers");
	}

	-(void) mapView:(id)p0 didAddOverlayViews:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKOverlayView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidAddOverlayViews");
	}

	-(void) mapView:(id)p0 didChangeUserTrackingMode:(NSUInteger)p1 animated:(BOOL)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, p2, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKUserTrackingMode, Xamarin.iOS", "System.Boolean, mscorlib", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidChangeUserTrackingMode");
	}

	-(void) mapView:(id)p0 didDeselectAnnotationView:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKAnnotationView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidDeselectAnnotationView");
	}

	-(void) mapView:(id)p0 didFailToLocateUserWithError:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "Foundation.NSError, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidFailToLocateUser");
	}

	-(void) mapViewDidFinishRenderingMap:(id)p0 fullyRendered:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "System.Boolean, mscorlib", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidFinishRenderingMap");
	}

	-(void) mapView:(id)p0 didSelectAnnotationView:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKAnnotationView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidSelectAnnotationView");
	}

	-(void) mapViewDidStopLocatingUser:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidStopLocatingUser");
	}

	-(void) mapView:(id)p0 didUpdateUserLocation:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKUserLocation, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "DidUpdateUserLocation");
	}

	-(id) mapView:(id)p0 viewForAnnotation:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.IMKAnnotation, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "GetViewForAnnotation");
	}

	-(id) mapView:(id)p0 viewForOverlay:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.IMKOverlay, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "GetViewForOverlay");
	}

	-(void) mapViewDidFailLoadingMap:(id)p0 withError:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "Foundation.NSError, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "LoadingMapFailed");
	}

	-(void) mapViewDidFinishLoadingMap:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "MapLoaded");
	}

	-(id) mapView:(id)p0 rendererForOverlay:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "MapKit.IMKOverlay, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "OverlayRenderer");
	}

	-(void) mapView:(id)p0 regionDidChangeAnimated:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "System.Boolean, mscorlib", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "RegionChanged");
	}

	-(void) mapView:(id)p0 regionWillChangeAnimated:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, "MapKit.MKMapView, Xamarin.iOS", "System.Boolean, mscorlib", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "RegionWillChange");
	}

	-(void) mapViewWillStartLoadingMap:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "WillStartLoadingMap");
	}

	-(void) mapViewWillStartLocatingUser:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "WillStartLocatingUser");
	}

	-(void) mapViewWillStartRenderingMap:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", "WillStartRenderingMap");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", ".ctor");
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{"NSObject", "Foundation.NSObject, Xamarin.iOS", NULL },
		{"UIResponder", "UIKit.UIResponder, Xamarin.iOS", NULL },
		{"UIViewController", "UIKit.UIViewController, Xamarin.iOS", NULL },
		{"UITableViewController", "UIKit.UITableViewController, Xamarin.iOS", NULL },
		{"NSIndexPath", "Foundation.NSIndexPath, Xamarin.iOS", NULL },
		{"NSOperation", "Foundation.NSOperation, Xamarin.iOS", NULL },
		{"NSArray", "Foundation.NSArray, Xamarin.iOS", NULL },
		{"NSCoder", "Foundation.NSCoder, Xamarin.iOS", NULL },
		{"NSFileManager", "Foundation.NSFileManager, Xamarin.iOS", NULL },
		{"NSPredicate", "Foundation.NSPredicate, Xamarin.iOS", NULL },
		{"NSValue", "Foundation.NSValue, Xamarin.iOS", NULL },
		{"NSNumber", "Foundation.NSNumber, Xamarin.iOS", NULL },
		{"NSRunLoop", "Foundation.NSRunLoop, Xamarin.iOS", NULL },
		{"NSURL", "Foundation.NSUrl, Xamarin.iOS", NULL },
		{"NSString", "Foundation.NSString, Xamarin.iOS", NULL },
		{"NSUserDefaults", "Foundation.NSUserDefaults, Xamarin.iOS", NULL },
		{"NSUUID", "Foundation.NSUuid, Xamarin.iOS", NULL },
		{"UIView", "UIKit.UIView, Xamarin.iOS", NULL },
		{"UIAlertView", "UIKit.UIAlertView, Xamarin.iOS", NULL },
		{"UIApplication", "UIKit.UIApplication, Xamarin.iOS", NULL },
		{"UIBarItem", "UIKit.UIBarItem, Xamarin.iOS", NULL },
		{"UIBarButtonItem", "UIKit.UIBarButtonItem, Xamarin.iOS", NULL },
		{"UIBezierPath", "UIKit.UIBezierPath, Xamarin.iOS", NULL },
		{"UIControl", "UIKit.UIControl, Xamarin.iOS", NULL },
		{"UIButton", "UIKit.UIButton, Xamarin.iOS", NULL },
		{"UIDevice", "UIKit.UIDevice, Xamarin.iOS", NULL },
		{"UIImage", "UIKit.UIImage, Xamarin.iOS", NULL },
		{"UINavigationController", "UIKit.UINavigationController, Xamarin.iOS", NULL },
		{"UIStoryboardSegue", "UIKit.UIStoryboardSegue, Xamarin.iOS", NULL },
		{"UIScrollView", "UIKit.UIScrollView, Xamarin.iOS", NULL },
		{"UITableView", "UIKit.UITableView, Xamarin.iOS", NULL },
		{"UITableViewCell", "UIKit.UITableViewCell, Xamarin.iOS", NULL },
		{"UITextField", "UIKit.UITextField, Xamarin.iOS", NULL },
		{"CKRecord", "CloudKit.CKRecord, Xamarin.iOS", NULL },
		{"CKRecordID", "CloudKit.CKRecordID, Xamarin.iOS", NULL },
		{"UIAlertAction", "UIKit.UIAlertAction, Xamarin.iOS", NULL },
		{"UIAlertController", "UIKit.UIAlertController, Xamarin.iOS", NULL },
		{"UIApplicationShortcutItem", "UIKit.UIApplicationShortcutItem, Xamarin.iOS", NULL },
		{"__MonoMac_NSActionDispatcher", "Foundation.NSActionDispatcher, Xamarin.iOS", NULL },
		{"__MonoMac_NSAsyncActionDispatcher", "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", NULL },
		{"NSAutoreleasePool", "Foundation.NSAutoreleasePool, Xamarin.iOS", NULL },
		{"NSError", "Foundation.NSError, Xamarin.iOS", NULL },
		{"MKOverlayView", "MapKit.MKOverlayView, Xamarin.iOS", NULL },
		{"UITextPosition", "UIKit.UITextPosition, Xamarin.iOS", NULL },
		{"UITextRange", "UIKit.UITextRange, Xamarin.iOS", NULL },
		{"MKAnnotationView", "MapKit.MKAnnotationView, Xamarin.iOS", NULL },
		{"UITextSelectionRect", "UIKit.UITextSelectionRect, Xamarin.iOS", NULL },
		{"MKPinAnnotationView", "MapKit.MKPinAnnotationView, Xamarin.iOS", NULL },
		{"UILocalNotification", "UIKit.UILocalNotification, Xamarin.iOS", NULL },
		{"MKShape", "MapKit.MKShape, Xamarin.iOS", NULL },
		{"MKPointAnnotation", "MapKit.MKPointAnnotation, Xamarin.iOS", NULL },
		{"MKOverlayRenderer", "MapKit.MKOverlayRenderer, Xamarin.iOS", NULL },
		{"MKUserLocation", "MapKit.MKUserLocation, Xamarin.iOS", NULL },
		{"UIActivityIndicatorView", "UIKit.UIActivityIndicatorView, Xamarin.iOS", NULL },
		{"UIWindow", "UIKit.UIWindow, Xamarin.iOS", NULL },
		{"CKAsset", "CloudKit.CKAsset, Xamarin.iOS", NULL },
		{"CKOperation", "CloudKit.CKOperation, Xamarin.iOS", NULL },
		{"CKDatabaseOperation", "CloudKit.CKDatabaseOperation, Xamarin.iOS", NULL },
		{"CKDiscoveredUserInfo", "CloudKit.CKDiscoveredUserInfo, Xamarin.iOS", NULL },
		{"CKQuery", "CloudKit.CKQuery, Xamarin.iOS", NULL },
		{"CKQueryOperation", "CloudKit.CKQueryOperation, Xamarin.iOS", NULL },
		{"CKReference", "CloudKit.CKReference, Xamarin.iOS", NULL },
		{"CKModifySubscriptionsOperation", "CloudKit.CKModifySubscriptionsOperation, Xamarin.iOS", NULL },
		{"CKSubscription", "CloudKit.CKSubscription, Xamarin.iOS", NULL },
		{"CKNotificationInfo", "CloudKit.CKNotificationInfo, Xamarin.iOS", NULL },
		{"CKQueryCursor", "CloudKit.CKQueryCursor, Xamarin.iOS", NULL },
		{"UILabel", "UIKit.UILabel, Xamarin.iOS", NULL },
		{"UIImageView", "UIKit.UIImageView, Xamarin.iOS", NULL },
		{"CLRegion", "CoreLocation.CLRegion, Xamarin.iOS", NULL },
		{"CLBeaconRegion", "CoreLocation.CLBeaconRegion, Xamarin.iOS", NULL },
		{"CLBeacon", "CoreLocation.CLBeacon, Xamarin.iOS", NULL },
		{"CLVisit", "CoreLocation.CLVisit, Xamarin.iOS", NULL },
		{"CLHeading", "CoreLocation.CLHeading, Xamarin.iOS", NULL },
		{"CLLocation", "CoreLocation.CLLocation, Xamarin.iOS", NULL },
		{"NSEnumerator", "Foundation.NSEnumerator, Xamarin.iOS", NULL },
		{"NSException", "Foundation.NSException, Xamarin.iOS", NULL },
		{"NSNull", "Foundation.NSNull, Xamarin.iOS", NULL },
		{"NSSortDescriptor", "Foundation.NSSortDescriptor, Xamarin.iOS", NULL },
		{"NSUserActivity", "Foundation.NSUserActivity, Xamarin.iOS", NULL },
		{"UITouch", "UIKit.UITouch, Xamarin.iOS", NULL },
		{"UIUserNotificationSettings", "UIKit.UIUserNotificationSettings, Xamarin.iOS", NULL },
		{"UIFocusAnimationCoordinator", "UIKit.UIFocusAnimationCoordinator, Xamarin.iOS", NULL },
		{"UIFocusUpdateContext", "UIKit.UIFocusUpdateContext, Xamarin.iOS", NULL },
		{"UIPress", "UIKit.UIPress, Xamarin.iOS", NULL },
		{"UITableViewFocusUpdateContext", "UIKit.UITableViewFocusUpdateContext, Xamarin.iOS", NULL },
		{"UITableViewRowAction", "UIKit.UITableViewRowAction, Xamarin.iOS", NULL },
		{"UISwitch", "UIKit.UISwitch, Xamarin.iOS", NULL },
		{"UITraitCollection", "UIKit.UITraitCollection, Xamarin.iOS", NULL },
		{"NSData", "Foundation.NSData, Xamarin.iOS", NULL },
		{"NSDictionary", "Foundation.NSDictionary, Xamarin.iOS", NULL },
		{"NSSet", "Foundation.NSSet, Xamarin.iOS", NULL },
		{"UIGestureRecognizer", "UIKit.UIGestureRecognizer, Xamarin.iOS", NULL },
		{"UIImagePickerController", "UIKit.UIImagePickerController, Xamarin.iOS", NULL },
		{"CLLocationManager", "CoreLocation.CLLocationManager, Xamarin.iOS", NULL },
		{"MKMapView", "MapKit.MKMapView, Xamarin.iOS", NULL },
		{"CKContainer", "CloudKit.CKContainer, Xamarin.iOS", NULL },
		{"CKDatabase", "CloudKit.CKDatabase, Xamarin.iOS", NULL },
		{"AppDelegate", "CloudKitAtlas.AppDelegate, CloudKitAtlas", NULL },
		{"CKSubscriptionViewController", "CloudKitAtlas.CKSubscriptionViewController, CloudKitAtlas", NULL },
		{"LocationQueryViewController", "CloudKitAtlas.LocationQueryViewController, CloudKitAtlas", NULL },
		{"MasterViewController", "CloudKitAtlas.MasterViewController, CloudKitAtlas", NULL },
		{"CKAssetViewController", "CloudKitAtlas.CKAssetViewController, CloudKitAtlas", NULL },
		{"CKRecordViewController", "CloudKitAtlas.CKRecordViewController, CloudKitAtlas", NULL },
		{"CKReferenceDetailViewController", "CloudKitAtlas.CKReferenceDetailViewController, CloudKitAtlas", NULL },
		{"CKReferenceViewController", "CloudKitAtlas.CKReferenceViewController, CloudKitAtlas", NULL },
		{"CloudKitAtlas_CloudManager", "CloudKitAtlas.CloudManager, CloudKitAtlas", NULL },
		{"DiscoverabilityViewController", "CloudKitAtlas.DiscoverabilityViewController, CloudKitAtlas", NULL },
		{"__UIGestureRecognizerToken", "UIKit.UIGestureRecognizer+Token, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParameterlessToken", "UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParametrizedToken", "UIKit.UIGestureRecognizer+ParametrizedDispatch, Xamarin.iOS", NULL },
		{"UIKit_UIImagePickerController__UIImagePickerControllerDelegate", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", NULL },
		{"CoreLocation_CLLocationManager__CLLocationManagerDelegate", "CoreLocation.CLLocationManager+_CLLocationManagerDelegate, Xamarin.iOS", NULL },
		{"__NSObject_Disposer", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", NULL },
		{"MapKit_MKMapView__MKMapViewDelegate", "MapKit.MKMapView+_MKMapViewDelegate, Xamarin.iOS", NULL },
		{ NULL, NULL, NULL },
	};

	static const char *__xamarin_registration_assemblies []= {
		"CloudKitAtlas", 
		"Xamarin.iOS", 
		"mscorlib", 
		"System", 
		"System.Core"
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		NULL,
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		5,
		114,
		17
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [3].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [4].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [5].handle = objc_getClass ("NSOperation");
	__xamarin_class_map [6].handle = objc_getClass ("NSArray");
	__xamarin_class_map [7].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [8].handle = objc_getClass ("NSFileManager");
	__xamarin_class_map [9].handle = objc_getClass ("NSPredicate");
	__xamarin_class_map [10].handle = objc_getClass ("NSValue");
	__xamarin_class_map [11].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [12].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [13].handle = objc_getClass ("NSURL");
	__xamarin_class_map [14].handle = objc_getClass ("NSString");
	__xamarin_class_map [15].handle = objc_getClass ("NSUserDefaults");
	__xamarin_class_map [16].handle = objc_getClass ("NSUUID");
	__xamarin_class_map [17].handle = objc_getClass ("UIView");
	__xamarin_class_map [18].handle = objc_getClass ("UIAlertView");
	__xamarin_class_map [19].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [20].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [21].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [22].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [23].handle = objc_getClass ("UIControl");
	__xamarin_class_map [24].handle = objc_getClass ("UIButton");
	__xamarin_class_map [25].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [26].handle = objc_getClass ("UIImage");
	__xamarin_class_map [27].handle = objc_getClass ("UINavigationController");
	__xamarin_class_map [28].handle = objc_getClass ("UIStoryboardSegue");
	__xamarin_class_map [29].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [30].handle = objc_getClass ("UITableView");
	__xamarin_class_map [31].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [32].handle = objc_getClass ("UITextField");
	__xamarin_class_map [33].handle = objc_getClass ("CKRecord");
	__xamarin_class_map [34].handle = objc_getClass ("CKRecordID");
	__xamarin_class_map [35].handle = objc_getClass ("UIAlertAction");
	__xamarin_class_map [36].handle = objc_getClass ("UIAlertController");
	__xamarin_class_map [37].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [38].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [39].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [40].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [41].handle = objc_getClass ("NSError");
	__xamarin_class_map [42].handle = objc_getClass ("MKOverlayView");
	__xamarin_class_map [43].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [44].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [45].handle = objc_getClass ("MKAnnotationView");
	__xamarin_class_map [46].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [47].handle = objc_getClass ("MKPinAnnotationView");
	__xamarin_class_map [48].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [49].handle = objc_getClass ("MKShape");
	__xamarin_class_map [50].handle = objc_getClass ("MKPointAnnotation");
	__xamarin_class_map [51].handle = objc_getClass ("MKOverlayRenderer");
	__xamarin_class_map [52].handle = objc_getClass ("MKUserLocation");
	__xamarin_class_map [53].handle = objc_getClass ("UIActivityIndicatorView");
	__xamarin_class_map [54].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [55].handle = objc_getClass ("CKAsset");
	__xamarin_class_map [56].handle = objc_getClass ("CKOperation");
	__xamarin_class_map [57].handle = objc_getClass ("CKDatabaseOperation");
	__xamarin_class_map [58].handle = objc_getClass ("CKDiscoveredUserInfo");
	__xamarin_class_map [59].handle = objc_getClass ("CKQuery");
	__xamarin_class_map [60].handle = objc_getClass ("CKQueryOperation");
	__xamarin_class_map [61].handle = objc_getClass ("CKReference");
	__xamarin_class_map [62].handle = objc_getClass ("CKModifySubscriptionsOperation");
	__xamarin_class_map [63].handle = objc_getClass ("CKSubscription");
	__xamarin_class_map [64].handle = objc_getClass ("CKNotificationInfo");
	__xamarin_class_map [65].handle = objc_getClass ("CKQueryCursor");
	__xamarin_class_map [66].handle = objc_getClass ("UILabel");
	__xamarin_class_map [67].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [68].handle = objc_getClass ("CLRegion");
	__xamarin_class_map [69].handle = objc_getClass ("CLBeaconRegion");
	__xamarin_class_map [70].handle = objc_getClass ("CLBeacon");
	__xamarin_class_map [71].handle = objc_getClass ("CLVisit");
	__xamarin_class_map [72].handle = objc_getClass ("CLHeading");
	__xamarin_class_map [73].handle = objc_getClass ("CLLocation");
	__xamarin_class_map [74].handle = objc_getClass ("NSEnumerator");
	__xamarin_class_map [75].handle = objc_getClass ("NSException");
	__xamarin_class_map [76].handle = objc_getClass ("NSNull");
	__xamarin_class_map [77].handle = objc_getClass ("NSSortDescriptor");
	__xamarin_class_map [78].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [79].handle = objc_getClass ("UITouch");
	__xamarin_class_map [80].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [81].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [82].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [83].handle = objc_getClass ("UIPress");
	__xamarin_class_map [84].handle = objc_getClass ("UITableViewFocusUpdateContext");
	__xamarin_class_map [85].handle = objc_getClass ("UITableViewRowAction");
	__xamarin_class_map [86].handle = objc_getClass ("UISwitch");
	__xamarin_class_map [87].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [88].handle = objc_getClass ("NSData");
	__xamarin_class_map [89].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [90].handle = objc_getClass ("NSSet");
	__xamarin_class_map [91].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [92].handle = objc_getClass ("UIImagePickerController");
	__xamarin_class_map [93].handle = objc_getClass ("CLLocationManager");
	__xamarin_class_map [94].handle = objc_getClass ("MKMapView");
	__xamarin_class_map [95].handle = objc_getClass ("CKContainer");
	__xamarin_class_map [96].handle = objc_getClass ("CKDatabase");
	__xamarin_class_map [97].handle = [AppDelegate class];
	__xamarin_class_map [98].handle = [CKSubscriptionViewController class];
	__xamarin_class_map [99].handle = [LocationQueryViewController class];
	__xamarin_class_map [100].handle = [MasterViewController class];
	__xamarin_class_map [101].handle = [CKAssetViewController class];
	__xamarin_class_map [102].handle = [CKRecordViewController class];
	__xamarin_class_map [103].handle = [CKReferenceDetailViewController class];
	__xamarin_class_map [104].handle = [CKReferenceViewController class];
	__xamarin_class_map [105].handle = [CloudKitAtlas_CloudManager class];
	__xamarin_class_map [106].handle = [DiscoverabilityViewController class];
	__xamarin_class_map [107].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [108].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [109].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__xamarin_class_map [110].handle = objc_getClass ("UIKit_UIImagePickerController__UIImagePickerControllerDelegate");
	__xamarin_class_map [111].handle = objc_getClass ("CoreLocation_CLLocationManager__CLLocationManagerDelegate");
	__xamarin_class_map [112].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [113].handle = objc_getClass ("MapKit_MKMapView__MKMapViewDelegate");
	xamarin_add_registration_map (&__xamarin_registration_map);
}

