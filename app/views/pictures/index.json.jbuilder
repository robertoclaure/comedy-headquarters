json.array!(@pictures) do |picture|
  json.extract! picture, :description, :pic, :user_id
  json.url picture_url(picture, format: :json)
end
