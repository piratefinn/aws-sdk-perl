
package Paws::Glue::CreateConnection;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ConnectionInput => (is => 'ro', isa => 'Paws::Glue::ConnectionInput', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateConnection - Arguments for method CreateConnection on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnection on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnection.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateConnectionResponse = $glue->CreateConnection(
      ConnectionInput => {
        Name                 => 'MyNameString',    # min: 1, max: 255
        ConnectionProperties => {
          'HOST' => 'MyValueString'
          , # key: values: HOST, PORT, USERNAME, PASSWORD, JDBC_DRIVER_JAR_URI, JDBC_DRIVER_CLASS_NAME, JDBC_ENGINE, JDBC_ENGINE_VERSION, CONFIG_FILES, INSTANCE_ID, JDBC_CONNECTION_URL, value: max: 1024
        },    # max: 100
        ConnectionType                 => 'JDBC',    # values: JDBC, SFTP
        PhysicalConnectionRequirements => {
          SecurityGroupIdList => [
            'MyNameString', ...                      # min: 1, max: 255
          ],                                         # max: 50; OPTIONAL
          AvailabilityZone => 'MyNameString',        # min: 1, max: 255
          SubnetId         => 'MyNameString',        # min: 1, max: 255
        },    # OPTIONAL
        MatchCriteria => [
          'MyNameString', ...    # min: 1, max: 255
        ],                       # max: 10; OPTIONAL
        Description => 'MyDescriptionString',    # max: 2048; OPTIONAL
      },
      CatalogId => 'MyCatalogIdString',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateConnection>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which to create the connection. If none
is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> ConnectionInput => L<Paws::Glue::ConnectionInput>

A C<ConnectionInput> object defining the connection to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnection in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

