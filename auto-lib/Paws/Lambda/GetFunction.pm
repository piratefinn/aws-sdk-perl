
package Paws::Lambda::GetFunction;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetFunctionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunction - Arguments for method GetFunction on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunction on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method GetFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFunction.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To retrieve a Lambda function's event source mapping
    # This operation retrieves a Lambda function's event source mapping
    my $GetFunctionResponse = $lambda->GetFunction(
      {
        'Qualifier'    => 1,
        'FunctionName' => 'myFunction'
      }
    );

    # Results:
    my $Configuration = $GetFunctionResponse->Configuration;
    my $Code          = $GetFunctionResponse->Code;

    # Returns a L<Paws::Lambda::GetFunctionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/GetFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

The Lambda function name.

You can specify a function name (for example, C<Thumbnail>) or you can
specify Amazon Resource Name (ARN) of the function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). AWS Lambda
also allows you to specify a partial ARN (for example,
C<account-id:Thumbnail>). Note that the length constraint applies only
to the ARN. If you specify only the function name, it is limited to 64
characters in length.



=head2 Qualifier => Str

Use this optional parameter to specify a function version or an alias
name. If you specify function version, the API uses qualified function
ARN for the request and returns information about the specific Lambda
function version. If you specify an alias name, the API uses the alias
ARN and returns information about the function version to which the
alias points. If you don't provide this parameter, the API uses
unqualified function ARN and returns information about the C<$LATEST>
version of the Lambda function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

