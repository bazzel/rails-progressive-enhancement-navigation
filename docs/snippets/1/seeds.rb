1000.times do
  Company.create name: Faker::Company.name,
                 catch_phrase: Faker::Company.catch_phrase
end
