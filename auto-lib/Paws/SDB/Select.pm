
package Paws::SDB::Select;
  use Moose;
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has NextToken => (is => 'ro', isa => 'Str');
  has SelectExpression => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Select');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SDB::SelectResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SelectResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::Select - Arguments for method Select on L<Paws::SDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Select on the
L<Amazon SimpleDB|Paws::SDB> service. Use the attributes of this class
as arguments to method Select.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Select.

=head1 SYNOPSIS

    my $sdb = Paws->service('SDB');
    my $SelectResult = $sdb->Select(
      SelectExpression => 'MyString',
      ConsistentRead   => 1,             # OPTIONAL
      NextToken        => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $SelectResult->NextToken;
    my $Items     = $SelectResult->Items;

    # Returns a L<Paws::SDB::SelectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/simpledb/>

=head1 ATTRIBUTES


=head2 ConsistentRead => Bool

Determines whether or not strong consistency should be enforced when
data is read from SimpleDB. If C<true>, any data previously written to
SimpleDB will be returned. Otherwise, results will be consistent
eventually, and the client may not see data that was written
immediately before your read.



=head2 NextToken => Str

A string informing Amazon SimpleDB where to start the next list of
C<ItemNames>.



=head2 B<REQUIRED> SelectExpression => Str

The expression used to query the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Select in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

