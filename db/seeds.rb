require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do 
	ville = City.create(city_name: Faker::OnePiece.location)
end 

10.times do 
	doc = Doctor.create(first_name: Faker::Science.scientist, last_name: Faker::Name.name, postal_code: rand(100..976), city_id: rand(1..20), specialty_id: rand(1..20))
end 

10.times do 
	pat = Patient.create(first_name: Faker::OnePiece.character, last_name: Faker::OnePiece.character)
end 

10.times do 
	rdv = Appointment.create(doctor_id: rand(1..20), patient_id: rand(1..20), date: Faker::Time.between(DateTime.now - 1, DateTime.now))
end 

20.times do 
	spec = Specialty.create(doctor_id: rand(1..20), name: Faker::Military.army_rank)
end 
