require "application_system_test_case"

class Admin::MenuItemsTest < ApplicationSystemTestCase
  setup do
    @admin_menu_item = admin_menu_items(:one)
  end

  test "visiting the index" do
    visit admin_menu_items_url
    assert_selector "h1", text: "Menu items"
  end

  test "should create menu item" do
    visit admin_menu_items_url
    click_on "New menu item"

    fill_in "Description", with: @admin_menu_item.description
    fill_in "Image", with: @admin_menu_item.image
    fill_in "Title", with: @admin_menu_item.title
    click_on "Create Menu item"

    assert_text "Menu item was successfully created"
    click_on "Back"
  end

  test "should update Menu item" do
    visit admin_menu_item_url(@admin_menu_item)
    click_on "Edit this menu item", match: :first

    fill_in "Description", with: @admin_menu_item.description
    fill_in "Image", with: @admin_menu_item.image
    fill_in "Title", with: @admin_menu_item.title
    click_on "Update Menu item"

    assert_text "Menu item was successfully updated"
    click_on "Back"
  end

  test "should destroy Menu item" do
    visit admin_menu_item_url(@admin_menu_item)
    click_on "Destroy this menu item", match: :first

    assert_text "Menu item was successfully destroyed"
  end
end
