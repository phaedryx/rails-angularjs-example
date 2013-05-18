first_names = [
  "Jacob", "Michael", "Matthew", "Joshua", "Chris", "Nicholas", "Andrew", "Joseph",
  "Emily", "Hannah", "Ashley", "Sarah", "Jessica", "Elizabeth", "Lauren", "Olivia"
]
last_names = [
  "Smith", "Johnson", "Williams", "Harris", "Brown", "Davis", "Miller", "Anderson",
  "Thompson", "Jackson", "Robinson", "Young", "Wright", "Walker", "Hall", "Carter"
]
states = [
  "Alaska", "Alabama", "Arkansas", "American Samoa", "Arizona", "California",
  "Colorado", "Connecticut", "District of Columbia", "Delaware", "Florida",
  "Georgia", "Guam", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas",
  "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan",
  "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina",
  "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico",
  "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico",
  "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah",
  "Virginia", "Virgin Islands", "Vermont", "Washington", "Wisconsin", "West Virginia",
  "Wyoming"
]

first_names.each do |fn|
  last_names.each do |ln|
    User.create(
      first_name: fn,
      last_name: ln,
      email: "#{fn.downcase}.#{ln.downcase}@#{ln.downcase}.com",
      phone: "#{rand(2..9)}#{rand(0..9)}#{rand(0..9)}-#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}",
      state: states.sample,
      active: [true,true,true,false].sample)
    )
  end
end
