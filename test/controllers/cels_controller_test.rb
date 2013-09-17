require 'test_helper'

class CelsControllerTest < ActionController::TestCase
  setup do
    @cel = cels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cel" do
    assert_difference('Cel.count') do
      post :create, cel: { accountcode: @cel.accountcode, amaflags: @cel.amaflags, appdata: @cel.appdata, appname: @cel.appname, channame: @cel.channame, cid_ani: @cel.cid_ani, cid_dnid: @cel.cid_dnid, cid_name: @cel.cid_name, cid_num: @cel.cid_num, cid_rdnis: @cel.cid_rdnis, context: @cel.context, eventtime: @cel.eventtime, eventtype: @cel.eventtype, exten: @cel.exten, linkedid: @cel.linkedid, peer: @cel.peer, peeraccount: @cel.peeraccount, uniqueid: @cel.uniqueid, userdeftype: @cel.userdeftype, userfield: @cel.userfield }
    end

    assert_redirected_to cel_path(assigns(:cel))
  end

  test "should show cel" do
    get :show, id: @cel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cel
    assert_response :success
  end

  test "should update cel" do
    patch :update, id: @cel, cel: { accountcode: @cel.accountcode, amaflags: @cel.amaflags, appdata: @cel.appdata, appname: @cel.appname, channame: @cel.channame, cid_ani: @cel.cid_ani, cid_dnid: @cel.cid_dnid, cid_name: @cel.cid_name, cid_num: @cel.cid_num, cid_rdnis: @cel.cid_rdnis, context: @cel.context, eventtime: @cel.eventtime, eventtype: @cel.eventtype, exten: @cel.exten, linkedid: @cel.linkedid, peer: @cel.peer, peeraccount: @cel.peeraccount, uniqueid: @cel.uniqueid, userdeftype: @cel.userdeftype, userfield: @cel.userfield }
    assert_redirected_to cel_path(assigns(:cel))
  end

  test "should destroy cel" do
    assert_difference('Cel.count', -1) do
      delete :destroy, id: @cel
    end

    assert_redirected_to cels_path
  end
end
