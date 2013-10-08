require 'test_helper'

class LastcallsControllerTest < ActionController::TestCase
  setup do
    @lastcall = lastcalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lastcalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lastcall" do
    assert_difference('Lastcall.count') do
      post :create, lastcall: { extention: @lastcall.extention, tnumber: @lastcall.tnumber }
    end

    assert_redirected_to lastcall_path(assigns(:lastcall))
  end

  test "should show lastcall" do
    get :show, id: @lastcall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lastcall
    assert_response :success
  end

  test "should update lastcall" do
    patch :update, id: @lastcall, lastcall: { extention: @lastcall.extention, tnumber: @lastcall.tnumber }
    assert_redirected_to lastcall_path(assigns(:lastcall))
  end

  test "should destroy lastcall" do
    assert_difference('Lastcall.count', -1) do
      delete :destroy, id: @lastcall
    end

    assert_redirected_to lastcalls_path
  end
end
