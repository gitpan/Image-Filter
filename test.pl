#!/usr/bin/perl

use Image::Filter;
use Image::Filter::Blur;
use Image::Filter::Emboss;

$image = Image::Filter::newFromJpeg("tiabw.jpg");
$image = Image::Filter::filter("blur",$image);
$image = Image::Filter::filter("emboss",$image);
Image::Filter::Png($image,"test.png"); 
Image::Filter::Jpeg($image,"test.jpg"); 

