#!/usr/bin/perl

use Test;

BEGIN { plan tests => 62 }

use Image::Filter;

my $image = Image::Filter::newFromJpeg("mystique.jpg");
ok($image);

my $imagebw = $image->filter("greyscale");
$imagebw->Jpeg("mystiquebw.jpg",100);
ok($imagebw);

for(qw(blur emboss edge posterize sharpen))
{ my $image2 = $imagebw->filter($_);
  $image2->Jpeg("mystique$_.jpg",100);
  ok($image2);
  $image2->Destroy;
  ok($image2);
}

for(qw(rotate invert pixelize))
{ my $image2 = $image->filter($_);
  $image2->Jpeg("mystique$_.jpg",100);
  ok($image2);
  $image2->Destroy;
  ok($image2);
}

my $image2 = $image->filter("level",100);
$image2->Jpeg("mystiquelevel.jpg",100);
ok($image2);
$image2->Destroy;
ok($image2);

for(1..10)
{ my $image2 = $image->filter("eraseline",$_,0);
  $image2->Jpeg("mystiqueeraseh$_.jpg",100);
  ok($image2);
  $image2->Destroy;
  ok($image2);
}

for(1..10)
{ my $image2 = $image->filter("eraseline",$_,1);
  $image2->Jpeg("mystiqueerasev$_.jpg",100);
  ok($image2);
  $image2->Destroy;
  ok($image2);
}

$imagebw->Gd("mystiquebw.gd");
ok($imagebw);
$imagebw->Gd2("mystiquebw.gd2");
ok($imagebw);

$image->Destroy;
$imagebw->Destroy;