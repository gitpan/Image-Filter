#!/usr/bin/perl

use Image::Filter;
use Image::Filter::Blur;
use Image::Filter::Emboss;
use Image::Filter::Edge;

$image = Image::Filter::newFromJpeg("tiabw.jpg");
$blurimage = Image::Filter::Blur::blur($image);
$embossimage = Image::Filter::Emboss::emboss($image);
$edgeimage = Image::Filter::Edge::edge($image);
Image::Filter::Png($blurimage,"blurtest.png"); 
Image::Filter::Jpeg($embossimage,"embosstest.jpg"); 
Image::Filter::Jpeg($edgeimage,"edgetest.jpg"); 

