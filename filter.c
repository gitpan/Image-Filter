// C code for Image::Filter
// (c) 2002 - Hendrik Van Belleghem
// hendrik@quickndirty.org
// Released under the GPL

#include <math.h>
#include <stdio.h>
#include "gd.h"
#include <stdlib.h>

gdImagePtr newFromJpeg (char *filename)
{ FILE *in;
  gdImagePtr im;
  in = fopen(filename, "rb");
  if (in == NULL)
  { fprintf(stderr,"Cannot open %s\n",filename);
    exit(EXIT_FAILURE);
  }
  im = gdImageCreateFromJpeg(in);
  fclose(in);
  return im;
}

gdImagePtr newFromPng (char *filename)
{ FILE *in;
  gdImagePtr im;
  in = fopen(filename, "rb");
  if (in == NULL)
  { fprintf(stderr,"Cannot open %s\n",filename);
    exit(EXIT_FAILURE);
  }
  im = gdImageCreateFromPng(in);
  fclose(in);
  return im;
}

void Png(gdImagePtr imageptr, char *filename)
{ FILE *out;
  out = fopen(filename, "wb");
  if (out == NULL)
  { fprintf(stderr,"Cannot open %s\n",filename);
    exit(EXIT_FAILURE);
  }
  gdImagePng(imageptr, out);
  fclose(out);
}

void Jpeg(gdImagePtr imageptr, char *filename)
{ FILE *out;
  out = fopen(filename, "wb");
  if (out == NULL)
  { fprintf(stderr,"Cannot open %s\n",filename);
    exit(EXIT_FAILURE);
  }
  gdImageJpeg(imageptr, out,-1);
  fclose(out);
}
