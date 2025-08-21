json.extract! announcement, :id, :title, :announcement_type, :message, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
