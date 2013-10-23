class AddPermalinkToAdviceareas < ActiveRecord::Migration
  def change
    add_column :adviceareas, :permalink, :string
  end
  def self.up
  add_column :adviceareas, :permalink, :string
  add_index :adviceareas, :permalink, :unique => true
  end
end
