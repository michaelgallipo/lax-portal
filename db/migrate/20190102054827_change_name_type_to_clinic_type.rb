class ChangeNameTypeToClinicType < ActiveRecord::Migration[5.2]
  def change
  	rename_column :clinics, :type, :clinic_type
  end
end
