require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
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

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get set_company" do
    get :set_company
    assert_response :success
  end

  test "should get company_params" do
    get :company_params
    assert_response :success
  end

end
