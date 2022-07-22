puts "cleaning up database"
Flat.destroy_all
puts "database clean"

puts 'creating flats'
  4.times do
    flat = Flat.create(
      name: Faker::Games::Pokemon.name,
      address: Faker::Games::Pokemon.location,
      price_per_night: "300 $",
      number_of_guests: 4
    )
    puts "Flat #{flat.id} created"
  end
puts 'Done'
