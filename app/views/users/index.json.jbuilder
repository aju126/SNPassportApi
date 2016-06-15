json.array!(@users) do |user|
  json.extract! user, :id, :name, :mobile, :address, :email
  json.url user_url(user, format: :json)
end
