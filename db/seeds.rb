# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

6.times do |n|
  Salesman.create(name: Faker::Name.unique.name, city: Faker::WorldCup.city, commission: rand(12..15)/100.0)
end

8.times do |n|
  Customer.create(cust_name: Faker::Name.unique.name, city: Faker::WorldCup.city, grade: rand(1..4) * 100, salesman_id: rand(1..Salesman.count))
end

20.times do |n|
  Order.create(purch_amt: rand(75..2480), ord_date: rand(4.weeks.ago..2.days.ago), customer_id: rand(1..Customer.count))
end
