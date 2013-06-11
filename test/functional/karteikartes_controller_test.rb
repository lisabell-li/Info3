require 'test_helper'

class KarteikartesControllerTest < ActionController::TestCase
  setup do
    @karteikarte = karteikartes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karteikartes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karteikarte" do
    assert_difference('Karteikarte.count') do
      post :create, karteikarte: { current_fach: @karteikarte.current_fach, erraten: @karteikarte.erraten, nachname: @karteikarte.nachname, prev_fach: @karteikarte.prev_fach, vorname: @karteikarte.vorname }
    end

    assert_redirected_to karteikarte_path(assigns(:karteikarte))
  end

  test "should show karteikarte" do
    get :show, id: @karteikarte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karteikarte
    assert_response :success
  end

  test "should update karteikarte" do
    put :update, id: @karteikarte, karteikarte: { current_fach: @karteikarte.current_fach, erraten: @karteikarte.erraten, nachname: @karteikarte.nachname, prev_fach: @karteikarte.prev_fach, vorname: @karteikarte.vorname }
    assert_redirected_to karteikarte_path(assigns(:karteikarte))
  end

  test "should destroy karteikarte" do
    assert_difference('Karteikarte.count', -1) do
      delete :destroy, id: @karteikarte
    end

    assert_redirected_to karteikartes_path
  end
end
