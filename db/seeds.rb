# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding"
Task.destroy_all
Contact.destroy_all
JobApplication.destroy_all
User.destroy_all
Job.destroy_all
Organization.destroy_all
user1 = User.create({username: "bobcat",password: "abcd", password_confirmation:"abcd",name:"Bob Jones", email:"bob@fakeemail.com",location:"Maryland",job_title:"Software Engineer"})
user2 = User.create({username:"monk",password: "1234", password_confirmation:"1234",name:"Ras Pan", email:"ras@fake.com",location:"UK",job_title:"artist"})
microsoft = Organization.create({name:"Mircosoft", description:"Tech Company",industry:"tech"})
ea = Organization.create({name:"EA", description:"Makes video games",industry:"games"})
job1 = Job.create({role:"game developer",listing_url:"www.ea.com/games",location:"USA",description:"Make video games",organization:ea})
job2 = Job.create({role:"front end developer",listing_url:"www.microsoft.com/games",location:"USA",description:"Make software",organization:microsoft})
app1 = JobApplication.create({notes:"djnnrgrjkwnrkejg",job:job1,user:user1,status:"Interviewing",rejected:false,application_process:"referred"})
app2 = JobApplication.create({notes:"njvnjrrjngodvjew",job:job2,user:user2,status:"Submitted",rejected:false,application_process:"online"})
Task.create({name:"Write cover letter",category:"before submitting",date:"12-28-21",completed:false,job_application:app1})
Task.create({name:"Interview",category:"Interview stage",date:"12-02-21",completed:false,job_application:app2})
Contact.create({name:"Mike",role:"hiring manager", description: "nice guy",phone_number:"492-212-8920",email:"njenf@fakeemail.com",job_application:app2})
Contact.create({name:"Doug",role:"interviewer",description:"Gave advice about technical interview",phone_number:"492-212-8920",email:"njenf@fakeemail.com",job_application:app1})
puts "Done seeding"

