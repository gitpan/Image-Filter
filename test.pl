#!/usr/bin/perl

use Image::Filter;

my $image = Image::Filter::newFromJpeg("tiabw.jpg");
for(qw(blur emboss invert edge posterize sharpen foo))
{ my $image2 = $image->filter($_);
  $image2->Jpeg("tia$_.jpg");
}