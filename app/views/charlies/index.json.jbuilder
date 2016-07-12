json.array!(@charlies) do |charly|
  json.extract! charly, :id, :description, :creator, :photo
  json.url charly_url(charly, format: :json)
end
