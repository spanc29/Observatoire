class ChangeDepartement < ActiveRecord::Migration
  def up
  remove_column :listes, :departement
  change_table :prixes do |t|
  t.change :departement, :string
  t.change :tva, :string
  t.change :neuf, :string
  t.change :type_filiere, :string
end
  end

  def down
  end
end
