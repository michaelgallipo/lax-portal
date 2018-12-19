class CreateCamps < ActiveRecord::Migration[5.2]
  def change
    create_table :camps do |t|
      t.string :name
      t.string :grade_start
      t.string :grade_end
      t.date :start_date
      t.date :end_date
      t.string :time_span
      t.string :location
      t.string :cost
      t.text :description
      t.string :website
      t.string :image_url
      t.boolean :overnight

      t.timestamps
    end
  end
end
