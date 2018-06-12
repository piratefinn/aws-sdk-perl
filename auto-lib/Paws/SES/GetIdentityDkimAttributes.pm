
package Paws::SES::GetIdentityDkimAttributes;
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::GetIdentityDkimAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityDkimAttributes - Arguments for method GetIdentityDkimAttributes on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdentityDkimAttributes on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method GetIdentityDkimAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdentityDkimAttributes.

As an example:

  $service_obj->GetIdentityDkimAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetIdentityDkimAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identities => ArrayRef[Str|Undef]

A list of one or more verified identities - email addresses, domains,
or both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdentityDkimAttributes in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

