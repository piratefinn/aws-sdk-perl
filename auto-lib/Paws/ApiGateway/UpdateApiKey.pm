
package Paws::ApiGateway::UpdateApiKey;
  use Moose;
  has ApiKey => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'api_Key', required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apikeys/{api_Key}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::ApiKey');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateApiKey - Arguments for method UpdateApiKey on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApiKey on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApiKey.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ApiKey = $apigateway->UpdateApiKey(
      ApiKey          => 'MyString',
      PatchOperations => [
        {
          path  => 'MyString',
          value => 'MyString',
          op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          from => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $CreatedDate     = $ApiKey->CreatedDate;
    my $Description     = $ApiKey->Description;
    my $LastUpdatedDate = $ApiKey->LastUpdatedDate;
    my $Value           = $ApiKey->Value;
    my $Name            = $ApiKey->Name;
    my $Enabled         = $ApiKey->Enabled;
    my $StageKeys       = $ApiKey->StageKeys;
    my $Id              = $ApiKey->Id;
    my $CustomerId      = $ApiKey->CustomerId;

    # Returns a L<Paws::ApiGateway::ApiKey> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiKey => Str

[Required] The identifier of the ApiKey resource to be updated.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApiKey in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

