package Image::Filter;

use strict;
require Exporter;
require DynaLoader;
use AutoLoader qw(AUTOLOAD);
use vars qw(@ISA $VERSION);
@ISA = qw(Exporter DynaLoader);
$VERSION = "0.02";
bootstrap Image::Filter $VERSION;

1;
__END__
=head1 NAME

Image::Filter - Apply filters onto images.

=head1 SYNOPSIS

    use Image::Filter;
    use Image::Filter::Blur;

    $image = Image::Filter::newFromJpeg("tiabw.jpg");
    $image = Image::Filter::Blur::blur($image);
    Image::Filter::Jpeg($image,"/temp/test.pl"); 

=head1 DESCRIPTION

Image::Filter is a perl module that can apply image filters. Currently
blurring and embossing are included (several others are under development).
Image::Filter currently only does Black & White images. It uses the gd lib
from Thomas Boutell.

=head2 EXPORT

None by default.

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
