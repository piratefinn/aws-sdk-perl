
package Paws::MTurk::GetAssignment;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssignment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::GetAssignmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetAssignment - Arguments for method GetAssignment on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssignment on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method GetAssignment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssignment.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $GetAssignmentResponse = $mturk -requester->GetAssignment(
      AssignmentId => 'MyEntityId',

    );

    # Results:
    my $HIT        = $GetAssignmentResponse->HIT;
    my $Assignment = $GetAssignmentResponse->Assignment;

    # Returns a L<Paws::MTurk::GetAssignmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/mturk/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentId => Str

The ID of the Assignment to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssignment in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

