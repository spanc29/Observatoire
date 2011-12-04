class RemoveTempsExecutionFromPrixes < ActiveRecord::Migration
  def up
  remove_column :prixes, :temps_execution
  change_table :prixes do |t|
  t.change :difficulte, :string
  end
  end

  def down
  end
end
