class CreateListes < ActiveRecord::Migration
  def change
    create_table :listes do |t|
      t.string :quoi
      t.string :content

      t.timestamps
    end
  end
end
