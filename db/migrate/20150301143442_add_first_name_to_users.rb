class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string, null: false
  end
end
