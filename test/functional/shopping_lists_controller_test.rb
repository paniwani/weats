require 'test_helper'

class ShoppingListsControllerTest < ActionController::TestCase
  setup do
    @shopping_list = shopping_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_list" do
    assert_difference('ShoppingList.count') do
      post :create, shopping_list: @shopping_list.attributes
    end

    assert_redirected_to shopping_list_path(assigns(:shopping_list))
  end

  test "should show shopping_list" do
    get :show, id: @shopping_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_list.to_param
    assert_response :success
  end

  test "should update shopping_list" do
    put :update, id: @shopping_list.to_param, shopping_list: @shopping_list.attributes
    assert_redirected_to shopping_list_path(assigns(:shopping_list))
  end

  test "should destroy shopping_list" do
    assert_difference('ShoppingList.count', -1) do
      delete :destroy, id: @shopping_list.to_param
    end

    assert_redirected_to shopping_lists_path
  end
end
