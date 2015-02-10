json.extract! @post, :id, :title, :content, :created_at, :updated_at
json.author do
  json.author_name @post.user.name  
  json.author_city @post.user.city 
end
