require 'test_helper'

class A9sControllerTest < ActionController::TestCase
  setup do
    @a9 = a9s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a9s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a9" do
    assert_difference('A9.count') do
      post :create, a9: { ball_qty: @a9.ball_qty, case_steam_jkt: @a9.case_steam_jkt, description: @a9.description, exp_groove: @a9.exp_groove, exp_size: @a9.exp_size, fastener_matl: @a9.fastener_matl, frame_option: @a9.frame_option, frame_size: @a9.frame_size, isolator_option: @a9.isolator_option, item_number: @a9.item_number, lip_seal_hi_press: @a9.lip_seal_hi_press, lip_seal_matl: @a9.lip_seal_matl, matl_of_const: @a9.matl_of_const, oring_matl: @a9.oring_matl, part_number: @a9.part_number, pump_size: @a9.pump_size, quantity: @a9.quantity, seal_hsg_stm_jkt: @a9.seal_hsg_stm_jkt, seal_size: @a9.seal_size, seal_type: @a9.seal_type, shaft_duty: @a9.shaft_duty, shaft_matl: @a9.shaft_matl, stat_seal_matl: @a9.stat_seal_matl, twell_bearing_hsg: @a9.twell_bearing_hsg }
    end

    assert_redirected_to a9_path(assigns(:a9))
  end

  test "should show a9" do
    get :show, id: @a9
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a9
    assert_response :success
  end

  test "should update a9" do
    patch :update, id: @a9, a9: { ball_qty: @a9.ball_qty, case_steam_jkt: @a9.case_steam_jkt, description: @a9.description, exp_groove: @a9.exp_groove, exp_size: @a9.exp_size, fastener_matl: @a9.fastener_matl, frame_option: @a9.frame_option, frame_size: @a9.frame_size, isolator_option: @a9.isolator_option, item_number: @a9.item_number, lip_seal_hi_press: @a9.lip_seal_hi_press, lip_seal_matl: @a9.lip_seal_matl, matl_of_const: @a9.matl_of_const, oring_matl: @a9.oring_matl, part_number: @a9.part_number, pump_size: @a9.pump_size, quantity: @a9.quantity, seal_hsg_stm_jkt: @a9.seal_hsg_stm_jkt, seal_size: @a9.seal_size, seal_type: @a9.seal_type, shaft_duty: @a9.shaft_duty, shaft_matl: @a9.shaft_matl, stat_seal_matl: @a9.stat_seal_matl, twell_bearing_hsg: @a9.twell_bearing_hsg }
    assert_redirected_to a9_path(assigns(:a9))
  end

  test "should destroy a9" do
    assert_difference('A9.count', -1) do
      delete :destroy, id: @a9
    end

    assert_redirected_to a9s_path
  end
end
