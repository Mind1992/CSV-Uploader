CSVuploader
===========

##About the project
CSVuploader is a project written in Ruby on Rails and completed for the Renewable Funding code challenge. The project lets users upload csv files and store their data in the database. After uploading a file, the total amount of gross revenue represented by the uploaded file will be displayed in the table. Users can log in with their emails and passwords or through their github accounts. Non-logged in users don't have access to upload files and will be asked to log in or sign up during a session.


##Setup
1. Extract .zip file
2. In terminal open up csv-uploader folder that is inside of extracted folder
3. Run bundle to install all the needed gems:

  ```console
  $ bundle install
  ```

4. Set up the databases for development and testing environment:

  ```console
  $ rake db:create db:migrate
  ```

5. In order to implement authentication with Github we need to register our app first:
 1. Log in to your Github account and go to settings.
 2. Click on __Applications__ tab.
 3. Type in any name you'd like into __Application name__ field.
 4. Copy paste __http://localhost:3000__ into __Homepage URL__ field.
 5. You can skip __Application description__.
 6. Copy and paste __http://127.0.0.1:3000/__ into __Authorization callback URL__.
 7. Finish registering your application by clicking on __Register application__ button.

6. Now you can see generated CLied ID (example: 6000b5970l70f33caf6c) and Client Secret (example: 04591412l7a05acebab819284d96653d4ff16ba2).
7. Create .env file in the root folder and set environmental variables like this:
  example: __GITHUB_ID=82b157689td780be6d35__
  example: __GITHUB_SECRET=b91f4cc478h4ftyu7893ac6bf94254337df4e71bc__
8. Don't forget to ignore your .env file in .gitignore
9. Start your local rails server:

```console
$ rails s
```
10. Go to http://localhost:3000 in a browser
11. Play around with the app and have fun!


## Author
Sergii Mertsalov
