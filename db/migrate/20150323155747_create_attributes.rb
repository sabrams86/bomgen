class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :model
      t.string :name
      t.string :value
      t.string :icode

      t.timestamps
    end
  end
end
