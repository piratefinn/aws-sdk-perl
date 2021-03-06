
package Paws::Budgets::CreateSubscriber;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has Notification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);
  has Subscriber => (is => 'ro', isa => 'Paws::Budgets::Subscriber', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscriber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::CreateSubscriberResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CreateSubscriber - Arguments for method CreateSubscriber on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriber on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method CreateSubscriber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriber.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $CreateSubscriberResponse = $budgets->CreateSubscriber(
      AccountId    => 'MyAccountId',
      BudgetName   => 'MyBudgetName',
      Notification => {
        NotificationType => 'ACTUAL',    # values: ACTUAL, FORECASTED
        ComparisonOperator =>
          'GREATER_THAN',    # values: GREATER_THAN, LESS_THAN, EQUAL_TO
        Threshold => 1,      # min: 0.1, max: 1000000000
        ThresholdType =>
          'PERCENTAGE',      # values: PERCENTAGE, ABSOLUTE_VALUE; OPTIONAL
      },
      Subscriber => {
        SubscriptionType => 'SNS',                    # values: SNS, EMAIL
        Address          => 'MySubscriberAddress',    # min: 1,

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/CreateSubscriber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> associated with the budget that you want to create a
subscriber for.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget that you want to subscribe to. Budget names must
be unique within an account.



=head2 B<REQUIRED> Notification => L<Paws::Budgets::Notification>

The notification that you want to create a subscriber for.



=head2 B<REQUIRED> Subscriber => L<Paws::Budgets::Subscriber>

The subscriber that you want to associate with a budget notification.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriber in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

