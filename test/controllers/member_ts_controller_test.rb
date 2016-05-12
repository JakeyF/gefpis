require 'test_helper'

class MemberTsControllerTest < ActionController::TestCase
  setup do
    @member_t = member_ts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_ts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_t" do
    assert_difference('MemberT.count') do
      post :create, member_t: { attendance: @member_t.attendance, birthday: @member_t.birthday, committee: @member_t.committee, contact_no: @member_t.contact_no, email_address: @member_t.email_address, first_name: @member_t.first_name, id_number: @member_t.id_number, last_name: @member_t.last_name, middle_initial: @member_t.middle_initial, password: @member_t.password, scholarship: @member_t.scholarship, type: @member_t.type, year_course: @member_t.year_course }
    end

    assert_redirected_to member_t_path(assigns(:member_t))
  end

  test "should show member_t" do
    get :show, id: @member_t
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_t
    assert_response :success
  end

  test "should update member_t" do
    patch :update, id: @member_t, member_t: { attendance: @member_t.attendance, birthday: @member_t.birthday, committee: @member_t.committee, contact_no: @member_t.contact_no, email_address: @member_t.email_address, first_name: @member_t.first_name, id_number: @member_t.id_number, last_name: @member_t.last_name, middle_initial: @member_t.middle_initial, password: @member_t.password, scholarship: @member_t.scholarship, type: @member_t.type, year_course: @member_t.year_course }
    assert_redirected_to member_t_path(assigns(:member_t))
  end

  test "should destroy member_t" do
    assert_difference('MemberT.count', -1) do
      delete :destroy, id: @member_t
    end

    assert_redirected_to member_ts_path
  end
end
