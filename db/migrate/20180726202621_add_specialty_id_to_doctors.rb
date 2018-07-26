class AddSpecialtyIdToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :specialty_id, :integer
  end
end
