class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :commnt

      t.timestamps null: false
    end
  end
end
