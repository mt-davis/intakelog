json.array!(@referreds) do |referred|
  json.extract! referred, :id, :name
  json.url referred_url(referred, format: :json)
end
