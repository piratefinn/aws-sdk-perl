
package Paws::DynamoDB::ListBackups;
  use Moose;
  has ExclusiveStartBackupArn => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has TableName => (is => 'ro', isa => 'Str');
  has TimeRangeLowerBound => (is => 'ro', isa => 'Str');
  has TimeRangeUpperBound => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBackups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ListBackupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListBackups - Arguments for method ListBackups on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBackups on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ListBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBackups.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ListBackupsOutput = $dynamodb->ListBackups(
      ExclusiveStartBackupArn => 'MyBackupArn',            # OPTIONAL
      Limit                   => 1,                        # OPTIONAL
      TableName               => 'MyTableName',            # OPTIONAL
      TimeRangeLowerBound     => '1970-01-01T01:00:00',    # OPTIONAL
      TimeRangeUpperBound     => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $LastEvaluatedBackupArn = $ListBackupsOutput->LastEvaluatedBackupArn;
    my $BackupSummaries        = $ListBackupsOutput->BackupSummaries;

    # Returns a L<Paws::DynamoDB::ListBackupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ListBackups>

=head1 ATTRIBUTES


=head2 ExclusiveStartBackupArn => Str

C<LastEvaluatedBackupARN> returned by the previous ListBackups call.



=head2 Limit => Int

Maximum number of backups to return at once.



=head2 TableName => Str

The backups from the table specified by TableName are listed.



=head2 TimeRangeLowerBound => Str

Only backups created after this time are listed. C<TimeRangeLowerBound>
is inclusive.



=head2 TimeRangeUpperBound => Str

Only backups created before this time are listed.
C<TimeRangeUpperBound> is exclusive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBackups in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

