
package Paws::DataPipeline::DeactivatePipeline;
  use Moose;
  has CancelActive => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'cancelActive' );
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::DeactivatePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::DeactivatePipeline - Arguments for method DeactivatePipeline on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeactivatePipeline on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method DeactivatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeactivatePipeline.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $DeactivatePipelineOutput = $datapipeline->DeactivatePipeline(
      PipelineId   => 'Myid',
      CancelActive => 1,        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/DeactivatePipeline>

=head1 ATTRIBUTES


=head2 CancelActive => Bool

Indicates whether to cancel any running objects. The default is true,
which sets the state of any running objects to C<CANCELED>. If this
value is false, the pipeline is deactivated after all running objects
finish.



=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeactivatePipeline in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

