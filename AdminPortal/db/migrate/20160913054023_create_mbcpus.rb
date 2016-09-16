class CreateMbcpus < ActiveRecord::Migration[5.0]
  def change
    create_table :mbcpus do |t|
      t.string :type
      t.string :brend
      t.string :model
      t.text :description

      t.timestamps
    end
  end
end
