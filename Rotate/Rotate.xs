#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#include "rotate.h"

MODULE = Image::Filter::Rotate PACKAGE = Image::Filter::Rotate

gdImagePtr 
rotate (imageptr)
        gdImagePtr  imageptr
