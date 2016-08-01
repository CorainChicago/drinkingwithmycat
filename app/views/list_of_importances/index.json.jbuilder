json.array!(@list_of_importances) do |list_of_importance|
  json.extract! list_of_importance, :id
  json.url list_of_importance_url(list_of_importance, format: :json)
end
