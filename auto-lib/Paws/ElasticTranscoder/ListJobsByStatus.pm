
package Paws::ElasticTranscoder::ListJobsByStatus;
  use Moose;
  has Ascending => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Ascending');
  has PageToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'PageToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobsByStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/jobsByStatus/{Status}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ListJobsByStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ListJobsByStatus - Arguments for method ListJobsByStatus on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobsByStatus on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method ListJobsByStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobsByStatus.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $ListJobsByStatusResponse = $elastictranscoder->ListJobsByStatus(
      Status    => 'MyJobStatus',
      Ascending => 'MyAscending',    # OPTIONAL
      PageToken => 'MyId',           # OPTIONAL
    );

    # Results:
    my $NextPageToken = $ListJobsByStatusResponse->NextPageToken;
    my $Jobs          = $ListJobsByStatusResponse->Jobs;

    # Returns a L<Paws::ElasticTranscoder::ListJobsByStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Ascending => Str

To list jobs in chronological order by the date and time that they were
submitted, enter C<true>. To list jobs in reverse chronological order,
enter C<false>.



=head2 PageToken => Str

When Elastic Transcoder returns more than one page of results, use
C<pageToken> in subsequent C<GET> requests to get each successive page
of results.



=head2 B<REQUIRED> Status => Str

To get information about all of the jobs associated with the current
AWS account that have a given status, specify the following status:
C<Submitted>, C<Progressing>, C<Complete>, C<Canceled>, or C<Error>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobsByStatus in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

