
package Paws::SageMaker::DescribeHyperParameterTuningJob;
  use Moose;
  has HyperParameterTuningJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHyperParameterTuningJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeHyperParameterTuningJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHyperParameterTuningJob - Arguments for method DescribeHyperParameterTuningJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHyperParameterTuningJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeHyperParameterTuningJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHyperParameterTuningJob.

=head1 SYNOPSIS

    my $sagemaker = Paws->service('SageMaker');
    my $DescribeHyperParameterTuningJobResponse =
      $sagemaker->DescribeHyperParameterTuningJob(
      HyperParameterTuningJobName => 'MyHyperParameterTuningJobName',

      );

    # Results:
    my $TrainingJobStatusCounters =
      $DescribeHyperParameterTuningJobResponse->TrainingJobStatusCounters;
    my $FailureReason = $DescribeHyperParameterTuningJobResponse->FailureReason;
    my $ObjectiveStatusCounters =
      $DescribeHyperParameterTuningJobResponse->ObjectiveStatusCounters;
    my $BestTrainingJob =
      $DescribeHyperParameterTuningJobResponse->BestTrainingJob;
    my $HyperParameterTuningJobName =
      $DescribeHyperParameterTuningJobResponse->HyperParameterTuningJobName;
    my $HyperParameterTuningJobArn =
      $DescribeHyperParameterTuningJobResponse->HyperParameterTuningJobArn;
    my $LastModifiedTime =
      $DescribeHyperParameterTuningJobResponse->LastModifiedTime;
    my $HyperParameterTuningJobConfig =
      $DescribeHyperParameterTuningJobResponse->HyperParameterTuningJobConfig;
    my $HyperParameterTuningEndTime =
      $DescribeHyperParameterTuningJobResponse->HyperParameterTuningEndTime;
    my $TrainingJobDefinition =
      $DescribeHyperParameterTuningJobResponse->TrainingJobDefinition;
    my $CreationTime = $DescribeHyperParameterTuningJobResponse->CreationTime;
    my $HyperParameterTuningJobStatus =
      $DescribeHyperParameterTuningJobResponse->HyperParameterTuningJobStatus;

 # Returns a L<Paws::SageMaker::DescribeHyperParameterTuningJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker/DescribeHyperParameterTuningJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHyperParameterTuningJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

