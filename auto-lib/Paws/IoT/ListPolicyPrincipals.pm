
package Paws::IoT::ListPolicyPrincipals;
  use Moose;
  has AscendingOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'isAscendingOrder');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'pageSize');
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-iot-policy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPolicyPrincipals');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy-principals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListPolicyPrincipalsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPolicyPrincipals - Arguments for method ListPolicyPrincipals on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPolicyPrincipals on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListPolicyPrincipals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPolicyPrincipals.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListPolicyPrincipalsResponse = $iot->ListPolicyPrincipals(
      PolicyName     => 'MyPolicyName',
      AscendingOrder => 1,                # OPTIONAL
      Marker         => 'MyMarker',       # OPTIONAL
      PageSize       => 1,                # OPTIONAL
    );

    # Results:
    my $Principals = $ListPolicyPrincipalsResponse->Principals;
    my $NextMarker = $ListPolicyPrincipalsResponse->NextMarker;

    # Returns a L<Paws::IoT::ListPolicyPrincipalsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListPolicyPrincipals>

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Specifies the order for results. If true, the results are returned in
ascending creation order.



=head2 Marker => Str

The marker for the next set of results.



=head2 PageSize => Int

The result page size.



=head2 B<REQUIRED> PolicyName => Str

The policy name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPolicyPrincipals in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

