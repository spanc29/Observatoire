class AddDimensionToPrixes < ActiveRecord::Migration
  def change
    add_column :prixes, :dimension, :integer
  end
end
