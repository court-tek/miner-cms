require "test_helper"

class Admin::MenuCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_menu_category = admin_menu_categories(:one)
  end

  test "should get index" do
    get admin_menu_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_menu_category_url
    assert_response :success
  end

  test "should create admin_menu_category" do
    assert_difference("Admin::MenuCategory.count") do
      post admin_menu_categories_url, params: { admin_menu_category: { description: @admin_menu_category.description, title: @admin_menu_category.title } }
    end

    assert_redirected_to admin_menu_category_url(Admin::MenuCategory.last)
  end

  test "should show admin_menu_category" do
    get admin_menu_category_url(@admin_menu_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_menu_category_url(@admin_menu_category)
    assert_response :success
  end

  test "should update admin_menu_category" do
    patch admin_menu_category_url(@admin_menu_category), params: { admin_menu_category: { description: @admin_menu_category.description, title: @admin_menu_category.title } }
    assert_redirected_to admin_menu_category_url(@admin_menu_category)
  end

  test "should destroy admin_menu_category" do
    assert_difference("Admin::MenuCategory.count", -1) do
      delete admin_menu_category_url(@admin_menu_category)
    end

    assert_redirected_to admin_menu_categories_url
  end
end
