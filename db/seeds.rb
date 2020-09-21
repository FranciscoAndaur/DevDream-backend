# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = [{
    name: "taco",
    email: "taco@taco.com",
    password_digest: "asdf"
},{
    name: 'karem',
    email: "karem@karem.com",
    password_digest: "clown"
}]

users.each do |user|
    User.create(name: user[:name], email: user[:email], password_digest: user[:password_digest])
end

posts = [{
    content: "I was doing yoga in the park and it began to rain, the rain was not rain though it was marshmallows.... I made Marshmallow angels.",
    user_id: 1
},{
    content: "I dreamed I was the captain of a ship, we all wore red beanies, and the ocean was coffee",
    user_id: 2
},{
    content: "I was tiny, the size of an ant. Living inside an avocado.",
    user_id: 1
},{
    content: "Today I dreamt of a dark tunnel, Monica Belucci was there. We were having coffee",
    user_id: 2
}]

posts.each do |post|
    Post.create(content: posts[:content], user_id: post[:user_id])
end