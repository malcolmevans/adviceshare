json.array!(@sections) do |section|
  json.extract! section, :title, :body, :user_id, :advicearea_id
  json.url section_url(section, format: :json)
end