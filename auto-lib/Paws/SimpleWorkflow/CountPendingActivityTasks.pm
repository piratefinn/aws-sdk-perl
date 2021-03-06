
package Paws::SimpleWorkflow::CountPendingActivityTasks;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', traits => ['NameInRequest'], request_name => 'taskList' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::PendingTaskCount');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::CountPendingActivityTasks - Arguments for method CountPendingActivityTasks on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CountPendingActivityTasks on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method CountPendingActivityTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CountPendingActivityTasks.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $PendingTaskCount = $swf->CountPendingActivityTasks(
      Domain   => 'MyDomainName',
      TaskList => {
        name => 'MyName',    # min: 1, max: 256

      },

    );

    # Results:
    my $Truncated = $PendingTaskCount->Truncated;
    my $Count     = $PendingTaskCount->Count;

    # Returns a L<Paws::SimpleWorkflow::PendingTaskCount> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/CountPendingActivityTasks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the task list.



=head2 B<REQUIRED> TaskList => L<Paws::SimpleWorkflow::TaskList>

The name of the task list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CountPendingActivityTasks in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

