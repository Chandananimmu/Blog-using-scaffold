require 'test_helper'

class BlogDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_detail = blog_details(:one)
  end

  test "should get index" do
    get blog_details_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_detail_url
    assert_response :success
  end

  test "should create blog_detail" do
    assert_difference('BlogDetail.count') do
      post blog_details_url, params: { blog_detail: { description: @blog_detail.description, title: @blog_detail.title } }
    end

    assert_redirected_to blog_detail_url(BlogDetail.last)
  end

  test "should show blog_detail" do
    get blog_detail_url(@blog_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_detail_url(@blog_detail)
    assert_response :success
  end

  test "should update blog_detail" do
    patch blog_detail_url(@blog_detail), params: { blog_detail: { description: @blog_detail.description, title: @blog_detail.title } }
    assert_redirected_to blog_detail_url(@blog_detail)
  end

  test "should destroy blog_detail" do
    assert_difference('BlogDetail.count', -1) do
      delete blog_detail_url(@blog_detail)
    end

    assert_redirected_to blog_details_url
  end
end
