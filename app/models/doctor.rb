class Doctor < ApplicationRecord
has_many :appointments
has_many :patient, through: :appointments
belongs_to :city, optional: true
has_and_belongs_to_many :specialties
end
