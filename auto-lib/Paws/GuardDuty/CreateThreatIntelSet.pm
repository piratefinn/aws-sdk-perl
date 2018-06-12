
package Paws::GuardDuty::CreateThreatIntelSet;
  use Moose;
  has Activate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'activate');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThreatIntelSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/threatintelset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateThreatIntelSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateThreatIntelSet - Arguments for method CreateThreatIntelSet on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThreatIntelSet on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateThreatIntelSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThreatIntelSet.

As an example:

  $service_obj->CreateThreatIntelSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Activate => Bool

A boolean value that indicates whether GuardDuty is to start using the
uploaded ThreatIntelSet.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector that you want to update.



=head2 Format => Str

The format of the file that contains the ThreatIntelSet.

Valid values are: C<"TXT">, C<"STIX">, C<"OTX_CSV">, C<"ALIEN_VAULT">, C<"PROOF_POINT">, C<"FIRE_EYE">

=head2 Location => Str

The URI of the file that contains the ThreatIntelSet. For example
(https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).



=head2 Name => Str

A user-friendly ThreatIntelSet name that is displayed in all finding
generated by activity that involves IP addresses included in this
ThreatIntelSet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThreatIntelSet in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

