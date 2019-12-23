# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
    User.create(
        username: Faker::Internet.user_name,
        password: "password"
    )
end

20.times do
    Message.create(
        body: Faker::Movies::BackToTheFuture.unique.quote,
        user_id: Faker::Number.within(range:1..5)
    )
end
