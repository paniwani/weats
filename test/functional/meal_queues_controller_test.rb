require 'test_helper'

class MealQueuesControllerTest < ActionController::TestCase
  setup do
    @meal_queue = meal_queues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_queues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_queue" do
    assert_difference('MealQueue.count') do
      post :create, meal_queue: @meal_queue.attributes
    end

    assert_redirected_to meal_queue_path(assigns(:meal_queue))
  end

  test "should show meal_queue" do
    get :show, id: @meal_queue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_queue.to_param
    assert_response :success
  end

  test "should update meal_queue" do
    put :update, id: @meal_queue.to_param, meal_queue: @meal_queue.attributes
    assert_redirected_to meal_queue_path(assigns(:meal_queue))
  end

  test "should destroy meal_queue" do
    assert_difference('MealQueue.count', -1) do
      delete :destroy, id: @meal_queue.to_param
    end

    assert_redirected_to meal_queues_path
  end
end
