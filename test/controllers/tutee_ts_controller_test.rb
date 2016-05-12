require 'test_helper'

class TuteeTsControllerTest < ActionController::TestCase
  setup do
    @tutee_t = tutee_ts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutee_ts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutee_t" do
    assert_difference('TuteeT.count') do
      post :create, tutee_t: { ambition: @tutee_t.ambition, attendance: @tutee_t.attendance, eng_grade: @tutee_t.eng_grade, father_name: @tutee_t.father_name, father_occupation: @tutee_t.father_occupation, fav_color: @tutee_t.fav_color, fav_food: @tutee_t.fav_food, fav_movie: @tutee_t.fav_movie, fav_subject: @tutee_t.fav_subject, first_name: @tutee_t.first_name, group_no: @tutee_t.group_no, last_name: @tutee_t.last_name, math_grade: @tutee_t.math_grade, module_t_id: @tutee_t.module_t_id, mother_name: @tutee_t.mother_name, mother_occupation: @tutee_t.mother_occupation, school: @tutee_t.school }
    end

    assert_redirected_to tutee_t_path(assigns(:tutee_t))
  end

  test "should show tutee_t" do
    get :show, id: @tutee_t
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutee_t
    assert_response :success
  end

  test "should update tutee_t" do
    patch :update, id: @tutee_t, tutee_t: { ambition: @tutee_t.ambition, attendance: @tutee_t.attendance, eng_grade: @tutee_t.eng_grade, father_name: @tutee_t.father_name, father_occupation: @tutee_t.father_occupation, fav_color: @tutee_t.fav_color, fav_food: @tutee_t.fav_food, fav_movie: @tutee_t.fav_movie, fav_subject: @tutee_t.fav_subject, first_name: @tutee_t.first_name, group_no: @tutee_t.group_no, last_name: @tutee_t.last_name, math_grade: @tutee_t.math_grade, module_t_id: @tutee_t.module_t_id, mother_name: @tutee_t.mother_name, mother_occupation: @tutee_t.mother_occupation, school: @tutee_t.school }
    assert_redirected_to tutee_t_path(assigns(:tutee_t))
  end

  test "should destroy tutee_t" do
    assert_difference('TuteeT.count', -1) do
      delete :destroy, id: @tutee_t
    end

    assert_redirected_to tutee_ts_path
  end
end
