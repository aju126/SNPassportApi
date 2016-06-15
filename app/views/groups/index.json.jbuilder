json.array!(@groups) do |group|
  json.extract! group, :id, :name, :mobile, :address, :email
  json.url group_url(group, format: :json)
end
