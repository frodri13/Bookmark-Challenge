# Bookmark Manager Challenge

# User Stories

```
As a user of this platform
So that I can keep track of useful URLs
I'd like to see a list of bookmarks

```

# Domain Model Diagram

![Sequence Diagram](https://raw.githubusercontent.com/frodri13/Bookmark-Challenge/main/img/diagram.jpg)

# DataBase Set Up

We're using ProgreSQL for this project. After installing it in your terminal with:

```
$ brew install postgresql
```

configure it to run in the background with this command after instalation:

```
$ brew services start postgresql
```

Once you have completed these two initial steps. Carry on as indicated to set up the DB:

1. Connect to `psql`
2. Create a DB with `CREATE DATABASE bookmark_manager;`
3. Connect to it with `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sq`

# Testing

In order to avoid testing issues when our db starts getting bigger. I created a testing database called `bookmark_manager_test` that will upload before every feature or unit test. This along our setup_test_database.rb that runs before each test allows us to have two different environments separate.
