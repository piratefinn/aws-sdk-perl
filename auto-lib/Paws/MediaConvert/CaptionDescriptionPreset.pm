package Paws::MediaConvert::CaptionDescriptionPreset;
  use Moose;
  has DestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::CaptionDestinationSettings', request_name => 'destinationSettings', traits => ['NameInRequest'], required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has LanguageDescription => (is => 'ro', isa => 'Str', request_name => 'languageDescription', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionDescriptionPreset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionDescriptionPreset object:

  $service_obj->Method(Att1 => { DestinationSettings => $value, ..., LanguageDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionDescriptionPreset object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSettings

=head1 DESCRIPTION

Caption Description for preset

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationSettings => L<Paws::MediaConvert::CaptionDestinationSettings>

  


=head2 LanguageCode => Str

  Indicates the language of the caption output track.


=head2 LanguageDescription => Str

  Human readable information to indicate captions available for players
(eg. English, or Spanish). Alphanumeric characters, spaces, and
underscore are legal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

