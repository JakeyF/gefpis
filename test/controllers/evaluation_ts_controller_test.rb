require 'test_helper'

class EvaluationTsControllerTest < ActionController::TestCase
  setup do
    @evaluation_t = evaluation_ts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_ts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_t" do
    assert_difference('EvaluationT.count') do
      post :create, evaluation_t: { eng_comments: @evaluation_t.eng_comments, eng_sw_comments: @evaluation_t.eng_sw_comments, eval_name: @evaluation_t.eval_name, math_module_comments: @evaluation_t.math_module_comments, math_sw_comments: @evaluation_t.math_sw_comments, member_t_id: @evaluation_t.member_t_id, suggestions: @evaluation_t.suggestions, tutoring_comments: @evaluation_t.tutoring_comments }
    end

    assert_redirected_to evaluation_t_path(assigns(:evaluation_t))
  end

  test "should show evaluation_t" do
    get :show, id: @evaluation_t
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_t
    assert_response :success
  end

  test "should update evaluation_t" do
    patch :update, id: @evaluation_t, evaluation_t: { eng_comments: @evaluation_t.eng_comments, eng_sw_comments: @evaluation_t.eng_sw_comments, eval_name: @evaluation_t.eval_name, math_module_comments: @evaluation_t.math_module_comments, math_sw_comments: @evaluation_t.math_sw_comments, member_t_id: @evaluation_t.member_t_id, suggestions: @evaluation_t.suggestions, tutoring_comments: @evaluation_t.tutoring_comments }
    assert_redirected_to evaluation_t_path(assigns(:evaluation_t))
  end

  test "should destroy evaluation_t" do
    assert_difference('EvaluationT.count', -1) do
      delete :destroy, id: @evaluation_t
    end

    assert_redirected_to evaluation_ts_path
  end
end
