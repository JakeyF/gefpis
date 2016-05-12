require 'test_helper'

class TprTsControllerTest < ActionController::TestCase
  setup do
    @tpr_t = tpr_ts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tpr_ts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tpr_t" do
    assert_difference('TprT.count') do
      post :create, tpr_t: { actions: @tpr_t.actions, member_t_id: @tpr_t.member_t_id, module_t_id: @tpr_t.module_t_id, school: @tpr_t.school, strengths: @tpr_t.strengths, tutee_t_id: @tpr_t.tutee_t_id, weaknesses: @tpr_t.weaknesses, week_no: @tpr_t.week_no }
    end

    assert_redirected_to tpr_t_path(assigns(:tpr_t))
  end

  test "should show tpr_t" do
    get :show, id: @tpr_t
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tpr_t
    assert_response :success
  end

  test "should update tpr_t" do
    patch :update, id: @tpr_t, tpr_t: { actions: @tpr_t.actions, member_t_id: @tpr_t.member_t_id, module_t_id: @tpr_t.module_t_id, school: @tpr_t.school, strengths: @tpr_t.strengths, tutee_t_id: @tpr_t.tutee_t_id, weaknesses: @tpr_t.weaknesses, week_no: @tpr_t.week_no }
    assert_redirected_to tpr_t_path(assigns(:tpr_t))
  end

  test "should destroy tpr_t" do
    assert_difference('TprT.count', -1) do
      delete :destroy, id: @tpr_t
    end

    assert_redirected_to tpr_ts_path
  end
end
