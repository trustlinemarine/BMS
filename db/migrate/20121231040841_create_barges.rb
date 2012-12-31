class CreateBarges < ActiveRecord::Migration
  def change
    create_table :barges do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
