
package Paws::CloudFront::UpdateFieldLevelEncryptionProfile;
  use Moose;
  has FieldLevelEncryptionProfileConfig => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfileConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFieldLevelEncryptionProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/field-level-encryption-profile/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateFieldLevelEncryptionProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateFieldLevelEncryptionProfile - Arguments for method UpdateFieldLevelEncryptionProfile on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFieldLevelEncryptionProfile2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateFieldLevelEncryptionProfile2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFieldLevelEncryptionProfile2017_10_30.

As an example:

  $service_obj->UpdateFieldLevelEncryptionProfile2017_10_30(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateFieldLevelEncryptionProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldLevelEncryptionProfileConfig => L<Paws::CloudFront::FieldLevelEncryptionProfileConfig>

Request to update a field-level encryption profile.



=head2 B<REQUIRED> Id => Str

The ID of the field-level encryption profile request.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
profile identity to update. For example: C<E2QWRUHAPOMQZL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFieldLevelEncryptionProfile2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

