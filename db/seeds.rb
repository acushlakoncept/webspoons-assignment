1000.times do
    status = rand(0..1) == 1 ? 'active' : 'inactive'
    User.create(title: Faker::Name.prefix, name: Faker::Name.unique.name, email: Faker::Internet.unique.email,
                phone: Faker::PhoneNumber.cell_phone_in_e164.gsub('+', ''), status: status)
  end