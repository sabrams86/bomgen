json.array!(@attributes) do |attribute|
  json.extract! attribute, :id, :model, :name, :value, :icode
  json.url attribute_url(attribute, format: :json)
end
