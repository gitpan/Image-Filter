package Image::Filter;

require Exporter;
require DynaLoader;
use vars qw(@ISA $VERSION);
@ISA = qw(Exporter DynaLoader);
$VERSION = 0.04;
bootstrap Image::Filter $VERSION;

sub filter
{ my $self = shift;
  my $filter = shift;
  my @params = @_;
  my $module = ucfirst lc $filter;
  eval qq{ use Image::Filter::$module; };
  no strict 'refs';
  return &{$filter}($self,@params);
}

1;
__END__
=head1 NAME

Image::Filter - Apply filters onto images.

=head1 SYNOPSIS

    use Image::Filter;

    $image = Image::Filter::newFromJpeg("tiabw.jpg");
    $image = $image->filter("blur");
    $image->Jpeg("blurtest.jpg",$quality); #1-100, use negative value for default
    $image->Destroy;

=head1 DESCRIPTION

Image::Filter is a perl module that can apply image filters. Currently
blurring and embossing are included (several others are under development).
Image::Filter currently only does Black & White images. It uses the gd lib
from Thomas Boutell.

=head1 EXPORT

None by default.

=head1 FILTERS

=item Blur

Basic, none to fancy, Black and White blur routine

=item Edge

Basic, none to fancy, Black and White edge routine

=item Emboss

Basic, none to fancy, Black and White emboss routine

=item Eraseline

Erase every Nth line, with a specific color, thickness, either horizontally or vertically

=item Foo

Basic, none to fancy, Black and White foo routine

Oh yeah, this is a dummy filter :)

=item Greyscale

Basic, weighted average greyscale routine

=item Invert

Basic, none to fancy, invert routine

=item Level

Basic, none to fancy, level routine. Add a certain value to every RGB value.

=item Pixelize

Basic, none to fancy, pixelize routine. 

=item Posterize

Basic, none to fancy, Black and White posterize routine

=item Rotate

Basic, none to fancy, Counter Clockwise Rotation routine.

=item Sharpen

Basic, none to fancy, Black and White sharpen routine

=head1 METHODS

=item newFromJpeg($filename)

Load data from a JPEG file. Returns an Image::Filter instance

=item newFromPng($filename)

Load data from a PNG file. Returns an Image::Filter instance

=item newFromGd($filename)

Load data from a gd file. Returns an Image::Filter instance

=item newFromGd2($filename)

Load data from a gd2 file. Returns an Image::Filter instance

=item filter($image,$filter)

Apply a filter to an Image::Filter instance. Image preferably passed as Instance variable

$image->filter($filter);

=item Jpeg($filename,$quality)

Dump image data to JPEG file. Existing file will be overwritten (if possible). Quality is optional. Possible values range from 0 to 100 (Higher value is higher quality). Use negative value for default quality.

=item Png($filename)

Dump image data to PNG file. Existing file will be overwritten (if possible).

=item Gd($filename)

Dump image data to gd file. Existing file will be overwritten (if possible).

=item Gd2($filename)

Dump image data to gd2 file. Existing file will be overwritten (if possible).

=item Destroy

Destroy the instance of Image::Filter. (RECOMMENDED USE)

=head1 CALL FOR PARTICIPATION

Obviously, I'm no expert in math or C. If you feel like writing some filter code or have a nice algorithm you want to see implemented, give me a shout.

=head1 AUTHOR

Hendrik Van Belleghem, E<lt>beatnik + at + quickndirty + dot + orgE<gt>

=head1 LICENSE

Image::Filter is released under the GNU Public License. See COPYING and 
COPYRIGHT for more information.

=head1 THANKS & CREDITS

Image::Filter is based on the concepts tought to me by my math professor
J. Van Hee. This module wouldn't be possible without the work of Thomas 
Boutell on his gd library. Inspiration, but no code, was taken from Lincoln
D. Steins GD implementation of that same gd lib. 

=head1 SEE ALSO

L<perl>.

=cut
