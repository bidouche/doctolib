10.times do
Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, postal_code: Faker::Address.zip_code)
end
80.times do
Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name)
end

100.times do
Appointment.create!(date: Faker::Date.forward(23), doctor_id: rand(1..10), patient_id: rand(1..80))
end

10.times do
City.create!(city: Faker::Address.city, appointment_id: rand(1..100), doctor_id: rand(1..10), patient_id: rand(1..80))
end

10.times do
Specialty.create!(specialty: Faker::Job.title, doctor_id: rand(1..10))
end