# This file was automatically generated by SWIG
package Image::Filter::Ripple;
require Exporter;
require DynaLoader;
use vars qw(@ISA @EXPORT $VERSION);
@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(ripple);
$VERSION = 0.06;
package Image::Filter::Ripple;
bootstrap Image::Filter::Ripple;

1;
__END__
=head1 NAME

Image::Filter::Ripple - Ripple an image.

=head1 SYNOPSIS

    use Image::Filter;

    $image = Image::Filter::newFromJpeg("munich.jpg");
    $image = $image->filter("ripple"); #Load Image::Filter::Ripple
    $image->Jpeg("test.jpg"); 

=head1 DESCRIPTION

Image::Filter is a perl module that can apply image filters. This module
implements a ripple algorithm. It uses the gd lib from Thomas 
Boutell. This filter handles true color images.

=head1 EXPORT

ripple

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
