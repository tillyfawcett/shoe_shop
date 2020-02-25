# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Shoe.destroy_all
Category.destroy_all

puts 'Creating categories...'
womens = Category.create!(name: 'womens')
kids = Category.create!(name: 'kids')
mens = Category.create!(name: 'mens')

puts 'Creating shoes...'
Shoe.create!(sku: 'original-teddy-bear', name: 'Teddy bear', category: kids, price: 8.5, photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Teddy-Bears-HD-Images.jpg')
Shoe.create!(sku: 'teddy-bear', name: 'Teddy bear', category: kids, price: 8.5, photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Teddy-Bears-HD-Images.jpg')
Shoe.create!(sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', category: womens, price: 8.5, photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Shoe.create!(sku: 'octocat',   name: 'Octocat -  GitHub',      category: mens, price: 8.5, photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'Finished!'
