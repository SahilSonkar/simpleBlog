# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 20.times do |i|
#     puts "creating stident numer =  #{i+1}"
#     User.create(
#         first_name: "student #{i+1}",
#         last_name: "Lname #{i+1}",
#         email: "student#{i+1}@gmail.com",
#         address: "Howrah-#{i+1}"
#     )
# end

# User.all.each do |user|
#     user.articles.create(
#         title: "dummu article for user #{user.id}",
#         body: "dummy article body for user #{user.id}"
#     )
#     user.articles.create(
#         title: "dummu article for user #{user.id}",
#         body: "dummy article body for user #{user.id}"
#     )
# end

20.times do |i|

    Course.create(
        title: "course #{i+1}",
        body: "body of the course #{i+1}"
    )
end




