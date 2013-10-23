class CreateAdviceareas < ActiveRecord::Migration
  def change
    create_table :adviceareas do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
