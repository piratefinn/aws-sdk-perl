
package Paws::CloudFormation::UpdateStackSet;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdministrationRoleARN => (is => 'ro', isa => 'Str');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStackSet - Arguments for method UpdateStackSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStackSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method UpdateStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStackSet.

As an example:

  $service_obj->UpdateStackSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/UpdateStackSet>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

The accounts in which to update associated stack instances. If you
specify accounts, you must also specify the regions in which to update
stack set instances.

To update I<all> the stack instances associated with this stack set, do
not specify the C<Accounts> or C<Regions> properties.

If the stack set update includes changes to the template (that is, if
the C<TemplateBody> or C<TemplateURL> properties are specified), or the
C<Parameters> property, AWS CloudFormation marks all stack instances
with a status of C<OUTDATED> prior to updating the stack instances in
the specified accounts and regions. If the stack set update does not
include changes to the template or parameters, AWS CloudFormation
updates the stack instances in the specified accounts and regions,
while leaving all other stack instances with their existing stack
instance status.



=head2 AdministrationRoleARN => Str

The Amazon Resource Number (ARN) of the IAM role to use to update this
stack set.

Specify an IAM role only if you are using customized administrator
roles to control which users or groups can manage specific stack sets
within the same administrator account. For more information, see Define
Permissions for Multiple Administrators
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html)
in the I<AWS CloudFormation User Guide>.

If you specify a customized administrator role, AWS CloudFormation uses
that role to update the stack. If you do not specify a customized
administrator role, AWS CloudFormation performs the update using the
role previously associated with the stack set, so long as you have
permissions to perform operations on the stack set.



=head2 Capabilities => ArrayRef[Str|Undef]

A list of values that you must specify before AWS CloudFormation can
create certain stack sets. Some stack set templates might include
resources that can affect permissions in your AWS accountE<mdash>for
example, by creating new AWS Identity and Access Management (IAM)
users. For those stack sets, you must explicitly acknowledge their
capabilities by specifying this parameter.

The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The
following resources require you to specify this parameter:

=over

=item *

AWS::IAM::AccessKey

=item *

AWS::IAM::Group

=item *

AWS::IAM::InstanceProfile

=item *

AWS::IAM::Policy

=item *

AWS::IAM::Role

=item *

AWS::IAM::User

=item *

AWS::IAM::UserToGroupAddition

=back

If your stack template contains these resources, we recommend that you
review all permissions that are associated with them and edit their
permissions if necessary.

If you have IAM resources, you can specify either capability. If you
have IAM resources with custom names, you must specify
CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action
returns an C<InsufficientCapabilities> error.

For more information, see Acknowledging IAM Resources in AWS
CloudFormation Templates.
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities)



=head2 Description => Str

A brief description of updates that you are making.



=head2 ExecutionRoleName => Str

The name of the IAM execution role to use to update the stack set. If
you do not specify an execution role, AWS CloudFormation uses the
C<AWSCloudFormationStackSetExecutionRole> role for the stack set
operation.

Specify an IAM role only if you are using customized execution roles to
control which stack resources users and groups can include in their
stack sets.

If you specify a customized execution role, AWS CloudFormation uses
that role to update the stack. If you do not specify a customized
execution role, AWS CloudFormation performs the update using the role
previously associated with the stack set, so long as you have
permissions to perform operations on the stack set.



=head2 OperationId => Str

The unique ID for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that
AWS CloudFormation performs the stack set operation only once, even if
you retry the request multiple times. You might retry stack set
operation requests to ensure that AWS CloudFormation successfully
received them.

If you don't specify an operation ID, AWS CloudFormation generates one
automatically.

Repeating this stack set operation with a new operation ID retries all
stack instances whose status is C<OUTDATED>.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

Preferences for how AWS CloudFormation performs this stack set
operation.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of input parameters for the stack set template.



=head2 Regions => ArrayRef[Str|Undef]

The regions in which to update associated stack instances. If you
specify regions, you must also specify accounts in which to update
stack set instances.

To update I<all> the stack instances associated with this stack set, do
not specify the C<Accounts> or C<Regions> properties.

If the stack set update includes changes to the template (that is, if
the C<TemplateBody> or C<TemplateURL> properties are specified), or the
C<Parameters> property, AWS CloudFormation marks all stack instances
with a status of C<OUTDATED> prior to updating the stack instances in
the specified accounts and regions. If the stack set update does not
include changes to the template or parameters, AWS CloudFormation
updates the stack instances in the specified accounts and regions,
while leaving all other stack instances with their existing stack
instance status.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to update.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

The key-value pairs to associate with this stack set and the stacks
created from it. AWS CloudFormation also propagates these tags to
supported resources that are created in the stacks. You can specify a
maximum number of 50 tags.

If you specify tags for this parameter, those tags replace any list of
tags that are currently associated with this stack set. This means:

=over

=item *

If you don't specify this parameter, AWS CloudFormation doesn't modify
the stack's tags.

=item *

If you specify I<any> tags using this parameter, you must specify
I<all> the tags that you want associated with this stack set, even tags
you've specifed before (for example, when creating the stack set or
during a previous update of the stack set.). Any tags that you don't
include in the updated list of tags are removed from the stack set, and
therefore from the stacks and resources as well.

=item *

If you specify an empty value, AWS CloudFormation removes all currently
associated tags.

=back

If you specify new tags as part of an C<UpdateStackSet> action, AWS
CloudFormation checks to see if you have the required IAM permission to
tag resources. If you omit tags that are currently associated with the
stack set from the list of tags you specify, AWS CloudFormation assumes
that you want to remove those tags from the stack set, and checks to
see if you have permission to untag resources. If you don't have the
necessary permission(s), the entire C<UpdateStackSet> action fails with
an C<access denied> error, and the stack set is not updated.



=head2 TemplateBody => Str

The structure that contains the template body, with a minimum length of
1 byte and a maximum length of 51,200 bytes. For more information, see
Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.



=head2 TemplateURL => Str

The location of the file that contains the template body. The URL must
point to a template (maximum size: 460,800 bytes) that is located in an
Amazon S3 bucket. For more information, see Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.



=head2 UsePreviousTemplate => Bool

Use the existing template that's associated with the stack set that
you're updating.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

