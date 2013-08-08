json.array!(@users) do |user|
  json.extract! user, :name, :profile_pic, :bio
  json.url user_url(user, format: :json)
end
