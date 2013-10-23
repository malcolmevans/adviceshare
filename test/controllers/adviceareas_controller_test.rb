require 'test_helper'

class AdviceareasControllerTest < ActionController::TestCase
  setup do
    @advicearea = adviceareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adviceareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advicearea" do
    assert_difference('Advicearea.count') do
      post :create, advicearea: { description: @advicearea.description, name: @advicearea.name }
    end

    assert_redirected_to advicearea_path(assigns(:advicearea))
  end

  test "should show advicearea" do
    get :show, id: @advicearea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advicearea
    assert_response :success
  end

  test "should update advicearea" do
    patch :update, id: @advicearea, advicearea: { description: @advicearea.description, name: @advicearea.name }
    assert_redirected_to advicearea_path(assigns(:advicearea))
  end

  test "should destroy advicearea" do
    assert_difference('Advicearea.count', -1) do
      delete :destroy, id: @advicearea
    end

    assert_redirected_to adviceareas_path
  end
end
