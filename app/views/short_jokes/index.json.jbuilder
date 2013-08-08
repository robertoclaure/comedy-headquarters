json.array!(@short_jokes) do |short_joke|
  json.extract! short_joke, :contents, :user_id
  json.url short_joke_url(short_joke, format: :json)
end
