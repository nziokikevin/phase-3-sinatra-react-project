puts "🌱 Seeding spices..."

# Seed your database here

5.times do
    sacco = Sacco.create(
        name: Faker::Company.name
    )
end

5.times do
    vehicle = Vehicle.create(
        plate_no: Faker::Vehicle.license_plate
        model: Faker::Vehicle.make,
        owner_id: rand(1..5),
        sacco_id: rand(1..5)
    )
end

5.times do
    owner = Owner.create(
        name: Faker::Name.name
    )
end

5.times do
    driver = Driver.create(
        name: Faker::Name.name_with_middle,
        license_no: Faker::DrivingLicence.british_driving_licence,
        identity_card_no: Faker::IDNumber.valid
        vehicle_id: rand(1..5),
        route_id: rand(1..5)
    )
end

# route
route1 = Route.create(name: "Mombasa Rd")
route2 = Route.create(name: "Jogoo Rd")
route3 = Route.create(name: "Thika Rd")
route4 = Route.create(name: "Allsops")
route5 = Route.create(name: "Waiyaki way")




puts "✅ Done seeding!"
