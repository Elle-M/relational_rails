# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

handlebars = Salon.create!(name: "Handlebars", city: "Salida", stars: 4, requires_insurance: true)
elle = Salon.create!(name: "ELLE", city: "Denver", stars: 5, requires_insurance: true)
major_cutz = Salon.create!(name: "Major Cutz", city: "LA", stars: 2, requires_insurance: false) 

hour_workstation = handlebars.workstations.create!(name: 'hour_workstation', chair_count: 2, available: true )
half_day_workstation = handlebars.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
day_workstation = handlebars.workstations.create!(name: 'day_workstation', chair_count: 5, available: true )

hour_workstation = elle.workstations.create!(name: 'hour_workstation', chair_count: 3, available: true )
half_day_workstation = elle.workstations.create!(name: 'half_day_workstation', chair_count: 5, available: true )
day_workstation = elle.workstations.create!(name: 'day_workstation', chair_count: 7, available: true )

hour_workstation = major_cutz.workstations.create!(name: 'hour_workstation', chair_count: 1, available: true )
half_day_workstation = major_cutz.workstations.create!(name: 'half_day_workstation', chair_count: 2, available: true )
day_workstation = major_cutz.workstations.create!(name: 'day_workstation', chair_count: 2, available: true )
