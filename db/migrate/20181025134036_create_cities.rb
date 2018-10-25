class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city
      t.belongs_to :appointment
      t.belongs_to :doctor
      t.belongs_to :patient
      t.timestamps
    end
  end
end
