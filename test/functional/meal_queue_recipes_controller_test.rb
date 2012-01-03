require 'test_helper'

class MealQueueRecipesControllerTest < ActionController::TestCase
  setup do
    @meal_queue_recipe = meal_queue_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_queue_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_queue_recipe" do
    assert_difference('MealQueueRecipe.count') do
      post :create, meal_queue_recipe: @meal_queue_recipe.attributes
    end

    assert_redirected_to meal_queue_recipe_path(assigns(:meal_queue_recipe))
  end

  test "should show meal_queue_recipe" do
    get :show, id: @meal_queue_recipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_queue_recipe.to_param
    assert_response :success
  end

  test "should update meal_queue_recipe" do
    put :update, id: @meal_queue_recipe.to_param, meal_queue_recipe: @meal_queue_recipe.attributes
    assert_redirected_to meal_queue_recipe_path(assigns(:meal_queue_recipe))
  end

  test "should destroy meal_queue_recipe" do
    assert_difference('MealQueueRecipe.count', -1) do
      delete :destroy, id: @meal_queue_recipe.to_param
    end

    assert_redirected_to meal_queue_recipes_path
  end
end
