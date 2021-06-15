require 'pg'

def setup_test_database

p "Setting up database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE bookmarks;")
end