json.array!(@long_jokes) do |long_joke|
  json.extract! long_joke, :contents, :user_id
  json.url long_joke_url(long_joke, format: :json)
end
