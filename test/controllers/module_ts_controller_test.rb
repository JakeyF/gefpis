require 'test_helper'

class ModuleTsControllerTest < ActionController::TestCase
  setup do
    @module_t = module_ts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:module_ts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create module_t" do
    assert_difference('ModuleT.count') do
      post :create, module_t: { file_name: @module_t.file_name, subject: @module_t.subject, topic: @module_t.topic, upload_date: @module_t.upload_date, uploader: @module_t.uploader }
    end

    assert_redirected_to module_t_path(assigns(:module_t))
  end

  test "should show module_t" do
    get :show, id: @module_t
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @module_t
    assert_response :success
  end

  test "should update module_t" do
    patch :update, id: @module_t, module_t: { file_name: @module_t.file_name, subject: @module_t.subject, topic: @module_t.topic, upload_date: @module_t.upload_date, uploader: @module_t.uploader }
    assert_redirected_to module_t_path(assigns(:module_t))
  end

  test "should destroy module_t" do
    assert_difference('ModuleT.count', -1) do
      delete :destroy, id: @module_t
    end

    assert_redirected_to module_ts_path
  end
end
