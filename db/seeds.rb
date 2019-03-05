# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "---------------Starting seeding process------------------"



# -----------------  CATEGORIES  --------------------
puts "destroying categories"
Category.destroy_all
puts "creating categories"
Category.create!(name: "Food & Cooking")
Category.create!(name: "Travel & Commute")
Category.create!(name: "Energy")
Category.create!(name: "Waste & Recycling")
Category.create!(name: "Politics")
Category.create!(name: "Technology")
Category.create!(name: "Shopping & Fashion")
Category.create!(name: "House & Building")
Category.create!(name: "Lifestyle")
Category.create!(name: "Activism")
Category.create!(name: "Climate Change")
puts "categories created"



# ---------------------  TAGS  ----------------------
puts "destroying tags"
Tag.destroy_all
puts "creating tags"

# ----------  TAGS: Food & Cooking -------------
array = ["vegan", "farming", "agriculture", "healthy", "fishery", "GMO", "local", "organic", "urban gardening", "diary", "land usage", "fair trade"]

Tag.create!(
  category_id: 1,
  name: "vegan"
  )

# ---------  TAGS: Travel & Commute ------------
array = ["fuel", "electric", "maritime", "effiency", "planes", "cars", "hydrogen", "autonoumous vehicles", "emissions", "cities", "bikes", "scooters"]

# ---------  TAGS: Energy ----------------------
array = ["efficiency", "solar", "green", "geothermal", "renewable", "hydro power", "save", "suppliers", "wind", "nuclear", "energy storage", "biofuel", "standby power"]

# ---------  TAGS: Waste & Recycling -------------
# ---------  TAGS: Politics -------------
# ---------  TAGS: Technology ------------
# ---------  TAGS: Shopping & Fashion ------------
# ---------  TAGS: House & Building ------------
# ---------  TAGS: Lifestyle ------------
# ---------  TAGS: Activism ------------
# ---------  TAGS: Climate Change ------------



# -----------------  QUESTIONS  --------------------
puts "destroying questions"
Question.destroy_all
puts "creating questions"

# ----------  QUESTION: Food & Cooking -------------
Question.create!(
  user_id: 1,
  category_id: 1,
  content: "How is veganism useful to combat climate change?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 1,
  content: "What is the environmental impact of having a cup of coffee?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Travel & Commute ------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "Route London - South of France, same price, Eurostar or a Plane?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Is diesel a really polluting fuel?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Energy ----------------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "How convenient is to install solar panels on my roof (I live in South Spain)?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Can you recommenend Renewable Energy suppliers in London?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Waste & Recycling -------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "What does the different numbers under the plastic bottles mean?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "I live in London, does it really help if I sort the trash out before putting it on the bin?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Politics -------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "What is the New Green Deal that is being pushed by the Democrats in the US?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Which EU political party has the greenest credentials ahead of the EU 2019 elections?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Technology ------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "What is the energy consumption of a single blockchain transaction?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Where does all the eWaste end up?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Shopping & Fashion ------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "How many liters of water are used to produce a single cotton t-shirt?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Where in London can I donate clothes and make sure will be used and not resold?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: House & Building ------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "Is the Nest thermostat a real money-saver? Or will I end up paying +£200 on a gadget?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Does installing a heat pump saves much money? I live in South Italy and the investment seems quite high",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Lifestyle ------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "Any good tips on Green Living books?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Is buying an electric vehicle a game changer? I am worried about the autonomy (range in km)",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Activism ------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "Can someone please explain the Youth Strikes for Climate movement and why pupils are striking from school?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "Any recommendations like Climate Change Vs Capitalism by Naomi Klein books?",
  upvote: (0..100).sample
  )

# ---------  QUESTION: Climate Change ------------
Question.create!(
  user_id: 1,
  category_id: 2,
  content: "What are the consequences of not not staying within the 2deg Celcius?",
  upvote: (0..100).sample
  )
Question.create!(
  user_id: 2,
  category_id: 2,
  content: "What are the 5 main sources of CO2 emissions globally?",
  upvote: (0..100).sample
  )









