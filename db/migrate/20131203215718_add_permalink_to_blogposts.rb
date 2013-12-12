class AddPermalinkToBlogposts < ActiveRecord::Migration
  def change
    add_column :blogposts, :permalink, :string
    add_index :blogposts, :permalink, :unique => true
  end
end
