# bookmark_manager

### User story 1
As a user
So that I can see what webpages are available to choose from
I'd like to be able to view a bookmark list

### User story 2
As a user
So that I can save a website
I would like to add the site's address and title to bookmark manager

### User story 3
As a user
So that I can remove a bookmark
I would like to be able to delete a bookmark from bookmark manager

Domain model for first user story:

![Screenshot 2021-11-08 at 13 40 17](https://user-images.githubusercontent.com/90654397/140752940-145899f4-6590-48ef-b03e-1c26d708b290.png)

Connecting to database:

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager; and CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager; and \c bookmark_manager_test;
4. Run the query we have saved in the file db/migrations for each database
5. Run 'rackup' and connect to http://localhost:9292/bookmarks to view bookmarks