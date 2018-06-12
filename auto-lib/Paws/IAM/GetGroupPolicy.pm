
package Paws::IAM::GetGroupPolicy;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetGroupPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetGroupPolicy - Arguments for method GetGroupPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetGroupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupPolicy.

As an example:

  $service_obj->GetGroupPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetGroupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name of the group the policy is associated with.

This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> PolicyName => Str

The name of the policy document to get.

This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

