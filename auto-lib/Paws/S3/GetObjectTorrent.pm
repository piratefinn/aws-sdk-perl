
package Paws::S3::GetObjectTorrent {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectTorrent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?torrent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectTorrentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetObjectTorrentResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectTorrentOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 B<REQUIRED> Key => Str

  


=cut
