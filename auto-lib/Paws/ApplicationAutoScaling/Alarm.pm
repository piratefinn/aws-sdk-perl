package Paws::ApplicationAutoScaling::Alarm;
  use Moose;
  has AlarmARN => (is => 'ro', isa => 'Str', required => 1);
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::Alarm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::Alarm object:

  $service_obj->Method(Att1 => { AlarmARN => $value, ..., AlarmName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::Alarm object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmARN

=head1 DESCRIPTION

An object representing a CloudWatch alarm associated with a scaling
policy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmARN => Str

  The Amazon Resource Name (ARN) of the alarm.


=head2 B<REQUIRED> AlarmName => Str

  The name of the alarm.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
