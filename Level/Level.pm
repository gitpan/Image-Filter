# This file was automatically generated by SWIG
package Image::Filter::Level;
require Exporter;
require DynaLoader;
use vars qw(@ISA @EXPORT $VERSION);
@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(level);
$VERSION = 0.05;
package Image::Filter::Level;
bootstrap Image::Filter::Level;

1;
__END__
=head1 NAME

Image::Filter::Level - Level an image.

=head1 SYNOPSIS

    use Image::Filter;

    $image = Image::Filter::newFromJpeg("tiabw.jpg");
    $image = $image->filter("level",100); #Load Image::Filter::Level
    #Pass a level 100 to Image::Filter::Level
    $image->Jpeg("test.jpg"); 

=head1 DESCRIPTION

Image::Filter is a perl module that can apply image filters. This module
implements a simple level function. It uses the gd lib from Thomas Boutell. 
This filter handles true color images.

=head1 EXPORT

level

=head1 PARAMETERS

level takes 2 parameters: an instance of Image::Filter and the level to use. The first parameter is usually passed thru the filter call in Image::Filter. The second parameter should be passed explicitly. The value 0 (no change) is used by default.

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
