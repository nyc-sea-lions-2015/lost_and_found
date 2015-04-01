
require "faker"
10.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "1234")
end

status = [true, false]
["watch", "book", "glasses","consiousness", "doll"].each do |item|
  Item.create(name: item, description: Faker::Lorem.sentence, lost: status[0], found: status[1], user_id: User.all.sample.id)
end
["car keys", "wallet","hat","notebook","bike","skateboard","ipod"].each do |item|
  Item.create(name: item, description: Faker::Lorem.sentence, lost: status[1], found: status[0], user_id: User.all.sample.id)
end


