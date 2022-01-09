class CreateEmployeeChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_checks do |t|
      t.references :employees, null: false, foreign_key: true
      t.references :checks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
