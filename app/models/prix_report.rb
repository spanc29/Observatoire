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
  filter(:departement, :enum, :select => Prix.depart_saisie.map { |d| [d.departement]}.uniq, :header => "département")
  filter(:type_filiere, :enum, :select => Liste.filiere.map { |f| [f.content]}, :header => "type de filière")
  filter(:dispersion, :enum, :select => Liste.rejet.map { |f| [f.content]}, :header => "dispersion")
  filter(:difficulte, :enum, :select => ['Facile','Moyen','Difficile','Très difficile'], :header => "Difficulté")
  filter(:neuf)
  integer_range_filters(:dimension)
  date_range_filters(:date)
  #
  # Columns
  #
  column(:departement)
  column(:type_filiere, :url => proc {|prix| Rails.application.routes.url_helpers.prix_path(prix) })
  column(:dispersion)
  column(:montant)
  column(:dimension)
  column(:neuf)
  column(:difficulte)
end
