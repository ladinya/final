# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Park.delete_all
Parkfeature.delete_all
Feature.delete_all
User.delete_all
Review.delete_all
Airport.delete_all

User.create(name: "Susan", email: "susan.zhailin@gmail.com", password: "1234")


puts "Creating airports..."
slc = Airport.create(name: "SLC") 
jac = Airport.create(name: "JAC")
sfo = Airport.create(name: "SFO")

# Create the movies
puts "Creating parks..."
arches = Park.create(airport_id: slc.id, name: "Arches", state: "Utah", country: "US", rating: "5", image: "arches.jpg", summary: "A landscape of contrasting colors, landforms and textures")
bryce_canyon = Park.create(airport_id: slc.id, name: "Bryce Canyon", state: "Utah", country: "US", rating: "4", image: "bryce.jpg", summary: "Archetypal hoodoo_iferous terrain")
yellowstone = Park.create(airport_id: jac.id, name: "Yellowstone", state: "Wyoming", country: "US", rating: "5", image: "yellowstone.jpg", summary: "Best park")
yosemite = Park.create(airport_id: sfo.id, name: "Yosemite", state: "California", country: "US", rating: "4", image: "yosemite.jpg", summary: "World Heritage Site")
sequoia = Park.create(airport_id: sfo.id, name: "Sequoia", state: "California", country: "US", rating: "4", image: "sequoia.jpg", summary: "Giant sequoia trees")


# Create the features
puts "Creating features..."
hiking = Feature.create(activity: "Hiking")
camping = Feature.create(activity: "Camping")
boating = Feature.create(activity: "Boating")
fishing = Feature.create(activity: "Fishing")
sightseeing = Feature.create(activity: "Sightseeing")
skiing = Feature.create(activity: "Skiing")

puts "Creating parkfeatures..."

# Create the roles for Arches
Parkfeature.create(park_id: arches.id, feature_id: hiking.id)
Parkfeature.create(park_id: arches.id, feature_id: camping.id)
Parkfeature.create(park_id: arches.id, feature_id: sightseeing.id)

# Create the roles for Bryce Canyon
Parkfeature.create(park_id: bryce_canyon.id, feature_id: hiking.id)
Parkfeature.create(park_id: bryce_canyon.id, feature_id: camping.id)
Parkfeature.create(park_id: bryce_canyon.id, feature_id: sightseeing.id)

# Create the roles for Yellowstone
Parkfeature.create(park_id: yellowstone.id, feature_id: hiking.id)
Parkfeature.create(park_id: yellowstone.id, feature_id: camping.id)
Parkfeature.create(park_id: yellowstone.id, feature_id: boating.id)
Parkfeature.create(park_id: yellowstone.id, feature_id: fishing.id)
Parkfeature.create(park_id: yellowstone.id, feature_id: sightseeing.id)

# Create the roles for Yosemite
Parkfeature.create(park_id: yosemite.id, feature_id: hiking.id)
Parkfeature.create(park_id: yosemite.id, feature_id: camping.id)
Parkfeature.create(park_id: yosemite.id, feature_id: sightseeing.id)
Parkfeature.create(park_id: yosemite.id, feature_id: skiing.id)

# Create the roles for Sequoia
Parkfeature.create(park_id: sequoia.id, feature_id: hiking.id)
Parkfeature.create(park_id: sequoia.id, feature_id: camping.id)
Parkfeature.create(park_id: sequoia.id, feature_id: sightseeing.id)


puts "There are now #{Park.count} parks, #{Feature.count} features, and #{Parkfeature.count} parkfeatures in the database."
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
