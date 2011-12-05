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
  filter(:difficulte, :enum, :select => Prix.diffic.map { |s| [s.difficulte]})
  integer_range_filters(:dimension)
  #
  # Columns
  #
  column(:departement)
  column(:type_filiere)
  column(:montant)
  column(:dimension)
  column(:neuf)
  column(:difficulte)

end
