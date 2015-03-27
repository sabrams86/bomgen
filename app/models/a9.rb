class A9 < ActiveRecord::Base
  
    attrs = {"frame_size" => "1", "seal_size" => "8", "seal_type" => "DL2", "frame_option" => "2PC DI, DI", "pump_size" => "4 X 3 - 8", "case_steam_jkt" => "N",
      "twell_bearing_hsg" => "N", "fastener_matl" => "300", "shaft_duty" => "HD", "shaft_matl" => "WMS", "isolator_option" => "303S", "ball_qty" => "6",
      "matl_of_const" => "A20", "oring_matl" => "VTON", "stat_seal_matl" => "PEEK", "lip_seal_matl" => "T40/316S", "exp_groove" => "Y", "exp_size" => "8", 
      "lip_seal_hi_press" => "N", "seal_hsg_stm_jkt" => "N"}
      @a9s = A9.where(attrs)
    sql_query = attrs.map { |col, val| "(a9s.#{sanitize(col)} = #{sanitize(val)} OR pars.#{sanitize(col)} IS NULL)" }.join(" AND ")
   # @a9s = A9.where(sql_query)
  
  def hash_build(string)
    @icode=string.split(//)
    puts @icode
  end
end
