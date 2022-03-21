class RemoveFieldNameFromDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :number_of_prescriptions, :integer
  end
end
