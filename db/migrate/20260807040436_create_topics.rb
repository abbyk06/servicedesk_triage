class CreateTopics < ActiveRecord::Migration[8.1]
  def change
    create_table :topics do |t|
      t.text :keywords
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
