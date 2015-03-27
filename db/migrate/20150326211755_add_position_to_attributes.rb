class AddPositionToAttributes < ActiveRecord::Migration
  def change
    add_column :attributes, :position, :string
  end
end
