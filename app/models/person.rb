class Person < ActiveRecord::Base
  attr_accessible :active, :age, :email, :first_name, :last_name
end
