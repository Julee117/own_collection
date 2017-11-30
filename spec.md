# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
    -Sinatra gem was added in Gemfile.
- [x] Use ActiveRecord for storing information in a database
    -ActiveRecord and sqlite3 gems were added in Gemfile.
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
    -There are 3 model classes: User, Board, Item
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
    -User has many boards, has many items through boards
    -Board has many items
- [x] Include user accounts
    -User model and Users Controller were created.
- [x] Ensure that users can't modify content created by other users
    -Methods were created where only the current_user can modify its own contents. Current_user is
     found by its session user_id
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    -Boards Controller and Items Controller have routes to create new board/item, read, update and destroy
     using HTTP verbs.
- [x] Include user input validations
    -User is warned if input is invalid.
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
    -Flash-rack gem was added to Gemfile to create error messages.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
