
package Paws::DirectConnect::CreatePublicVirtualInterface;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has NewPublicVirtualInterface => (is => 'ro', isa => 'Paws::DirectConnect::NewPublicVirtualInterface', traits => ['NameInRequest'], request_name => 'newPublicVirtualInterface' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::VirtualInterface');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreatePublicVirtualInterface - Arguments for method CreatePublicVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePublicVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreatePublicVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePublicVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $VirtualInterface = $directconnect->CreatePublicVirtualInterface(
      ConnectionId              => 'MyConnectionId',
      NewPublicVirtualInterface => {
        vlan                 => 1,
        virtualInterfaceName => 'MyVirtualInterfaceName',
        asn                  => 1,
        amazonAddress        => 'MyAmazonAddress',          # OPTIONAL
        routeFilterPrefixes  => [
          {
            cidr => 'MyCIDR',                               # OPTIONAL
          },
          ...
        ],                                                  # OPTIONAL
        authKey         => 'MyBGPAuthKey',        # OPTIONAL
        addressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        customerAddress => 'MyCustomerAddress',   # OPTIONAL
      },

    );

    # Results:
    my $VirtualGatewayId       = $VirtualInterface->VirtualGatewayId;
    my $DirectConnectGatewayId = $VirtualInterface->DirectConnectGatewayId;
    my $AddressFamily          = $VirtualInterface->AddressFamily;
    my $VirtualInterfaceType   = $VirtualInterface->VirtualInterfaceType;
    my $AuthKey                = $VirtualInterface->AuthKey;
    my $Asn                    = $VirtualInterface->Asn;
    my $VirtualInterfaceName   = $VirtualInterface->VirtualInterfaceName;
    my $BgpPeers               = $VirtualInterface->BgpPeers;
    my $VirtualInterfaceId     = $VirtualInterface->VirtualInterfaceId;
    my $Location               = $VirtualInterface->Location;
    my $RouteFilterPrefixes    = $VirtualInterface->RouteFilterPrefixes;
    my $Vlan                   = $VirtualInterface->Vlan;
    my $ConnectionId           = $VirtualInterface->ConnectionId;
    my $CustomerRouterConfig   = $VirtualInterface->CustomerRouterConfig;
    my $CustomerAddress        = $VirtualInterface->CustomerAddress;
    my $AmazonSideAsn          = $VirtualInterface->AmazonSideAsn;
    my $AmazonAddress          = $VirtualInterface->AmazonAddress;
    my $VirtualInterfaceState  = $VirtualInterface->VirtualInterfaceState;
    my $OwnerAccount           = $VirtualInterface->OwnerAccount;

    # Returns a L<Paws::DirectConnect::VirtualInterface> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreatePublicVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str





=head2 B<REQUIRED> NewPublicVirtualInterface => L<Paws::DirectConnect::NewPublicVirtualInterface>

Detailed information for the public virtual interface to be created.

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePublicVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

