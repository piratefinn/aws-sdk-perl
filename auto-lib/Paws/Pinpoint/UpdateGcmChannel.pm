
package Paws::Pinpoint::UpdateGcmChannel;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has GCMChannelRequest => (is => 'ro', isa => 'Paws::Pinpoint::GCMChannelRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GCMChannelRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGcmChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/gcm');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateGcmChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateGcmChannel - Arguments for method UpdateGcmChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGcmChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateGcmChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGcmChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateGcmChannelResponse = $pinpoint->UpdateGcmChannel(
      ApplicationId     => 'My__string',
      GCMChannelRequest => {
        ApiKey  => 'My__string',
        Enabled => 1,              # OPTIONAL
      },

    );

    # Results:
    my $GCMChannelResponse = $UpdateGcmChannelResponse->GCMChannelResponse;

    # Returns a L<Paws::Pinpoint::UpdateGcmChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> GCMChannelRequest => L<Paws::Pinpoint::GCMChannelRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGcmChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

