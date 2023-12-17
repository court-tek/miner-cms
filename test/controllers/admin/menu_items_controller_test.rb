require "test_helper"

class Admin::MenuItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_menu_item = admin_menu_items(:one)
  end

  test "should get index" do
    get admin_menu_items_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_menu_item_url
    assert_response :success
  end

  test "should create admin_menu_item" do
    assert_difference("Admin::MenuItem.count") do
      post admin_menu_items_url, params: { admin_menu_item: { description: @admin_menu_item.description, image: @admin_menu_item.image, title: @admin_menu_item.title } }
    end

    assert_redirected_to admin_menu_item_url(Admin::MenuItem.last)
  end

  test "should show admin_menu_item" do
    get admin_menu_item_url(@admin_menu_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_menu_item_url(@admin_menu_item)
    assert_response :success
  end

  test "should update admin_menu_item" do
    patch admin_menu_item_url(@admin_menu_item), params: { admin_menu_item: { description: @admin_menu_item.description, image: @admin_menu_item.image, title: @admin_menu_item.title } }
    assert_redirected_to admin_menu_item_url(@admin_menu_item)
  end

  test "should destroy admin_menu_item" do
    assert_difference("Admin::MenuItem.count", -1) do
      delete admin_menu_item_url(@admin_menu_item)
    end

    assert_redirected_to admin_menu_items_url
  end
end
