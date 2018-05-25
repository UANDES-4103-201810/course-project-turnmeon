# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Idea.delete_all
Category.delete_all
User.delete_all
Message.delete_all

Category.create!([{id: 1, name:'Technology'},{id: 2, name:'Games'},{id: 3, name:'Music'},{id: 4, name:'Design'}])

User.create!([
  {id: 1, first_name: "Admin", about: "Admin of TurnItOn", email: "admin@admin.com", password: "admin123", password_confirmation: "admin123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true},
  {id: 2, first_name: "Juan", last_name: "Soto", about: "I have a Bachelor's degree in Industrial Engineering from Purdue University, with fifteen years experience in the manufacturing industry. My passion is in solving problems and improving processes to streamline business, eliminate waste, and cut costs. I once saved my company $10 million through a single capacity analysis. I've been an integral part of certifying the Boeing 747, 767 and 777 for safety and FAA compliance. I'm looking for a position in the manufacturing industry as an Industrial Engineer.", birthdate: "1970-02-06", email: "juansoto@gmail.com", password: "clave123", password_confirmation: "clave123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {id: 3, first_name: "Pedro", last_name: "Kraus", about: "I am a dedicated person with a family of four. I enjoy reading, and the knowledge and perspective that my reading gives me has strengthened my teaching skills and presentation abilities. I have been successful at raising a family, and I attribute this success to my ability to plan, schedule, and handle many different tasks at once. This flexibility will help me in the classroom, where there are many different personalities and learning styles.", birthdate: "1982-02-06", email: "pedroks@gmail.com", password: "clave123", password_confirmation: "clave123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {id: 4, first_name: "Marta", last_name: "Gonzalez", about: "My name is Marta Gonzalez, and I enjoy meeting new people and finding ways to help them have an uplifting experience. I have had a variety of customer service opportunities, through which I was able to have fewer returned products and increased repeat customers, when compared with co-workers. I am dedicated, outgoing, and a team player. Who could I speak with in your customer service department about your organization’s customer service needs?", birthdate: "1986-02-06", email: "marta22@gmail.com", password: "clave123", password_confirmation: "clave123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}])

Idea.create!([{id: 1, title:"Sport headphones", description: 'Confortable headphones made for all kind of sports.', estimated_date: nil, goal_amount: 10000, category_id: 3, user_id: 2, idea_image_file_name: "img1.jpg", created_at: "2017-05-25 14:53:19"},{id: 2, title:"Light shoes", description: 'Best running shoes on the market.', estimated_date: nil, goal_amount: 500, category_id: 4, user_id: 3, idea_image_file_name: "img2.jpg", created_at: "2018-03-25 14:53:19"},{id: 3, title:"New controller design", description: 'Perfect for gamers.', estimated_date: nil, goal_amount: 2000, category_id: 2, user_id: 4, idea_image_file_name: "img3.jpg", created_at: "2018-05-25 14:53:19"},{id: 4, title:"Supermarket GPS", description: "You'll never have to ask for a product location again.", estimated_date: nil, goal_amount: 90000, category_id: 1, user_id: 1, idea_image_file_name: "img4.jpg"}])

