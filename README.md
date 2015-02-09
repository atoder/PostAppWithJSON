## PostApp test

PostApp is a simple blog post app with the following models and properties:

- Users # have name, city
- Posts # have an author, title, content, timestamps
- Images # have a parent post
- Comments # a nested/threaded list of comments

Please create a fresh rails app, and JSON API endpoints for the following cases.

#### Posts

- list - return most recent posts, as an array of { id, title, author_name, author_city, image } 
- create
- view an individual post
- update post
- delete a post

#### Images

- add image to a post
- delete image

#### Comments

- list comments for a post
- create a comment
- delete a comment / comment thread you've created.


## ANSWER 

### As a web interface app
- Step 1 - Create a user
- Step 2 - Create a post. Post can have many comments and many images 



### JSON API END POINTS

Users
- list users
curl -i http://post-app-json.herokuapp.com/users.json

- create user
curl -H "Content-Type: application/json" -d '{"name":"xyz","city":"xyz"}' http://post-app-json.herokuapp.com/users


- delete user
curl -H "Content-Type: application/json" -X DELETE http://post-app-json.herokuapp.com/users/1


#### Posts

- list - return most recent posts, as an array of { id, title, author_name, author_city, image } 
curl -i http://post-app-json.herokuapp.com/posts.json

- create
curl -H "Content-Type: application/json" -d '{"title":"xyz","content":"xyzzz", "user_id":2}' http://post-app-json.herokuapp.com/posts

- view an individual post
curl -i http://post-app-json.herokuapp.com/posts/1.json


- update post
curl -H "Content-Type: application/json" -X PUT -d '{"title":"xyz","content":"xyzzz"}' http://post-app-json.herokuapp.com/posts/2


- delete a post
curl -H "Content-Type: application/json" -X DELETE http://post-app-json.herokuapp.com/posts/1



#### Images

- add image to a post
curl -i -F "image[attachment]=@title.jpg" http://post-app-json.herokuapp.com/posts/8/images



- delete image
curl -H "Content-Type: application/json" -X DELETE http://post-app-json.herokuapp.com/images/20


#### Comments

- list comments for a post
 curl -i http://post-app-json.herokuapp.com/posts/1/comments.json

 - create a comment
 curl -X POST -H "Content-Type: application/json" -d '{"comment":{"comment":"test"}}' http://post-app-json.herokuapp.com/posts/8/comments


 - delete a comment / comment thread you've created.

# delete comment
curl -H "Content-Type: application/json" -X DELETE http://post-app-json.herokuapp.com/comments/1


# delete threads
curl -H "Content-Type: application/json" -X DELETE http://post-app-json.herokuapp.com/posts/2/comments/destroy_all

