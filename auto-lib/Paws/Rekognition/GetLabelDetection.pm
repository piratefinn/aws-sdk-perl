
package Paws::Rekognition::GetLabelDetection;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLabelDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetLabelDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetLabelDetection - Arguments for method GetLabelDetection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLabelDetection on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method GetLabelDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLabelDetection.

As an example:

  $service_obj->GetLabelDetection(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

Job identifier for the label detection operation for which you want
results returned. You get the job identifer from an initial call to
C<StartlabelDetection>.



=head2 MaxResults => Int

Maximum number of labels you want Amazon Rekognition to return in the
response. The default is 1000.



=head2 NextToken => Str

If the previous response was incomplete (because there are more labels
to retrieve), Rekognition Video returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
labels.



=head2 SortBy => Str

Sort to use for elements in the C<Labels> array. Use C<TIMESTAMP> to
sort array elements by the time labels are detected. Use C<NAME> to
alphabetically group elements for a label together. Within each label
group, the array element are sorted by detection confidence. The
default sort is by C<TIMESTAMP>.

Valid values are: C<"NAME">, C<"TIMESTAMP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLabelDetection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
