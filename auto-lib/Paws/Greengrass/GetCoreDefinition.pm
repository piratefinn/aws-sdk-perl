
package Paws::Greengrass::GetCoreDefinition;
  use Moose;
  has CoreDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CoreDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCoreDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/cores/{CoreDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetCoreDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetCoreDefinition - Arguments for method GetCoreDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCoreDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetCoreDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCoreDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetCoreDefinitionResponse = $greengrass->GetCoreDefinition(
      CoreDefinitionId => 'My__string',

    );

    # Results:
    my $Arn                  = $GetCoreDefinitionResponse->Arn;
    my $LatestVersionArn     = $GetCoreDefinitionResponse->LatestVersionArn;
    my $LatestVersion        = $GetCoreDefinitionResponse->LatestVersion;
    my $CreationTimestamp    = $GetCoreDefinitionResponse->CreationTimestamp;
    my $Name                 = $GetCoreDefinitionResponse->Name;
    my $LastUpdatedTimestamp = $GetCoreDefinitionResponse->LastUpdatedTimestamp;
    my $Id                   = $GetCoreDefinitionResponse->Id;

    # Returns a L<Paws::Greengrass::GetCoreDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/greengrass/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreDefinitionId => Str

The ID of the core definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCoreDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

