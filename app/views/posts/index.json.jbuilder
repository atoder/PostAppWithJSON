json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content
  json.author_name post.user.name  
  json.author_city post.user.city 
end
