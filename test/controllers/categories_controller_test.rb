require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get populate_categories" do
    get :populate_categories
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get get_departments" do
    get :get_departments
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get set_category" do
    get :set_category
    assert_response :success
  end

  test "should get category_params" do
    get :category_params
    assert_response :success
  end

end
