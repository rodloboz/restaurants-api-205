Restaurant.destroy_all

RESTAURANTS = [
  {
    name: "Portugália",
    address: "Avenida Almirante Reis"
  },
  {
    name: "Bonzai",
    address: "Principe Real"
  }
]


RESTAURANTS.each do |attributes|
  attributes.merge!(user: User.first)
  Restaurant.create!(attributes)
end

puts "Created #{Restaurant.count} restaurants"

