
package Paws::EC2::DescribeFleetInstances;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeFleetInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetInstances - Arguments for method DescribeFleetInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetInstances on the 
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeFleetInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetInstances.

As an example:

  $service_obj->DescribeFleetInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.



=head2 B<REQUIRED> FleetId => Str

The ID of the EC2 Fleet.



=head2 MaxResults => Int

The maximum number of results to return in a single call. Specify a
value between 1 and 1000. The default value is 1000. To retrieve the
remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

