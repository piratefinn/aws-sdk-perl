
package Paws::MTurk::RejectQualificationRequest;
  use Moose;
  has QualificationRequestId => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectQualificationRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::RejectQualificationRequestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::RejectQualificationRequest - Arguments for method RejectQualificationRequest on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectQualificationRequest on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method RejectQualificationRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectQualificationRequest.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $RejectQualificationRequestResponse =
      $mturk -requester->RejectQualificationRequest(
      QualificationRequestId => 'MyString',
      Reason                 => 'MyString',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/mturk/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QualificationRequestId => Str

The ID of the Qualification request, as returned by the
C<ListQualificationRequests> operation.



=head2 Reason => Str

A text message explaining why the request was rejected, to be shown to
the Worker who made the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectQualificationRequest in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

