
package Paws::EC2::DetachNetworkInterface {
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DetachNetworkInterface - Arguments for method DetachNetworkInterface on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachNetworkInterface on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DetachNetworkInterface.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DetachNetworkInterface.

As an example:

  $service_obj->DetachNetworkInterface(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> AttachmentId => Str

  

The ID of the attachment.










=head2 DryRun => Bool

  

=head2 Force => Bool

  

Specifies whether to force a detachment.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DetachNetworkInterface in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
