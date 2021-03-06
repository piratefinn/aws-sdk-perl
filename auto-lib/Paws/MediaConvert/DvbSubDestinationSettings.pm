package Paws::MediaConvert::DvbSubDestinationSettings;
  use Moose;
  has Alignment => (is => 'ro', isa => 'Str', request_name => 'alignment', traits => ['NameInRequest'], required => 1);
  has BackgroundColor => (is => 'ro', isa => 'Str', request_name => 'backgroundColor', traits => ['NameInRequest']);
  has BackgroundOpacity => (is => 'ro', isa => 'Int', request_name => 'backgroundOpacity', traits => ['NameInRequest']);
  has FontColor => (is => 'ro', isa => 'Str', request_name => 'fontColor', traits => ['NameInRequest']);
  has FontOpacity => (is => 'ro', isa => 'Int', request_name => 'fontOpacity', traits => ['NameInRequest'], required => 1);
  has FontResolution => (is => 'ro', isa => 'Int', request_name => 'fontResolution', traits => ['NameInRequest']);
  has FontSize => (is => 'ro', isa => 'Int', request_name => 'fontSize', traits => ['NameInRequest']);
  has OutlineColor => (is => 'ro', isa => 'Str', request_name => 'outlineColor', traits => ['NameInRequest'], required => 1);
  has OutlineSize => (is => 'ro', isa => 'Int', request_name => 'outlineSize', traits => ['NameInRequest'], required => 1);
  has ShadowColor => (is => 'ro', isa => 'Str', request_name => 'shadowColor', traits => ['NameInRequest']);
  has ShadowOpacity => (is => 'ro', isa => 'Int', request_name => 'shadowOpacity', traits => ['NameInRequest']);
  has ShadowXOffset => (is => 'ro', isa => 'Int', request_name => 'shadowXOffset', traits => ['NameInRequest']);
  has ShadowYOffset => (is => 'ro', isa => 'Int', request_name => 'shadowYOffset', traits => ['NameInRequest']);
  has TeletextSpacing => (is => 'ro', isa => 'Str', request_name => 'teletextSpacing', traits => ['NameInRequest']);
  has XPosition => (is => 'ro', isa => 'Int', request_name => 'xPosition', traits => ['NameInRequest']);
  has YPosition => (is => 'ro', isa => 'Int', request_name => 'yPosition', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DvbSubDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DvbSubDestinationSettings object:

  $service_obj->Method(Att1 => { Alignment => $value, ..., YPosition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DvbSubDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Alignment

=head1 DESCRIPTION

DVB-Sub Destination Settings

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alignment => Str

  


=head2 BackgroundColor => Str

  


=head2 BackgroundOpacity => Int

  Specifies the opacity of the background rectangle. 255 is opaque; 0 is
transparent. Leaving this parameter blank is equivalent to setting it
to 0 (transparent). All burn-in and DVB-Sub font settings must match.


=head2 FontColor => Str

  


=head2 B<REQUIRED> FontOpacity => Int

  Specifies the opacity of the burned-in captions. 255 is opaque; 0 is
transparent. All burn-in and DVB-Sub font settings must match.


=head2 FontResolution => Int

  Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in
and DVB-Sub font settings must match.


=head2 FontSize => Int

  A positive integer indicates the exact font size in points. Set to 0
for automatic font size selection. All burn-in and DVB-Sub font
settings must match.


=head2 B<REQUIRED> OutlineColor => Str

  


=head2 B<REQUIRED> OutlineSize => Int

  Specifies font outline size in pixels. This option is not valid for
source captions that are either 608/embedded or teletext. These source
settings are already pre-defined by the caption stream. All burn-in and
DVB-Sub font settings must match.


=head2 ShadowColor => Str

  


=head2 ShadowOpacity => Int

  Specifies the opacity of the shadow. 255 is opaque; 0 is transparent.
Leaving this parameter blank is equivalent to setting it to 0
(transparent). All burn-in and DVB-Sub font settings must match.


=head2 ShadowXOffset => Int

  Specifies the horizontal offset of the shadow relative to the captions
in pixels. A value of -2 would result in a shadow offset 2 pixels to
the left. All burn-in and DVB-Sub font settings must match.


=head2 ShadowYOffset => Int

  Specifies the vertical offset of the shadow relative to the captions in
pixels. A value of -2 would result in a shadow offset 2 pixels above
the text. All burn-in and DVB-Sub font settings must match.


=head2 TeletextSpacing => Str

  


=head2 XPosition => Int

  Specifies the horizontal position of the caption relative to the left
side of the output in pixels. A value of 10 would result in the
captions starting 10 pixels from the left of the output. If no explicit
x_position is provided, the horizontal caption position will be
determined by the alignment parameter. This option is not valid for
source captions that are STL, 608/embedded or teletext. These source
settings are already pre-defined by the caption stream. All burn-in and
DVB-Sub font settings must match.


=head2 YPosition => Int

  Specifies the vertical position of the caption relative to the top of
the output in pixels. A value of 10 would result in the captions
starting 10 pixels from the top of the output. If no explicit
y_position is provided, the caption will be positioned towards the
bottom of the output. This option is not valid for source captions that
are STL, 608/embedded or teletext. These source settings are already
pre-defined by the caption stream. All burn-in and DVB-Sub font
settings must match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

