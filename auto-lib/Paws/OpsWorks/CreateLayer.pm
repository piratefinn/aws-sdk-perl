
package Paws::OpsWorks::CreateLayer;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Bool');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Bool');
  has CloudWatchLogsConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::CloudWatchLogsConfiguration');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Paws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableAutoHealing => (is => 'ro', isa => 'Bool');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has LifecycleEventConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::LifecycleEventConfiguration');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Packages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Shortname => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has UseEbsOptimizedInstances => (is => 'ro', isa => 'Bool');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::VolumeConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLayer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateLayerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateLayer - Arguments for method CreateLayer on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLayer on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method CreateLayer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLayer.

As an example:

  $service_obj->CreateLayer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/CreateLayer>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::OpsWorks::LayerAttributes>

One or more user-defined key-value pairs to be added to the stack
attributes.

To create a cluster layer, set the C<EcsClusterArn> attribute to the
cluster's ARN.



=head2 AutoAssignElasticIps => Bool

Whether to automatically assign an Elastic IP address
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
to the layer's instances. For more information, see How to Edit a Layer
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).



=head2 AutoAssignPublicIps => Bool

For stacks that are running in a VPC, whether to automatically assign a
public IP address to the layer's instances. For more information, see
How to Edit a Layer
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).



=head2 CloudWatchLogsConfiguration => L<Paws::OpsWorks::CloudWatchLogsConfiguration>

Specifies CloudWatch Logs configuration options for the layer. For more
information, see CloudWatchLogsLogStream.



=head2 CustomInstanceProfileArn => Str

The ARN of an IAM profile to be used for the layer's EC2 instances. For
more information about IAM ARNs, see Using Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).



=head2 CustomJson => Str

A JSON-formatted string containing custom stack configuration and
deployment attributes to be installed on the layer's instances. For
more information, see Using Custom JSON
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html).
This feature is supported as of version 1.7.42 of the AWS CLI.



=head2 CustomRecipes => L<Paws::OpsWorks::Recipes>

A C<LayerCustomRecipes> object that specifies the layer custom recipes.



=head2 CustomSecurityGroupIds => ArrayRef[Str|Undef]

An array containing the layer custom security group IDs.



=head2 EnableAutoHealing => Bool

Whether to disable auto healing for the layer.



=head2 InstallUpdatesOnBoot => Bool

Whether to install operating system and package updates when the
instance boots. The default value is C<true>. To control when updates
are installed, set this value to C<false>. You must then update your
instances manually by using CreateDeployment to run the
C<update_dependencies> stack command or by manually running C<yum>
(Amazon Linux) or C<apt-get> (Ubuntu) on the instances.

To ensure that your instances have the latest security updates, we
strongly recommend using the default value of C<true>.



=head2 LifecycleEventConfiguration => L<Paws::OpsWorks::LifecycleEventConfiguration>

A C<LifeCycleEventConfiguration> object that you can use to configure
the Shutdown event to specify an execution timeout and enable or
disable Elastic Load Balancer connection draining.



=head2 B<REQUIRED> Name => Str

The layer name, which is used by the console.



=head2 Packages => ArrayRef[Str|Undef]

An array of C<Package> objects that describes the layer packages.



=head2 B<REQUIRED> Shortname => Str

For custom layers only, use this parameter to specify the layer's short
name, which is used internally by AWS OpsWorks Stacks and by Chef
recipes. The short name is also used as the name for the directory
where your app files are installed. It can have a maximum of 200
characters, which are limited to the alphanumeric characters, '-', '_',
and '.'.

The built-in layers' short names are defined by AWS OpsWorks Stacks.
For more information, see the Layer Reference
(http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html).



=head2 B<REQUIRED> StackId => Str

The layer stack ID.



=head2 B<REQUIRED> Type => Str

The layer type. A stack cannot have more than one built-in layer of the
same type. It can have any number of custom layers. Built-in layers are
not available in Chef 12 stacks.

Valid values are: C<"aws-flow-ruby">, C<"ecs-cluster">, C<"java-app">, C<"lb">, C<"web">, C<"php-app">, C<"rails-app">, C<"nodejs-app">, C<"memcached">, C<"db-master">, C<"monitoring-master">, C<"custom">

=head2 UseEbsOptimizedInstances => Bool

Whether to use Amazon EBS-optimized instances.



=head2 VolumeConfigurations => ArrayRef[L<Paws::OpsWorks::VolumeConfiguration>]

A C<VolumeConfigurations> object that describes the layer's Amazon EBS
volumes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLayer in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

