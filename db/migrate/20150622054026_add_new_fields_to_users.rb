class AddNewFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile, :integer
    add_column :users, :birthday, :datetime
  end
end
