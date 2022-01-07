class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :privateNumber
      t.string :employeeNumber
      t.string :email
      t.string :name
      t.string :position
      t.bolean :status
      t.references :branches, null: false, foreign_key: true

      t.timestamps
    end
  end
end
