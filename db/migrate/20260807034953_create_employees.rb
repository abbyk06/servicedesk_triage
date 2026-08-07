class CreateEmployees < ActiveRecord::Migration[8.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :role
      t.references :department, null: false, foreign_key: true
      t.references :manager, foreign_key: { to_table: :employees }, null: true

      t.timestamps
    end
  end
end
