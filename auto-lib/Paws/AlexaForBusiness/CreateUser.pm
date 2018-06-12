
package Paws::AlexaForBusiness::CreateUser;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::Tag]');
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::CreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateUser - Arguments for method CreateUser on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

As an example:

  $service_obj->CreateUser(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, user-specified identifier for this request that ensures
idempotency.



=head2 Email => Str

The email address for the user.



=head2 FirstName => Str

The first name for the user.



=head2 LastName => Str

The last name for the user.



=head2 Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]

The tags for the user.



=head2 B<REQUIRED> UserId => Str

The ARN for the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

