json.array!(@a9s) do |a9|
  json.extract! a9, :id, :part_number, :item_number, :quantity, :description, :frame_size, :seal_size, :seal_type, :frame_option, :pump_size, :case_steam_jkt, :twell_bearing_hsg, :fastener_matl, :shaft_duty, :shaft_matl, :isolator_option, :ball_qty, :matl_of_const, :oring_matl, :stat_seal_matl, :lip_seal_matl, :exp_groove, :exp_size, :lip_seal_hi_press, :seal_hsg_stm_jkt
  json.url a9_url(a9, format: :json)
end
