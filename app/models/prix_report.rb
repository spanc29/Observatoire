class PrixReport
  include Datagrid
  #
  # Scope
  #
  scope do
    Prix
  end
  #
  # Filters
  #
  filter(:departement, :enum, :select => Liste.depart.map { |d| [d.content]})
  filter(:type_filiere, :enum, :select => Liste.filiere.map { |f| [f.content]})
  integer_range_filters(:dimension)
  #
  # Columns
  #
  column(:id)
  column(:departement)
  column(:type_filiere)
  column(:dimension)

end
