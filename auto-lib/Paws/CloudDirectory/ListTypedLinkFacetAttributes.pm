
package Paws::CloudDirectory::ListTypedLinkFacetAttributes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTypedLinkFacetAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/facet/attributes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListTypedLinkFacetAttributes - Arguments for method ListTypedLinkFacetAttributes on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTypedLinkFacetAttributes on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListTypedLinkFacetAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTypedLinkFacetAttributes.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListTypedLinkFacetAttributesResponse =
      $clouddirectory->ListTypedLinkFacetAttributes(
      Name       => 'MyTypedLinkName',
      SchemaArn  => 'MyArn',
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
      );

    # Results:
    my $NextToken  = $ListTypedLinkFacetAttributesResponse->NextToken;
    my $Attributes = $ListTypedLinkFacetAttributesResponse->Attributes;

# Returns a L<Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListTypedLinkFacetAttributes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 B<REQUIRED> Name => Str

The unique name of the typed link facet.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTypedLinkFacetAttributes in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

