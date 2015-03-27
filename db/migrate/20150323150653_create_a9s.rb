class CreateA9s < ActiveRecord::Migration
  def change
    create_table :a9s do |t|
      t.string :part_number
      t.string :item_number
      t.integer :quantity
      t.string :description
      t.string :frame_size
      t.string :seal_size
      t.string :seal_type
      t.string :frame_option
      t.string :pump_size
      t.string :case_steam_jkt
      t.string :twell_bearing_hsg
      t.string :fastener_matl
      t.string :shaft_duty
      t.string :shaft_matl
      t.string :isolator_option
      t.string :ball_qty
      t.string :matl_of_const
      t.string :oring_matl
      t.string :stat_seal_matl
      t.string :lip_seal_matl
      t.string :exp_groove
      t.string :exp_size
      t.string :lip_seal_hi_press
      t.string :seal_hsg_stm_jkt

      t.timestamps
    end
  end
end
