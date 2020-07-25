# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username:"danny",password:"test123")
User.create(username:"john",password:"test123")
User.create(username:"steven",password:"test123")
User.create(username:"tony",password:"test123")
User.create(username:"hanna",password:"test123")
User.create(username:"even",password:"test123")
Message.create(body:"Hello how's everyone?",user_id:2)
Message.create(body:"Excited to see this application live!",user_id:3)
Message.create(body:"Awesome!",user_id:4)
Message.create(body:"I love cats!",user_id:5)