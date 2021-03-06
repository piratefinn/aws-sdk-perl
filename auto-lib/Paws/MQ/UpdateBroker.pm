
package Paws::MQ::UpdateBroker;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'broker-id', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', traits => ['NameInRequest'], request_name => 'configuration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBroker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers/{broker-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::UpdateBrokerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBroker - Arguments for method UpdateBroker on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBroker on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method UpdateBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBroker.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $UpdateBrokerResponse = $mq->UpdateBroker(
      BrokerId      => 'My__string',
      Configuration => {
        Revision => 1,              # OPTIONAL
        Id       => 'My__string',
      },    # OPTIONAL
    );

    # Results:
    my $Configuration = $UpdateBrokerResponse->Configuration;
    my $BrokerId      = $UpdateBrokerResponse->BrokerId;

    # Returns a L<Paws::MQ::UpdateBrokerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/amazon-mq/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The name of the broker. This value must be unique in your AWS account,
1-50 characters long, must contain only letters, numbers, dashes, and
underscores, and must not contain whitespaces, brackets, wildcard
characters, or special characters.



=head2 Configuration => L<Paws::MQ::ConfigurationId>

A list of information about the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBroker in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

