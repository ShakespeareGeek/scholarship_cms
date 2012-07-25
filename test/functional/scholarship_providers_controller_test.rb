require 'test_helper'

class ScholarshipProvidersControllerTest < ActionController::TestCase
  setup do
    @scholarship_provider = scholarship_providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scholarship_providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scholarship_provider" do
    assert_difference('ScholarshipProvider.count') do
      post :create, :scholarship_provider => @scholarship_provider.attributes
    end

    assert_redirected_to scholarship_provider_path(assigns(:scholarship_provider))
  end

  test "should show scholarship_provider" do
    get :show, :id => @scholarship_provider.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @scholarship_provider.to_param
    assert_response :success
  end

  test "should update scholarship_provider" do
    put :update, :id => @scholarship_provider.to_param, :scholarship_provider => @scholarship_provider.attributes
    assert_redirected_to scholarship_provider_path(assigns(:scholarship_provider))
  end

  test "should destroy scholarship_provider" do
    assert_difference('ScholarshipProvider.count', -1) do
      delete :destroy, :id => @scholarship_provider.to_param
    end

    assert_redirected_to scholarship_providers_path
  end
end
