class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :venue
      t.string :town
      t.string :state
      t.integer :zip
      t.boolean :multiday
      t.string :start_grade
      t.string :end_grade
      t.date :start_date
      t.date :end_date
      t.string :time_span
      t.string :cost
      t.text :description
      t.string :type
      t.string :website
      t.string :image_url
      t.integer :no_sessions

      t.timestamps
    end
  end
end
