class RemoveTypeFactureFromPrixes < ActiveRecord::Migration
  def up
  remove_column :prixes, :type_facture
  remove_column :prixes, :tva
  remove_column :prixes, :liste_id
  add_column :prixes, :dispersion, :string
  end

  def down
  end
end
