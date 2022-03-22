class CreateDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :drugs do |t|
      t.references :prescription, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.string :doctor_name
      t.string :taken_for
      t.string :name
      t.integer :cost
      t.integer :quantity

      t.timestamps
    end
  end
end
