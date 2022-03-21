class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :doctor_name
      t.integer :number_of_prescriptions

      t.timestamps
    end
  end
end
