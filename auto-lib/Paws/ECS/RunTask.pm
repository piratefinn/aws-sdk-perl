
package Paws::ECS::RunTask;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Count => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'count' );
  has Group => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'group' );
  has LaunchType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchType' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has Overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride', traits => ['NameInRequest'], request_name => 'overrides' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementStrategy]', traits => ['NameInRequest'], request_name => 'placementStrategy' );
  has PlatformVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformVersion' );
  has StartedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedBy' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::RunTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RunTask - Arguments for method RunTask on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunTask on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method RunTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunTask.

As an example:

  $service_obj->RunTask(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/RunTask>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster on
which to run your task. If you do not specify a cluster, the default
cluster is assumed.



=head2 Count => Int

The number of instantiations of the specified task to place on your
cluster. You can specify up to 10 tasks per call.



=head2 Group => Str

The name of the task group to associate with the task. The default
value is the family name of the task definition (for example,
family:my-family-name).



=head2 LaunchType => Str

The launch type on which to run your task.

Valid values are: C<"EC2">, C<"FARGATE">

=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

The network configuration for the task. This parameter is required for
task definitions that use the C<awsvpc> network mode to receive their
own Elastic Network Interface, and it is not supported for other
network modes. For more information, see Task Networking
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Overrides => L<Paws::ECS::TaskOverride>

A list of container overrides in JSON format that specify the name of a
container in the specified task definition and the overrides it should
receive. You can override the default command for a container (that is
specified in the task definition or Docker image) with a C<command>
override. You can also override existing environment variables (that
are specified in the task definition or Docker image) on a container or
add new environment variables to it with an C<environment> override.

A total of 8192 characters are allowed for overrides. This limit
includes the JSON formatting characters of the override structure.



=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]

An array of placement constraint objects to use for the task. You can
specify up to 10 constraints per task (including constraints in the
task definition and those specified at run time).



=head2 PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]

The placement strategy objects to use for the task. You can specify a
maximum of five strategy rules per task.



=head2 PlatformVersion => Str

The platform version on which to run your task. If one is not
specified, the latest version is used by default.



=head2 StartedBy => Str

An optional tag specified when a task is started. For example if you
automatically trigger a task to run a batch process job, you could
apply a unique identifier for that job to your task with the
C<startedBy> parameter. You can then identify which tasks belong to
that job by filtering the results of a ListTasks call with the
C<startedBy> value. Up to 36 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed.

If a task is started by an Amazon ECS service, then the C<startedBy>
parameter contains the deployment ID of the service that starts it.



=head2 B<REQUIRED> TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to run. If a C<revision> is not specified, the latest
C<ACTIVE> revision is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunTask in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

