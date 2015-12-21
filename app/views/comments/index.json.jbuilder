json.array!(@comments) do |comment|
  json.extract! comment, :id, :title, :commnt
  json.url comment_url(comment, format: :json)
end
