
package Paws::GameLift::UpdateFleetCapacity;
  use Moose;
  has DesiredInstances => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleetCapacity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateFleetCapacityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateFleetCapacity - Arguments for method UpdateFleetCapacity on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleetCapacity on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method UpdateFleetCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleetCapacity.

As an example:

  $service_obj->UpdateFleetCapacity(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DesiredInstances => Int

Number of EC2 instances you want this fleet to host.



=head2 B<REQUIRED> FleetId => Str

Unique identifier for the fleet you want to update capacity for.



=head2 MaxSize => Int

Maximum value allowed for the fleet's instance count. Default if not
set is 1.



=head2 MinSize => Int

Minimum value allowed for the fleet's instance count. Default if not
set is 0.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleetCapacity in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

