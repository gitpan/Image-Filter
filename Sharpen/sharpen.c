// C code for Image::Filter::Sharpen
// Simple Black & White Sharpen
// (c) 2002 - Hendrik Van Belleghem
// hendrik@quickndirty.org
// Released under the GPL

#include <math.h>
#include <stdio.h>
#include "gd.h"

gdImagePtr sharpen (gdImagePtr imageptr)
{ gdImagePtr imsharp;
  int dimx = 0;
  int dimy = 0;
  int w = 0;
  int h = 0;
  int index = 0;
  int newcolor = 0;
  dimx = gdImageSX(imageptr);
  dimy = gdImageSY(imageptr);
  imsharp = gdImageCreate(dimx,dimy);
  for (w = 0; w < dimx ; w++)
  { for (h = 0; h < dimy ; h++)
    { newcolor = (
      5*gdImageRed(imageptr,gdImageGetPixel(imageptr,w,h))-
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w-1,h))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w,h-1))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w,h+1))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w+1,h)) ); 

      newcolor = newcolor > 255 ? 255 : (newcolor < 0 ? 0 : newcolor);
      index = gdImageColorExact(imsharp,newcolor,newcolor,newcolor);
      if (index == -1) { index = gdImageColorAllocate(imsharp,newcolor,newcolor,newcolor); }
      gdImageSetPixel(imsharp,w,h,index);
    }
  }
  return imsharp;
}
