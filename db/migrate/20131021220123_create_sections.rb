class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :advicearea_id

      t.timestamps
    end
  end
end
