class Api::PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_name, :last_name, :email, :age, :active

  def name
    "#{object.first_name} #{object.last_name}"
  end
end
