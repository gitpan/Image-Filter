#!/usr/bin/perl

use Test::More qw(no_plan);

BEGIN { use_ok("Image::Filter"); }

my $image = Image::Filter::newFromJpeg("mystique.jpg");
ok($image);

my $imagebw = $image->filter("greyscale");
$imagebw->Jpeg("mystiquebw.jpg",100);
ok($imagebw,"Loaded from JPEG");

#Black & White filters

for(qw(emboss edge posterize))
{ my $image2 = $imagebw->filter($_);
  $image2->Jpeg("mystique$_.jpg",100);
  ok($image2,"Applying $_");
  $image2->Destroy;
  ok($image2,"Destroyed Image");
}

for((32,64,128))
{ my $image2 = $imagebw->filter("floyd",$_);
  $image2->Jpeg("mystiquefloyd$_.jpg",100);
  ok($image2,"Applying Floyd $_");
  $image2->Destroy;
  ok($image2,"Destroyed Image");
}

#TrueColor filters

for(qw(rotate invert pixelize sharpen blur))
{ my $image2 = $image->filter($_);
  $image2->Jpeg("mystique$_.jpg",100);
  ok($image2,"Applying $_");
  $image2->Destroy;
  ok($image2,"Destroyed Image");
}

my $image2 = $image->filter("blur",1);
$image2->Jpeg("mystiqueblurbw.jpg",100);
ok($image2,"Applying BW Blur");
$image2->Destroy;
ok($image2,"Destroyed Image");

my $image2 = $image->filter("level",100);
$image2->Jpeg("mystiquelevel.jpg",100);
ok($image2,"Applying level");
$image2->Destroy;
ok($image2,"Destroyed Image");

for(1..10)
{ my $image2 = $image->filter("eraseline",$_,0);
  $image2->Jpeg("mystiqueeraseh$_.jpg",100);
  ok($image2,"Applying eraseline");
  $image2->Destroy;
  ok($image2,"Destroyed Image");
}

for(1..10)
{ my $image2 = $image->filter("eraseline",$_,1);
  $image2->Jpeg("mystiqueerasev$_.jpg",100);
  ok($image2,"Applying eraseline");
  $image2->Destroy;
  ok($image2,"Destroyed Image");
}

for(1..3)
{ $image2 = $image->filter("channel",$_);
  $image2->Jpeg("mystiquechannel$_.jpg",100);
  ok($image2,"Extracting layer $_");
}

$image->Destroy;
$imagebw->Destroy;