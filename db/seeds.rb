50.times do 
  Company.create(
    name: Faker::Company.name,
    profession: Faker::Company.profession,
    logo: Faker::Company.logo
    )
end 