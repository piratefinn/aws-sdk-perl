
package Paws::MediaLive::DescribeInputResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AttachedChannels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'attachedChannels');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSource]', traits => ['NameInRequest'], request_name => 'sources');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInputResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Unique ARN of input (generated, immutable)


=head2 AttachedChannels => ArrayRef[Str|Undef]

List of channel IDs that that input is attached to (currently an input
can only be attached to one channel)


=head2 Destinations => ArrayRef[L<Paws::MediaLive::InputDestination>]

List of destinations of input (PULL-type)


=head2 Id => Str

generated ID of input (unique for user account, immutable)


=head2 Name => Str

user-assigned name (mutable)


=head2 SecurityGroups => ArrayRef[Str|Undef]

List of IDs for all the security groups attached to the input.


=head2 Sources => ArrayRef[L<Paws::MediaLive::InputSource>]

List of sources of input (PULL-type)


=head2 State => Str



Valid values are: C<"CREATING">, C<"DETACHED">, C<"ATTACHED">, C<"DELETING">, C<"DELETED">
=head2 Type => Str



Valid values are: C<"UDP_PUSH">, C<"RTP_PUSH">, C<"RTMP_PUSH">, C<"RTMP_PULL">, C<"URL_PULL">
=head2 _request_id => Str


=cut

