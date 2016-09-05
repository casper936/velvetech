class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :invno
      t.string :brend
      t.string :model
      t.text :description
      t.string :motherboard
      t.integer :memory
      t.string :mem_type
      t.string :mem_desc
      t.integer :ssd
      t.integer :hdd
      t.string :cpu
      t.string :type_equip

      t.timestamps
    end
  end
end
