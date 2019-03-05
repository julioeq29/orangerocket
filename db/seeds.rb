# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "---------------Starting seeding process------------------"
puts "---------------------------------------------------------"


# ---------------------  USERS  ---------------------
puts "---------------------------------------------------------"
puts "destroying users"
User.destroy_all
puts "creating users"

User.create!(
  first_name: "lily",
  email: "l@l",
  password: "123456",
  )

User.create!(
  first_name: "gina",
  email: "g@g",
  password: "123456",
  )

User.create!(
  first_name: "edoardo",
  email: "e@e",
  password: "123456",
  )

User.create!(
  first_name: "hector",
  email: "h@h",
  password: "123456",
  )

puts "users created"
puts "---------------------------------------------------------"



# -----------------  CATEGORIES  --------------------
puts "---------------------------------------------------------"
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
puts "---------------------------------------------------------"



# ---------------------  TAGS  ----------------------
puts "---------------------------------------------------------"
puts "destroying tags"
Tag.destroy_all
puts "creating tags"

# ----------  TAGS: Food & Cooking -------------
array = ["vegan", "sustainable farming", "green agriculture", "healthy", "sustainable fishing", "GMO", "local", "organic", "urban gardening", "diary", "land usage", "fair trade", "co2 emissions", "methane", "fertiliser"]
array.each do |item|
  Tag.create!(
    category_id: 1,
    name: item
    )
end

# ---------  TAGS: Travel & Commute ------------
array = ["fuel", "electric", "maritime", "effiency", "planes", "cars", "hydrogen", "autonomous vehicles", "emissions", "smart cities", "electric bike", "electric scooter", "pollution free", "smart planning"]
array.each do |item|
  Tag.create!(
    category_id: 2,
    name: item
    )
end

# ---------  TAGS: Energy ----------------------
array = ["efficiency", "solar", "green", "geothermal", "renewable", "hydro power", "save", "suppliers", "wind", "nuclear", "energy storage", "biofuel", "standby power"]
array.each do |item|
  Tag.create!(
    category_id: 3,
    name: item
    )
end

# ---------  TAGS: Waste & Recycling -------------
array = ["circular economy", "food waste", "composting", "reuse", "reduce", "packaging", "repair", "single use", "technology", "community projects", "plastics"]
array.each do |item|
  Tag.create!(
    category_id: 4,
    name: item
    )
end

# ---------  TAGS: Politics -------------
array = ["social economy", "laws", "political party", "environmental regulations", "protection", "public programs", "agreements", "trade", "international organisations", "green tax"]
array.each do |item|
  Tag.create!(
    category_id: 5,
    name: item
    )
end

# ---------  TAGS: Technology ------------
array = ["app", "solar", "battery", "planned obsolescence", "repair", "durability", "green", "blockchain", "supply chain", "internet of things", "smart metering", "geo engineering", "technological breakthrough"]
array.each do |item|
  Tag.create!(
    category_id: 6,
    name: item
    )
end

# ---------  TAGS: Shopping & Fashion ------------
array = ["inseason", "used products", "reusable shopping bag", "eco friendly", "container", "impulsive shopping", "shopless", "plastic pollution", "organic materials", "sustainable design", "sustainable clothes", "sustainable brands", "consumerism"]
array.each do |item|
  Tag.create!(
    category_id: 7,
    name: item
    )
end

# ---------  TAGS: House & Building ------------
array = ["lightning", "led", "recycled material", "solar energy", "heat pumps", "energy efficiency", "VOC", "renewable energy", "concrete", "cement", "co2 emissions", "passive heating", "passive cooling", "pollution"]
array.each do |item|
  Tag.create!(
    category_id: 8,
    name: item
    )
end

# ---------  TAGS: Lifestyle ------------
array = ["recycle", "reduce", "reuse", "waste", "plastic", "compost", "public transport", "consumerism", "sustinable", "climate friendly", "biking"]
array.each do |item|
  Tag.create!(
    category_id: 9,
    name: item
    )
end

# ---------  TAGS: Activism ------------
array = ["eco activism", "social engagement", "pollution", "anthropocene", "man made climate change", "sustainability", "social movement", "anti environmentalism", "wild life reserves"]
array.each do |item|
  Tag.create!(
    category_id: 10,
    name: item
    )
end

# ---------  TAGS: Climate Change ------------
array = ["greenhouse gases", "climate", "temperature raise", "atmosphere", "co2 concentration", "carbon dioxide", "methane", "carbon emissions", "wind", "pollution", "GHG", "global warming", "over population"]
array.each do |item|
  Tag.create!(
    category_id: 11,
    name: item
    )
end


puts "tags created"
puts "---------------------------------------------------------"



# -----------------  QUESTIONS  --------------------
puts "---------------------------------------------------------"
puts "destroying questions"
Question.destroy_all
puts "creating questions"


# ----------  QUESTION: Food & Cooking -------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 1,
  content: "How is veganism useful to combat climate change?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 1,
  content: "What is the environmental impact of having a cup of coffee?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Travel & Commute ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Route London - South of France, same price, Eurostar or a Plane?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Is diesel a really polluting fuel?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Energy ----------------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "How convenient is to install solar panels on my roof (I live in South Spain)?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Can you recommenend Renewable Energy suppliers in London?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Waste & Recycling -------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "What does the different numbers under the plastic bottles mean?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "I live in London, does it really help if I sort the trash out before putting it on the bin?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Politics -------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "What is the New Green Deal that is being pushed by the Democrats in the US?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Which EU political party has the greenest credentials ahead of the EU 2019 elections?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Technology ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "What is the energy consumption of a single blockchain transaction?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Where does all the eWaste end up?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Shopping & Fashion ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "How many liters of water are used to produce a single cotton t-shirt?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Where in London can I donate clothes and make sure will be used and not resold?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: House & Building ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Is the Nest thermostat a real money-saver? Or will I end up paying +£200 on a gadget?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Does installing a heat pump saves much money? I live in South Italy and the investment seems quite high",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Lifestyle ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Any good tips on Green Living books?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Is buying an electric vehicle a game changer? I am worried about the autonomy (range in km)",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Activism ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Can someone please explain the Youth Strikes for Climate movement and why pupils are striking from school?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "Any recommendations like Climate Change Vs Capitalism by Naomi Klein books?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Climate Change ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "What are the consequences of not not staying within the 2deg Celcius?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 2,
  content: "What are the 5 main sources of CO2 emissions globally?",
  upvote: (0..100).to_a.sample
  )

puts "questions created"
puts "---------------------------------------------------------"


puts "---------------------------------------------------------"
puts "-----------Seeding process done, play Now!---------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"





