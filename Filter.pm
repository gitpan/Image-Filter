package Image::Filter;

require Exporter;
require DynaLoader;
use vars qw(@ISA $VERSION);
@ISA = qw(Exporter DynaLoader);
$VERSION = 0.03;
bootstrap Image::Filter $VERSION;

sub filter
{ my $self = shift;
  my $filter = shift;
  my @params = @_;
  my $module = ucfirst lc $filter;
  eval qq{ use Image::Filter::$module; };
  no strict 'refs';
  return &{$filter}($self);
}

1;
__END__
=head1 NAME

Image::Filter - Apply filters onto images.

=head1 SYNOPSIS

    use Image::Filter;

    $image = Image::Filter::newFromJpeg("tiabw.jpg");
    $image = $image->filter("blur");
    $image->Jpeg("blurtest.jpg"); 

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

=item Foo

Basic, none to fancy, Black and White foo routine

Oh yeah, this is a dummy filter :)

=item Invert

Basic, none to fancy, invert routine

=item Posterize

Basic, none to fancy, Black and White posterize routine

=item Sharpen

Basic, none to fancy, Black and White sharpen routine

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
