package Image::Filter::Solarize;
require Exporter;
require DynaLoader;
use vars qw(@ISA @EXPORT $VERSION);
@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(solarize);
$VERSION = 0.07;
package Image::Filter::Solarize;
bootstrap Image::Filter::Solarize;

1;
__END__
=head1 NAME
Image::Filter::Solarize - Solarize an image.

=head1 SYNOPSIS

    use Image::Filter;

    $image = Image::Filter::newFromJpeg("munich.jpg");
    $image = $image->filter("solarize",6); #Load Image::Filter::Solarize
    #Default seed is 128
    $image->Jpeg("test.jpg"); 

=head1 DESCRIPTION

Image::Filter is a perl module that can apply image filters. This module
implements a solarize algorithm. It uses the gd lib from Thomas 
Boutell. This filter handles true color images. Seed is used as second parameter. 

=head1 EXPORT

gaussian

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
