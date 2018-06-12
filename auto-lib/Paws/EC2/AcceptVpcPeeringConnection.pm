
package Paws::EC2::AcceptVpcPeeringConnection;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcPeeringConnectionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AcceptVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptVpcPeeringConnection - Arguments for method AcceptVpcPeeringConnection on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptVpcPeeringConnection on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AcceptVpcPeeringConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptVpcPeeringConnection.

As an example:

  $service_obj->AcceptVpcPeeringConnection(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AcceptVpcPeeringConnection>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 VpcPeeringConnectionId => Str

The ID of the VPC peering connection. You must specify this parameter
in the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptVpcPeeringConnection in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

