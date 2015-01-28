# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Park.delete_all
Park_feature.delete_all
Feature.delete_all
User.delete_all
Review.delete_all

# Create the movies
puts "Creating parks..."
arches = Park.create(name: "Arches", state: "Utah", country: "US", rating: "5", summary: "A landscape of contrasting colors, landforms and textures")
bryce_canyon = Park.create(name: "Bryce Canyon", state: "Utah", country: "US", rating: "4", summary: "Archetypal hoodoo_iferous terrain")
yellowstone = Park.create(name: "Yellowstone", state: "Wyoming", country: "US", rating: "5", summary: "Best park")
yosemite = Park.create(name: "Yosemite", state: "California", country: "US", rating: "4", summary: "World Heritage Site")
sequoia = Park.create(name: "Sequoia", state: "California", country: "US", rating: "4", summary: "Giant sequoia trees")


# Create the features
puts "Creating features..."
hiking = Feature.create(activity: "Hiking")
camping = Feature.create(activity: "Camping")
boating = Feature.create(activity: "Boating")
fishing = Feature.create(activity: "Fishing")
sightseeing = Feature.create(activity: "Sightseeing")
skiing = Feature.create(activity: "Skiing")

puts "Creating park_features..."

# Create the roles for Arches
Park_feature.create(park_id: arches.id, feature_id: hiking.id)
Park_feature.create(park_id: arches.id, feature_id: camping.id)
Park_feature.create(park_id: arches.id, feature_id: sightseeing.id)

# Create the roles for Bryce Canyon
Park_feature.create(park_id: bryce_canyon.id, feature_id: hiking.id)
Park_feature.create(park_id: bryce_canyon.id, feature_id: camping.id)
Park_feature.create(park_id: bryce_canyon.id, feature_id: sightseeing.id)

# Create the roles for Yellowstone
Park_feature.create(park_id: yellowstone.id, feature_id: hiking.id)
Park_feature.create(park_id: yellowstone.id, feature_id: camping.id)
Park_feature.create(park_id: yellowstone.id, feature_id: boating.id)
Park_feature.create(park_id: yellowstone.id, feature_id: fishing.id)
Park_feature.create(park_id: yellowstone.id, feature_id: sightseeing.id)

# Create the roles for Yosemite
Park_feature.create(park_id: yosemite.id, feature_id: hiking.id)
Park_feature.create(park_id: yosemite.id, feature_id: camping.id)
Park_feature.create(park_id: yosemite.id, feature_id: sightseeing.id)
Park_feature.create(park_id: yosemite.id, feature_id: skiing.id)

# Create the roles for Sequoia
Park_feature.create(park_id: sequoia.id, feature_id: hiking.id)
Park_feature.create(park_id: sequoia.id, feature_id: camping.id)
Park_feature.create(park_id: sequoia.id, feature_id: sightseeing.id)


puts "There are now #{Park.count} parks, #{Feature.count} features, and #{Park_feature.count} park_features in the database."
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
