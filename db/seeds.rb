
Student.destroy_all
SchoolClass.destroy_all


abe = Student.create(first_name: "Abraham", last_name: "Adams")
bea = Student.create(first_name: "Beatrice", last_name: "Baker")
cc  = Student.create(first_name: "Celia", last_name: "Carter")
dee = Student.create(first_name: "DeAnna", last_name: "Davis") 
eel = Student.create(first_name: "Elise", last_name: "Evans")


se = SchoolClass.create(title: "Software Engineering", room_number: "1")
ds = SchoolClass.create(title: "Data Science", room_number: "50")
cs = SchoolClass.create(title: "Cyber Security", room_number: "7")







# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





