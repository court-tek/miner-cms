json.extract! page, :id, :item_title, :item_description, :item_image, :created_at, :updated_at
json.url page_url(page, format: :json)
