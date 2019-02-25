require "application_system_test_case"

class BlogDetailsTest < ApplicationSystemTestCase
  setup do
    @blog_detail = blog_details(:one)
  end

  test "visiting the index" do
    visit blog_details_url
    assert_selector "h1", text: "Blog Details"
  end

  test "creating a Blog detail" do
    visit blog_details_url
    click_on "New Blog Detail"

    fill_in "Description", with: @blog_detail.description
    fill_in "Title", with: @blog_detail.title
    click_on "Create Blog detail"

    assert_text "Blog detail was successfully created"
    click_on "Back"
  end

  test "updating a Blog detail" do
    visit blog_details_url
    click_on "Edit", match: :first

    fill_in "Description", with: @blog_detail.description
    fill_in "Title", with: @blog_detail.title
    click_on "Update Blog detail"

    assert_text "Blog detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog detail" do
    visit blog_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog detail was successfully destroyed"
  end
end
