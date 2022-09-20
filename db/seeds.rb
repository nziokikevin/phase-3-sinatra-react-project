puts "🌱 Seeding manenoz..."

# Seed your database here

# saccos
Sacco.create(name: "Embassava", description: "The best in Embakasi route")
Sacco.create(name: "ROG", description: "We lead, others follow")
Sacco.create(name: "Super Metro", description: "Taking over the city")
Sacco.create(name: "Royal Swift", description: "We move swiftly")
Sacco.create(name: "Kabuku", description: "Zooeea hiyo sauti")
Sacco.create(name: "Umowa", description: "Imara kama simba")
Sacco.create(name: "Embassava Drips", description: "Preepare!")

# vehicles
Vehicle.create(model: "Isuzu", plate_no: "KDA 001A", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KDG 414S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Hyundai", plate_no: "KCF 007S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Hyundai", plate_no: "KBC 777S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Hyundai", plate_no: "KDE 999S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KDF 321S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KCZ 123S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KCY 826S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Hino", plate_no: "KDR 534S", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Hino", plate_no: "KBZ 648A", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Hino", plate_no: "KAY 568G", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Hino", plate_no: "KCG 890K", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KCA 216H", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KDT 890T", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KCT 567G", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Tata", plate_no: "KBH 343U", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Tata", plate_no: "KCY 414E", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Tata", plate_no: "KCK 517T", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Tata", plate_no: "KDJ 314F", owner_id: rand(1..7), sacco_id: rand(1..7))
Vehicle.create(model: "Isuzu", plate_no: "KBJ 454S", owner_id: rand(1..7), sacco_id: rand(1..7))

# routes
route1 = Route.create(name: "Mombasa Rd"),
route2 = Route.create(name: "Jogoo Rd"),
route3 = Route.create(name: "Thika Rd"),
route4 = Route.create(name: "Allsops"),
route5 = Route.create(name: "Waiyaki way")
route6 = Route.create(name: "Jericho")

#owners
Owner.create(name: "Kevin Nzioki")
Owner.create(name: "Allan Mauko")
Owner.create(name: "Kelvin Nderitu")
Owner.create(name: "Mariam Ali")
Owner.create(name: "Donald Brooks")
Owner.create(name: "Alvin Ndung'u")
Owner.create(name: "Mercy Nzau")

# drivers
20.times do
    driver = Driver.create(
        name: Faker::Name.name_with_middle,
        license_no: Faker::DrivingLicence.british_driving_licence,
        identity_card_no: Faker::IDNumber.valid,
        vehicle_id: rand(1..20),
        route_id: rand(1..7),
        sacco_id: rand(1..7)
    )
end


puts "✅ Done seeding manenoz!"
