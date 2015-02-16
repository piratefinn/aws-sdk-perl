
package Paws::EC2::CancelBundleTaskResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has BundleTask => (is => 'ro', isa => 'Paws::EC2::BundleTask', traits => ['Unwrapped'], xmlname => 'bundleInstanceTask');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelBundleTaskResult

=head1 ATTRIBUTES

=head2 BundleTask => Paws::EC2::BundleTask

  

The bundle task.











=cut
