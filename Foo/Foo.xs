#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#include "foo.h"

MODULE = Image::Filter::Foo PACKAGE = Image::Filter::Foo 

gdImagePtr 
foo (imageptr)
        gdImagePtr  imageptr
