
package Paws::ES::PurchaseReservedElasticsearchInstanceOffering;
  use Moose;
  has InstanceCount => (is => 'ro', isa => 'Int');
  has ReservationName => (is => 'ro', isa => 'Str', required => 1);
  has ReservedElasticsearchInstanceOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedElasticsearchInstanceOffering');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/purchaseReservedInstanceOffering');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::PurchaseReservedElasticsearchInstanceOfferingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::PurchaseReservedElasticsearchInstanceOffering - Arguments for method PurchaseReservedElasticsearchInstanceOffering on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseReservedElasticsearchInstanceOffering on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method PurchaseReservedElasticsearchInstanceOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseReservedElasticsearchInstanceOffering.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $PurchaseReservedElasticsearchInstanceOfferingResponse =
      $es->PurchaseReservedElasticsearchInstanceOffering(
      ReservationName                         => 'MyReservationToken',
      ReservedElasticsearchInstanceOfferingId => 'MyGUID',
      InstanceCount                           => 1,                   # OPTIONAL
      );

    # Results:
    my $ReservedElasticsearchInstanceId =
      $PurchaseReservedElasticsearchInstanceOfferingResponse
      ->ReservedElasticsearchInstanceId;
    my $ReservationName =
      $PurchaseReservedElasticsearchInstanceOfferingResponse->ReservationName;

# Returns a L<Paws::ES::PurchaseReservedElasticsearchInstanceOfferingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/elasticsearch-service/>

=head1 ATTRIBUTES


=head2 InstanceCount => Int

The number of Elasticsearch instances to reserve.



=head2 B<REQUIRED> ReservationName => Str

A customer-specified identifier to track this reservation.



=head2 B<REQUIRED> ReservedElasticsearchInstanceOfferingId => Str

The ID of the reserved Elasticsearch instance offering to purchase.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseReservedElasticsearchInstanceOffering in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

