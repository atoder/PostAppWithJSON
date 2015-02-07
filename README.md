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
