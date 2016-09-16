class CreateMemories < ActiveRecord::Migration[5.0]
  def change
    create_table :memories do |t|
      t.string :type
      t.string :brend
      t.integer :size
      t.text :description

      t.timestamps
    end
  end
end
