require 'test_helper'

class WorksheetTsControllerTest < ActionController::TestCase
  setup do
    @worksheet_t = worksheet_ts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worksheet_ts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worksheet_t" do
    assert_difference('WorksheetT.count') do
      post :create, worksheet_t: { member_t_id: @worksheet_t.member_t_id, module_t_id: @worksheet_t.module_t_id, reached_quota: @worksheet_t.reached_quota, school: @worksheet_t.school, score: @worksheet_t.score, tutee_t_id: @worksheet_t.tutee_t_id }
    end

    assert_redirected_to worksheet_t_path(assigns(:worksheet_t))
  end

  test "should show worksheet_t" do
    get :show, id: @worksheet_t
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worksheet_t
    assert_response :success
  end

  test "should update worksheet_t" do
    patch :update, id: @worksheet_t, worksheet_t: { member_t_id: @worksheet_t.member_t_id, module_t_id: @worksheet_t.module_t_id, reached_quota: @worksheet_t.reached_quota, school: @worksheet_t.school, score: @worksheet_t.score, tutee_t_id: @worksheet_t.tutee_t_id }
    assert_redirected_to worksheet_t_path(assigns(:worksheet_t))
  end

  test "should destroy worksheet_t" do
    assert_difference('WorksheetT.count', -1) do
      delete :destroy, id: @worksheet_t
    end

    assert_redirected_to worksheet_ts_path
  end
end
