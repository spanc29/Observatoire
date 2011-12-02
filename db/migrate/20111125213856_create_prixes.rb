class CreatePrixes < ActiveRecord::Migration
  def change
    create_table :prixes do |t|
      t.date :date
      t.float :montant
      t.integer :type_filiere
      t.text :commentaire
      t.boolean :tva
      t.boolean :neuf
      t.integer :difficulte
      t.integer :departement
      t.string :type_facture
      t.integer :temps_execution

      t.timestamps
    end
  end
end
