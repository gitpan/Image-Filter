// C code for Image::Filter::Blur
// (c) 2002 - Hendrik Van Belleghem
// hendrik@quickndirty.org
// Released under the GPL

#include <math.h>
#include <stdio.h>
#include "gd.h"

gdImagePtr blur (gdImagePtr imageptr)
{ gdImagePtr imblur;
  int dimx = 0;
  int dimy = 0;
  int w = 0;
  int h = 0;
  int index = 0;
  float newfcolor = 0.0;
  int newcolor = 0;
  dimx = gdImageSX(imageptr);
  dimy = gdImageSY(imageptr);
  imblur = gdImageCreate(dimx,dimy);
  for (w = 0; w < dimx ; w++)
  { for (h = 0; h < dimy ; h++)
    { newfcolor = (
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w-1,h-1))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w-1,h))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w-1,h+1))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w,h-1))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w,h))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w,h+1))+
  
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w+1,h-1))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w+1,h))+
      gdImageRed(imageptr,gdImageGetPixel(imageptr,w+1,h+1)) )/9; 
      newcolor = (int) newfcolor;
      newcolor = newcolor > 255 ? 255 : (newcolor < 0 ? 0 : newcolor);
      index = gdImageColorExact(imblur,newcolor,newcolor,newcolor);
      if (index == -1) { index = gdImageColorAllocate(imblur,newcolor,newcolor,newcolor); }
      gdImageSetPixel(imblur,w,h,index);
    }
  }

  return imblur;
}
