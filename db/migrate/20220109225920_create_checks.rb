class CreateChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :checks do |t|
      t.date :date
      t.time :hour
      t.boolean :check
      t.references :employees, null: false, foreign_key: true

      t.timestamps
    end
  end
end
