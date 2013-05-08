# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first_names = [
  "Charles", "David", "James", "Kevin", "Joseph", "Michael",
  "Richard", "Robert", "Thomas", "William", "Mary", "Linda",
  "Elizabeth", "Jennifer", "Maria", "Susan", "Amy", "Karen"
]
last_names = [
  "Anderson", "Brown", "Davis", "Johnson", "Jones", "White",
  "Moore", "Smith", "Taylor", "Wilson", "Jackson", "Martin"
]
first_names.each do |fn|
  last_names.each do |ln|
    person        = Person.find_or_create_by_first_name_and_last_name(fn, ln)
    person.email  = "#{fn.downcase}.#{ln.downcase}@#{ln.downcase}.com"
    person.age    = rand(80) + 20
    person.active = true
    person.save
  end
end
