class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :specialty
      t.belongs_to :doctor
      t.timestamps
    end
  end
end
