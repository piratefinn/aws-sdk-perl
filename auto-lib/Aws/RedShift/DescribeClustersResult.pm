
package Aws::RedShift::DescribeClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Cluster]', traits => ['Unwrapped'], xmlname => 'Clusters');
  has Marker => (is => 'ro', isa => 'Str');

}
1;