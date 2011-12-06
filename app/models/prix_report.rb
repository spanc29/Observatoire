# encoding: UTF-8

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
  filter(:departement, :enum, :select => Liste.depart.map { |d| [d.content]}, :header => "département")
  filter(:type_filiere, :enum, :select => Liste.filiere.map { |f| [f.content]}, :header => "type de filière")
  filter(:difficulte, :enum, :select => Prix.diffic.map { |s| [s.difficulte]}, :header => "Difficulté")
  #
  # Columns
  #
  column(:departement)
  column(:type_filiere)
  column(:montant)
  column(:dimension)
  column(:neuf)
  column(:difficulte)
  column(:id, :header => "")

end
