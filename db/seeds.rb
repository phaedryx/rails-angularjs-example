first_names = [
  "Jacob", "Michael", "Matthew", "Joshua", "Chris", "Nicholas", "Andrew", "Joseph",
  "Emily", "Hannah", "Ashley", "Sarah", "Jessica", "Elizabeth", "Lauren", "Olivia"
]
last_names = [
  "Smith", "Johnson", "Williams", "Harris", "Brown", "Davis", "Miller", "Anderson",
  "Thompson", "Jackson", "Robinson", "Young", "Wright", "Walker", "Hall", "Carter"
]

first_names.each do |fn|
  last_names.each do |ln|
    User.create(first_name: fn, last_name: ln, email: "#{fn.downcase}.#{ln.downcase}@#{ln.downcase}.com", active: true)
  end
end
