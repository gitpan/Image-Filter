// C code for Image::Filter::Posterize
// Simple Black & White Posterize
// (c) 2002 - Hendrik Van Belleghem
// hendrik@quickndirty.org
// Released under the GPL

#include <math.h>
#include <stdio.h>
#include "gd.h"

gdImagePtr posterize (gdImagePtr imageptr)
{ gdImagePtr impost;
  int dimx = 0;
  int dimy = 0;
  int w = 0;
  int h = 0;
  int index = 0;
  float newfcolor = 0.0;
  int newcolor = 0;
  dimx = gdImageSX(imageptr);
  dimy = gdImageSY(imageptr);
  impost = gdImageCreate(dimx,dimy);
  for (w = 0; w < dimx ; w++)
  { for (h = 0; h < dimy ; h++)
    { newcolor = gdImageRed(imageptr,gdImageGetPixel(imageptr,w,h));
      newcolor = newcolor < 64 ? 0 : 
                ( newcolor > 64 && newcolor < 128 ? 85 : 
	          ( newcolor > 128 && newcolor < 192 ? 170 : 255 ) );
      index = gdImageColorExact(impost,newcolor,newcolor,newcolor);
      if (index == -1) { index = gdImageColorAllocate(impost,newcolor,newcolor,newcolor); }
      gdImageSetPixel(impost,w,h,index);
    }
  }
  return impost;
}
