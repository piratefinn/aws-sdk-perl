
package Paws::OpsWorks::UpdateMyUserProfile;
  use Moose;
  has SshPublicKey => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::UpdateMyUserProfile - Arguments for method UpdateMyUserProfile on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMyUserProfile on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method UpdateMyUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMyUserProfile.

As an example:

  $service_obj->UpdateMyUserProfile(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/UpdateMyUserProfile>

=head1 ATTRIBUTES


=head2 SshPublicKey => Str

The user's SSH public key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMyUserProfile in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

