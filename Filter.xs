#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "gd.h"

MODULE = Image::Filter		PACKAGE = Image::Filter		

gdImagePtr newFromJpeg(filename)
char*  filename

gdImagePtr newFromPng(filename)
char*  filename

void Png(imageptr, filename)
gdImagePtr imageptr
char* filename

void Jpeg(imageptr, filename)
gdImagePtr imageptr
char* filename