class A9sController < ApplicationController
  before_action :set_a9, only: [ :show, :edit, :update, :destroy]

  def process_a9
    params[:a9s][:code] = params[:a9s][:code].split(//)
    @attr_codes = params[:a9s][:code].each_index.with_object({}) { |i,h| h[(i+1).to_s] = a[i] }
    attr = {}
    attr = intellicode.each do |name, value|
      @attr[name] = definition
    end
    
    attrs = {"frame_size" => "1", "seal_size" => "8", "seal_type" => "DL2", "frame_option" => "2PC DI, DI", "pump_size" => "4 X 3 - 8", "case_steam_jkt" => "N",
      "twell_bearing_hsg" => "N", "fastener_matl" => "300", "shaft_duty" => "HD", "shaft_matl" => "WMS", "isolator_option" => "303S", "ball_qty" => "6",
      "matl_of_const" => "A20", "oring_matl" => "VTON", "stat_seal_matl" => "PEEK", "lip_seal_matl" => "T40/316S", "exp_groove" => "Y", "exp_size" => "8", 
      "lip_seal_hi_press" => "N", "seal_hsg_stm_jkt" => "N"}
    sql_query = attrs.map { |col, val| "(a9s.#{sanitize(col)} = #{sanitize(val)} OR pars.#{sanitize(col)} IS NULL)" }.join(" AND ")
    @a9s = A9.where(sql_query)
a11
  end

  # GET /a9s
  # GET /a9s.json
  def index
    split = params[:a9s][:code].split(//)
    @attr_codes = split.each_index.with_object({}) { |i,h| h[(i+1).to_s] = split[i] }
    @asdf = Attribute.where("(position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?) OR
            (position = ? AND icode = ?)", *@attr_codes.flatten
          )
     .select("name, value")
     .map { |rec| [rec.name, rec.value] }.to_a
     attrs = Hash[@asdf]

    sql_query = attrs.map { |col, val| "(a9s.#{ActiveRecord::Base.sanitize(col)} = #{ActiveRecord::Base.sanitize(val)} OR a9s.#{ActiveRecord::Base.sanitize(col)} = '' OR a9s.#{ActiveRecord::Base.sanitize(col)} IS NULL)" }.join(" AND ")

    @a9s = A9.where(sql_query)
  end

  # GET /a9s/1
  # GET /a9s/1.json
  def show
  end

  # GET /a9s/new
  def new
    @a9 = A9.new
  end

  # GET /a9s/1/edit
  def edit
  end

  # POST /a9s
  # POST /a9s.json
  def create
    @a9 = A9.new(a9_params)

    respond_to do |format|
      if @a9.save
        format.html { redirect_to @a9, notice: 'A9 was successfully created.' }
        format.json { render :show, status: :created, location: @a9 }
      else
        format.html { render :new }
        format.json { render json: @a9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a9s/1
  # PATCH/PUT /a9s/1.json
  def update
    respond_to do |format|
      if @a9.update(a9_params)
        format.html { redirect_to @a9, notice: 'A9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @a9 }
      else
        format.html { render :edit }
        format.json { render json: @a9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a9s/1
  # DELETE /a9s/1.json
  def destroy
    @a9.destroy
    respond_to do |format|
      format.html { redirect_to a9s_url, notice: 'A9 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a9
      @a9 = A9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a9_params
      params.require(:a9).permit(:part_number, :item_number, :quantity, :description, :frame_size, :seal_size, :seal_type, :frame_option, :pump_size, :case_steam_jkt, :twell_bearing_hsg, :fastener_matl, :shaft_duty, :shaft_matl, :isolator_option, :ball_qty, :matl_of_const, :oring_matl, :stat_seal_matl, :lip_seal_matl, :exp_groove, :exp_size, :lip_seal_hi_press, :seal_hsg_stm_jkt)
    end
end
