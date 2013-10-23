json.array!(@adviceareas) do |advicearea|
  json.extract! advicearea, :name, :description
  json.url advicearea_url(advicearea, format: :json)
end
