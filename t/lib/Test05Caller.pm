package Test05Caller {
  use Moose;

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

use Data::Dumper;
print Dumper($requestObj);

    return $requestObj;
  }

}

1;