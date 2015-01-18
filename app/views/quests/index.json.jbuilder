json.array!(@quests) do |quest|
  json.extract! quest, :id, : title, :description, :image_url, :points
  json.url quest_url(quest, format: :json)
end
