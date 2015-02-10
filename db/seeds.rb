# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


   Teacher.create(name:"Susan Smith", email:"SusanSmith@higher.edu", password:"SusanSmith")
   Teacher.create(name:"Tom Teacher", email:"TomTeacher@higher.edu", password:"TomTeacher")
   Teacher.create(name:"Bob Builder", email:"BobBuilder@higher.edu", password:"BobBuilder")



   Student.create(name:"Jack", student_email:"jack@gmail.com", password:"123456", teacher_id: 1)


   Parent.create(name:"Jonathan", email: "jonathan@gmail.com", password: "123456", child_name: "Jack")

   Achievement.create(name:"Create App 1", value:500)
   Achievement.create(name:"Create App 2", value:500)
   Achievement.create(name:"Give Presentation", value:500)
   Achievement.create(name:"Midterm Test", value:1000)
   Achievement.create(name:"Final Exam", value:1000)
   Achievement.create(name:"Final Project", value:1000)
