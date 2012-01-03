require 'test_helper'

class ShoppingListIngredientsControllerTest < ActionController::TestCase
  setup do
    @shopping_list_ingredient = shopping_list_ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_list_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_list_ingredient" do
    assert_difference('ShoppingListIngredient.count') do
      post :create, shopping_list_ingredient: @shopping_list_ingredient.attributes
    end

    assert_redirected_to shopping_list_ingredient_path(assigns(:shopping_list_ingredient))
  end

  test "should show shopping_list_ingredient" do
    get :show, id: @shopping_list_ingredient.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_list_ingredient.to_param
    assert_response :success
  end

  test "should update shopping_list_ingredient" do
    put :update, id: @shopping_list_ingredient.to_param, shopping_list_ingredient: @shopping_list_ingredient.attributes
    assert_redirected_to shopping_list_ingredient_path(assigns(:shopping_list_ingredient))
  end

  test "should destroy shopping_list_ingredient" do
    assert_difference('ShoppingListIngredient.count', -1) do
      delete :destroy, id: @shopping_list_ingredient.to_param
    end

    assert_redirected_to shopping_list_ingredients_path
  end
end
