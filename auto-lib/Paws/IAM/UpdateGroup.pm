
package Paws::IAM::UpdateGroup;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has NewGroupName => (is => 'ro', isa => 'Str');
  has NewPath => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateGroup - Arguments for method UpdateGroup on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroup on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroup.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To rename an IAM group
    # The following command changes the name of the IAM group Test to Test-1.
    $iam->UpdateGroup(
      {
        'NewGroupName' => 'Test-1',
        'GroupName'    => 'Test'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

Name of the IAM group to update. If you're changing the name of the
group, this is the original name.

This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 NewGroupName => Str

New name for the IAM group. Only include this if changing the group's
name.

This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 NewPath => Str

New path for the IAM group. Only include this if changing the group's
path.

This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (\u0021) through the DEL character (\u007F),
including most punctuation characters, digits, and upper and lowercased
letters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroup in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

