package Paws::Firehose::ExtendedS3DestinationConfiguration;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str', required => 1);
  has BufferingHints => (is => 'ro', isa => 'Paws::Firehose::BufferingHints');
  has CloudWatchLoggingOptions => (is => 'ro', isa => 'Paws::Firehose::CloudWatchLoggingOptions');
  has CompressionFormat => (is => 'ro', isa => 'Str');
  has DataFormatConversionConfiguration => (is => 'ro', isa => 'Paws::Firehose::DataFormatConversionConfiguration');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Firehose::EncryptionConfiguration');
  has Prefix => (is => 'ro', isa => 'Str');
  has ProcessingConfiguration => (is => 'ro', isa => 'Paws::Firehose::ProcessingConfiguration');
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has S3BackupConfiguration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration');
  has S3BackupMode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ExtendedS3DestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ExtendedS3DestinationConfiguration object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., S3BackupMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ExtendedS3DestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Describes the configuration of a destination in Amazon S3.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketARN => Str

  The ARN of the S3 bucket. For more information, see Amazon Resource
Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 BufferingHints => L<Paws::Firehose::BufferingHints>

  The buffering option.


=head2 CloudWatchLoggingOptions => L<Paws::Firehose::CloudWatchLoggingOptions>

  The Amazon CloudWatch logging options for your delivery stream.


=head2 CompressionFormat => Str

  The compression format. If no value is specified, the default is
UNCOMPRESSED.


=head2 DataFormatConversionConfiguration => L<Paws::Firehose::DataFormatConversionConfiguration>

  The serializer, deserializer, and schema for converting data from the
JSON format to the Parquet or ORC format before writing it to Amazon
S3.


=head2 EncryptionConfiguration => L<Paws::Firehose::EncryptionConfiguration>

  The encryption configuration. If no value is specified, the default is
no encryption.


=head2 Prefix => Str

  The "YYYY/MM/DD/HH" time format prefix is automatically used for
delivered Amazon S3 files. You can specify an extra prefix to be added
in front of the time format prefix. If the prefix ends with a slash, it
appears as a folder in the S3 bucket. For more information, see Amazon
S3 Object Name Format
(http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name)
in the I<Amazon Kinesis Data Firehose Developer Guide>.


=head2 ProcessingConfiguration => L<Paws::Firehose::ProcessingConfiguration>

  The data processing configuration.


=head2 B<REQUIRED> RoleARN => Str

  The Amazon Resource Name (ARN) of the AWS credentials. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 S3BackupConfiguration => L<Paws::Firehose::S3DestinationConfiguration>

  The configuration for backup in Amazon S3.


=head2 S3BackupMode => Str

  The Amazon S3 backup mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

