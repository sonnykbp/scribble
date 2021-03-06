# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

post = Post.create(title: "First Post", content: "This is my first post.", author: "Sonny")

comment = Comment.create(body: "This is my comment for the first post.", user: "Anon", post: post)
