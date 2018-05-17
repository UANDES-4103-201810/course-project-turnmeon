# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name:'Technology')
Category.create(name:'Games')
Category.create(name:'Music')
Category.create(name:'Art')
User.create!([
  {email: "admin@hotmail.com", password: "admin123", password_confirmation: "admin123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "testadmin@mvmanor.co.uk", password: "testadminuser", password_confirmation: "testadminuser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "testuser@mvmanor.co.uk", password: "testuseraccount", password_confirmation: "testuseraccount", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "testcustomer@customer.co.uk", password: "testcustomeruser", password_confirmation: "testcustomeruser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Idea.create(title:"iPhone X", description: 'Newest Apple product in the market!', estimated_date: nil, goal_amount: 10000, category_id: 1, user_id: 2)
Idea.create(title:"Unbreakable Glass", description: 'Best solution for your parties', estimated_date: nil, goal_amount: 500, category_id: 2, user_id: 3)
Idea.create(title:"6x6 SUV", description: 'The awesome feeling to go wild in your family car', estimated_date: nil, goal_amount: 10000, category_id: 1, user_id: 4)

