json.extract! admin_menu_item, :id, :title, :description, :image, :created_at, :updated_at
json.url admin_menu_item_url(admin_menu_item, format: :json)
