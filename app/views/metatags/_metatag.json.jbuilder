json.extract! metatag, :id, :title, :keywords, :description, :page, :created_at, :updated_at
json.url metatag_url(metatag, format: :json)
