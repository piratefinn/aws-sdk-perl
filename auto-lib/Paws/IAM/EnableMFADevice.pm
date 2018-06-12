
package Paws::IAM::EnableMFADevice;
  use Moose;
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::EnableMFADevice - Arguments for method EnableMFADevice on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableMFADevice on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method EnableMFADevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableMFADevice.

As an example:

  $service_obj->EnableMFADevice(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/EnableMFADevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationCode1 => Str

An authentication code emitted by the device.

The format for this parameter is a string of six digits.

Submit your request immediately after generating the authentication
codes. If you generate the codes and then wait too long to submit the
request, the MFA device successfully associates with the user but the
MFA device becomes out of sync. This happens because time-based
one-time passwords (TOTP) expire after a short period of time. If this
happens, you can resync the device
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html).



=head2 B<REQUIRED> AuthenticationCode2 => Str

A subsequent authentication code emitted by the device.

The format for this parameter is a string of six digits.

Submit your request immediately after generating the authentication
codes. If you generate the codes and then wait too long to submit the
request, the MFA device successfully associates with the user but the
MFA device becomes out of sync. This happens because time-based
one-time passwords (TOTP) expire after a short period of time. If this
happens, you can resync the device
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html).



=head2 B<REQUIRED> SerialNumber => Str

The serial number that uniquely identifies the MFA device. For virtual
MFA devices, the serial number is the device ARN.

This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: =,.@:/-



=head2 B<REQUIRED> UserName => Str

The name of the IAM user for whom you want to enable the MFA device.

This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableMFADevice in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

