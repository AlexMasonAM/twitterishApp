json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :name, :location, :url, :joined_at, :verified
  json.url user_url(user, format: :json)
end
