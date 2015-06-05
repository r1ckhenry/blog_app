# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all

p1 = Post.new(title: 'First Blog post', content: 'Content here', author: 'Rick Henry')
p2 = Post.new(title: 'First Blog post', content: 'Content here', author: 'Rick Henry')
p3 = Post.new(title: 'First Blog post', content: 'Content here', author: 'Rick Henry')

