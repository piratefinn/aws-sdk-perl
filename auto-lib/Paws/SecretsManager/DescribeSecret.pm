
package Paws::SecretsManager::DescribeSecret;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::DescribeSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DescribeSecret - Arguments for method DescribeSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method DescribeSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $DescribeSecretResponse = $secretsmanager->DescribeSecret(
      SecretId => 'MySecretIdType',

    );

    # Results:
    my $KmsKeyId           = $DescribeSecretResponse->KmsKeyId;
    my $LastAccessedDate   = $DescribeSecretResponse->LastAccessedDate;
    my $LastRotatedDate    = $DescribeSecretResponse->LastRotatedDate;
    my $Description        = $DescribeSecretResponse->Description;
    my $ARN                = $DescribeSecretResponse->ARN;
    my $VersionIdsToStages = $DescribeSecretResponse->VersionIdsToStages;
    my $Name               = $DescribeSecretResponse->Name;
    my $RotationRules      = $DescribeSecretResponse->RotationRules;
    my $Tags               = $DescribeSecretResponse->Tags;
    my $LastChangedDate    = $DescribeSecretResponse->LastChangedDate;
    my $RotationLambdaARN  = $DescribeSecretResponse->RotationLambdaARN;
    my $RotationEnabled    = $DescribeSecretResponse->RotationEnabled;
    my $DeletedDate        = $DescribeSecretResponse->DeletedDate;

    # Returns a L<Paws::SecretsManager::DescribeSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/DescribeSecret>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

The identifier of the secret whose details you want to retrieve. You
can specify either the Amazon Resource Name (ARN) or the friendly name
of the secret.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

