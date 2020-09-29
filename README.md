# COVID Trackr 🦠 (Backend)
This project is designed to track the COVID-19 virus by region.

### Table of Contents
- [Demo](#demo)

- [Features](#features)

- [Getting Started](#getting-started)

- [Tools](#tools)

### Demo
Click [here](https://www.youtube.com/watch?v=lVbZpYMkt3s&feature=youtu.be&ab_channel=JackTawil) to view a demo of this project.

### Features
A user is able to:
- Login
- Search by country
- Bookmark country statistics
- Remove Bookmarks
- Logout
- Delete Account
- Update email address associated with their account

### Getting Started
This project is created in conjunction with this [frontend](https://github.com/Jackmt9/covid_trackr-frontend).

To start the backend server:
1. Clone this repository.
2. Install all dependencies by running ```$ bundle install```
3. Be sure you have a [Postgresql](https://www.postgresql.org/) server running.
4. Create your database table by running ```$ rails db:create```
5. Migrate to set up your database schema by running ```$ rails db:migrate```.
6. Run ```$ rails server``` to start your server. 
7. Open your browser and navigate to http://localhost:3000/ to access the backend routes or follow the [frontend README](https://github.com/Jackmt9/covid_trackr-frontend/blob/master/README.md).

### Tools
- Ruby on Rails
- ActiveRecord
- Postgresql
- SQL
- Bcrypt
- [COVID-19 API](https://documenter.getpostman.com/view/10877427/SzYW2f8n?version=latest)
