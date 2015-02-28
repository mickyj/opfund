require 'test_helper'

class FellowshipsControllerTest < ActionController::TestCase
  setup do
    @fellowship = fellowships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fellowships)
  end

  test "should create fellowship" do
    assert_difference('Fellowship.count') do
      post :create, fellowship: { fellow_id: @fellowship.fellow_id, title: @fellowship.title }
    end

    assert_response 201
  end

  test "should show fellowship" do
    get :show, id: @fellowship
    assert_response :success
  end

  test "should update fellowship" do
    put :update, id: @fellowship, fellowship: { fellow_id: @fellowship.fellow_id, title: @fellowship.title }
    assert_response 204
  end

  test "should destroy fellowship" do
    assert_difference('Fellowship.count', -1) do
      delete :destroy, id: @fellowship
    end

    assert_response 204
  end
end
