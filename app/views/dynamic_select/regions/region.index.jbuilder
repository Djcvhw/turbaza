json.array!(@regions) do |region|
  json.extract! region, :name, :id
end
