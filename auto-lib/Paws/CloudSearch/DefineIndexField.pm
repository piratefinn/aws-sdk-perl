
package Paws::CloudSearch::DefineIndexField;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'Paws::CloudSearch::IndexField', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DefineIndexFieldResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineIndexField - Arguments for method DefineIndexField on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DefineIndexField on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DefineIndexField.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DefineIndexField.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DefineIndexFieldResponse = $cloudsearch->DefineIndexField(
      DomainName => 'MyDomainName',
      IndexField => {
        IndexFieldType => 'int'
        , # values: int, double, literal, text, date, latlon, int-array, double-array, literal-array, text-array, date-array
        IndexFieldName     => 'MyDynamicFieldName',    # min: 1, max: 64
        DoubleArrayOptions => {
          DefaultValue  => 1,                          # OPTIONAL
          SearchEnabled => 1,                          # OPTIONAL
          SourceFields  => 'MyFieldNameCommaList',     # OPTIONAL
          FacetEnabled  => 1,                          # OPTIONAL
          ReturnEnabled => 1,                          # OPTIONAL
        },    # OPTIONAL
        LiteralArrayOptions => {
          SourceFields  => 'MyFieldNameCommaList',    # OPTIONAL
          DefaultValue  => 'MyFieldValue',            # max: 1024; OPTIONAL
          SearchEnabled => 1,                         # OPTIONAL
          ReturnEnabled => 1,                         # OPTIONAL
          FacetEnabled  => 1,                         # OPTIONAL
        },    # OPTIONAL
        TextArrayOptions => {
          ReturnEnabled    => 1,                         # OPTIONAL
          AnalysisScheme   => 'MyWord',                  # OPTIONAL
          HighlightEnabled => 1,                         # OPTIONAL
          DefaultValue     => 'MyFieldValue',            # max: 1024; OPTIONAL
          SourceFields     => 'MyFieldNameCommaList',    # OPTIONAL
        },    # OPTIONAL
        DateOptions => {
          SearchEnabled => 1,                 # OPTIONAL
          SourceField   => 'MyFieldName',     # min: 1, max: 64; OPTIONAL
          DefaultValue  => 'MyFieldValue',    # max: 1024; OPTIONAL
          SortEnabled   => 1,                 # OPTIONAL
          ReturnEnabled => 1,                 # OPTIONAL
          FacetEnabled  => 1,                 # OPTIONAL
        },    # OPTIONAL
        IntOptions => {
          DefaultValue  => 1,                # OPTIONAL
          SourceField   => 'MyFieldName',    # min: 1, max: 64; OPTIONAL
          SearchEnabled => 1,                # OPTIONAL
          SortEnabled   => 1,                # OPTIONAL
          FacetEnabled  => 1,                # OPTIONAL
          ReturnEnabled => 1,                # OPTIONAL
        },    # OPTIONAL
        LiteralOptions => {
          DefaultValue  => 'MyFieldValue',    # max: 1024; OPTIONAL
          SourceField   => 'MyFieldName',     # min: 1, max: 64; OPTIONAL
          SearchEnabled => 1,                 # OPTIONAL
          FacetEnabled  => 1,                 # OPTIONAL
          ReturnEnabled => 1,                 # OPTIONAL
          SortEnabled   => 1,                 # OPTIONAL
        },    # OPTIONAL
        IntArrayOptions => {
          SearchEnabled => 1,                         # OPTIONAL
          DefaultValue  => 1,                         # OPTIONAL
          SourceFields  => 'MyFieldNameCommaList',    # OPTIONAL
          FacetEnabled  => 1,                         # OPTIONAL
          ReturnEnabled => 1,                         # OPTIONAL
        },    # OPTIONAL
        TextOptions => {
          ReturnEnabled    => 1,                 # OPTIONAL
          AnalysisScheme   => 'MyWord',          # OPTIONAL
          SortEnabled      => 1,                 # OPTIONAL
          HighlightEnabled => 1,                 # OPTIONAL
          DefaultValue     => 'MyFieldValue',    # max: 1024; OPTIONAL
          SourceField      => 'MyFieldName',     # min: 1, max: 64; OPTIONAL
        },    # OPTIONAL
        DateArrayOptions => {
          DefaultValue  => 'MyFieldValue',            # max: 1024; OPTIONAL
          SearchEnabled => 1,                         # OPTIONAL
          SourceFields  => 'MyFieldNameCommaList',    # OPTIONAL
          FacetEnabled  => 1,                         # OPTIONAL
          ReturnEnabled => 1,                         # OPTIONAL
        },    # OPTIONAL
        LatLonOptions => {
          FacetEnabled  => 1,                 # OPTIONAL
          ReturnEnabled => 1,                 # OPTIONAL
          SortEnabled   => 1,                 # OPTIONAL
          DefaultValue  => 'MyFieldValue',    # max: 1024; OPTIONAL
          SourceField   => 'MyFieldName',     # min: 1, max: 64; OPTIONAL
          SearchEnabled => 1,                 # OPTIONAL
        },    # OPTIONAL
        DoubleOptions => {
          SourceField   => 'MyFieldName',    # min: 1, max: 64; OPTIONAL
          DefaultValue  => 1,                # OPTIONAL
          SearchEnabled => 1,                # OPTIONAL
          ReturnEnabled => 1,                # OPTIONAL
          FacetEnabled  => 1,                # OPTIONAL
          SortEnabled   => 1,                # OPTIONAL
        },    # OPTIONAL
      },

    );

    # Results:
    my $IndexField = $DefineIndexFieldResponse->IndexField;

    # Returns a L<Paws::CloudSearch::DefineIndexFieldResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str





=head2 B<REQUIRED> IndexField => L<Paws::CloudSearch::IndexField>

The index field and field options you want to configure.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DefineIndexField in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

