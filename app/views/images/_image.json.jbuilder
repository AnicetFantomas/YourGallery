json.extract! image, :id, :title, :description, :created_at, :updated_at
json.url image_url(image, format: :json)
