# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.find_or_create_by(id: 1) do |admin|
  admin.admin_name ="admin"
  admin.email = "example@example.com"
  admin.password = "example"
  admin.admin_number ="1234"
  admin.user_id ="1"
 end