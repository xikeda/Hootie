class AddUsernameToUsers < ActiveRecord::Migration
  def change # Anything inside this method will be translated to SQL and modifies the database (currently SQLite)
    add_column :users, :username, :string #adds a new column to table users, called username, type string
    add_index :users, :username, unique: true # First, index the usernames for quick retrieval. Second, make sure Users are unique. 
  end
end
