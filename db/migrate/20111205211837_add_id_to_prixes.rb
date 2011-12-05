class AddIdToPrixes < ActiveRecord::Migration
  def change
    add_column :prixes, :liste_id, :integer
  end
end
