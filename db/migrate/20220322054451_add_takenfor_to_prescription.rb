class AddTakenforToPrescription < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :taken_for, :string
  end
end
