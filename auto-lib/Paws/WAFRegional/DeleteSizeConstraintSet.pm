
package Paws::WAFRegional::DeleteSizeConstraintSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has SizeConstraintSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSizeConstraintSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::DeleteSizeConstraintSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::DeleteSizeConstraintSet - Arguments for method DeleteSizeConstraintSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSizeConstraintSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method DeleteSizeConstraintSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSizeConstraintSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To delete a size constraint set
    # The following example deletes a size constraint set  with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $DeleteSizeConstraintSetResponse =
      $waf -regional->DeleteSizeConstraintSet(
      {
        'SizeConstraintSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5',
        'ChangeToken'         => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f'
      }
      );

    # Results:
    my $ChangeToken = $DeleteSizeConstraintSetResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::DeleteSizeConstraintSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/DeleteSizeConstraintSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> SizeConstraintSetId => Str

The C<SizeConstraintSetId> of the SizeConstraintSet that you want to
delete. C<SizeConstraintSetId> is returned by CreateSizeConstraintSet
and by ListSizeConstraintSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSizeConstraintSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

