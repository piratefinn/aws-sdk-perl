
package Paws::LexModels::DeleteBot;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::DeleteBot - Arguments for method DeleteBot on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBot on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method DeleteBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBot.

As an example:

  $service_obj->DeleteBot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/lex/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the bot. The name is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBot in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

