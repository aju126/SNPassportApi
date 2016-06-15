json.array!(@group_types) do |group_type|
  json.extract! group_type, :id, :name
  json.url group_type_url(group_type, format: :json)
end
