require 'test_helper'

class ScholarshipCommentsControllerTest < ActionController::TestCase
  setup do
    @scholarship_comment = scholarship_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scholarship_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scholarship_comment" do
    assert_difference('ScholarshipComment.count') do
      post :create, scholarship_comment: @scholarship_comment.attributes
    end

    assert_redirected_to scholarship_comment_path(assigns(:scholarship_comment))
  end

  test "should show scholarship_comment" do
    get :show, id: @scholarship_comment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scholarship_comment.to_param
    assert_response :success
  end

  test "should update scholarship_comment" do
    put :update, id: @scholarship_comment.to_param, scholarship_comment: @scholarship_comment.attributes
    assert_redirected_to scholarship_comment_path(assigns(:scholarship_comment))
  end

  test "should destroy scholarship_comment" do
    assert_difference('ScholarshipComment.count', -1) do
      delete :destroy, id: @scholarship_comment.to_param
    end

    assert_redirected_to scholarship_comments_path
  end
end
