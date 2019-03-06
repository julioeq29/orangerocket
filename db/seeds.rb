# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "---------------------------------------------------------"
puts "---------------Starting seeding process------------------"
puts "---------------------------------------------------------"

puts "---------------------------------------------------------"
puts "-------------------DESTYROYING STUFF---------------------"
puts "---------------------------------------------------------"


puts "destroying tags"
Tag.destroy_all

puts "destroying questions"
Question.destroy_all

puts "destroying users"
User.destroy_all

puts "destroying categories"
Category.destroy_all

puts "destroying answers"
Answer.destroy_all



# ---------------------  USERS  ---------------------
puts "---------------------------------------------------------"
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
puts "creating categories"

category = Category.create!(
  name: "Food & Cooking"
  )
category.remote_photo_url = "https://images.pexels.com/photos/5938/food-salad-healthy-lunch.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Travel & Commute"
  )
category.remote_photo_url = "https://images.pexels.com/photos/1453960/pexels-photo-1453960.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Energy"
  )
category.remote_photo_url = "https://images.pexels.com/photos/243053/pexels-photo-243053.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Waste & Recycling"
  )
category.remote_photo_url = "https://images.pexels.com/photos/1933386/pexels-photo-1933386.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Politics"
  )
category.remote_photo_url = "https://images.pexels.com/photos/919109/pexels-photo-919109.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Technology"
  )
category.remote_photo_url = "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Shopping & Fashion"
  )
category.remote_photo_url = "https://images.pexels.com/photos/1345082/pexels-photo-1345082.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "House & Building"
  )
category.remote_photo_url = "https://images.pexels.com/photos/302186/pexels-photo-302186.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Lifestyle"
  )
category.remote_photo_url = "https://images.pexels.com/photos/310983/pexels-photo-310983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Activism"
  )
category.remote_photo_url = "https://images.pexels.com/photos/1799249/pexels-photo-1799249.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Climate Change"
  )
category.remote_photo_url = "https://images.pexels.com/photos/221012/pexels-photo-221012.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

puts "categories created"
puts "---------------------------------------------------------"



# ---------------------  TAGS  ----------------------
puts "---------------------------------------------------------"
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
  category_id: 3,
  content: "How convenient is to install solar panels on my roof (I live in South Spain)?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 3,
  content: "Can you recommenend Renewable Energy suppliers in London?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Waste & Recycling -------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 4,
  content: "What does the different numbers under the plastic bottles mean?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 4,
  content: "I live in London, does it really help if I sort the trash out before putting it on the bin?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Politics -------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 5,
  content: "What is the New Green Deal that is being pushed by the Democrats in the US?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 5,
  content: "Which EU political party has the greenest credentials ahead of the EU 2019 elections?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Technology ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 6,
  content: "What is the energy consumption of a single blockchain transaction?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 6,
  content: "Where does all the eWaste end up?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Shopping & Fashion ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 7,
  content: "How many liters of water are used to produce a single cotton t-shirt?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 7,
  content: "Where in London can I donate clothes and make sure will be used and not resold?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: House & Building ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 8,
  content: "Is the Nest thermostat a real money-saver? Or will I end up paying +£200 on a gadget?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 8,
  content: "Does installing a heat pump saves much money? I live in South Italy and the investment seems quite high",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Lifestyle ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 9,
  content: "Any good tips on Green Living books?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 9,
  content: "Is buying an electric vehicle a game changer? I am worried about the autonomy (range in km)",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Activism ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 10,
  content: "Can someone please explain the Youth Strikes for Climate movement and why pupils are striking from school?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 10,
  content: "Any recommendations like Climate Change Vs Capitalism by Naomi Klein books?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Climate Change ------------
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 11,
  content: "What are the consequences of not not staying within the 2deg Celcius?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category_id: 11,
  content: "What are the 5 main sources of CO2 emissions globally?",
  upvote: (0..100).to_a.sample
  )



# -----------------  ANSWERS  --------------------
puts "---------------------------------------------------------"
puts "creating questions"

Answer.create!(
  user_id: (1..4).to_a.sample,
  question_id: 1,
  content: "Changing dietary patterns could save $1 trillion annually by preventing health care costs and lost productivity. That figure balloons to as much as $30 trillion annually when also considering the economic value of lost life. And that doesn’t even include the economic benefits of avoiding devastating extreme weather events that could result from climate change.",
  upvote: (0..100).to_a.sample
  )

Answer.create!(
  user_id: (1..4).to_a.sample,
  question_id: 1,
  content: "Placing a dollar value on the benefits of the vegetarian diet could play a significant role in public policy on these issues, according Springmann. Policymakers often conduct cost-benefit analyses before implementing new rules and the new research could provide them with a starting point for accounting for the economic benefits of policies to wean the world off meat.",
  upvote: (0..100).to_a.sample
  )

Answer.create!(
  user_id: (1..4).to_a.sample,
  question_id: 1,
  content: "The environmental impacts of a dietary shift could be just as dramatic, according to the researchers. Livestock alone account for more than 14% of global greenhouse gas emissions, and by 2050 the food sector could account for half if cuts are implemented in other sectors along the lines that countries have committed to doing. A vegan or vegetarian diet could cut those emissions by 70% and 63%, respectively.",
  upvote: (0..100).to_a.sample
  )

Answer.create!(
  user_id: (1..4).to_a.sample,
  question_id: 1,
  content: "Scientists at Loma Linda University found out that vegan diets contribute 47% less to the greenhouse emissions than other diets. This happens for two main reasons: First, in order to feed farm animals, we need to grow cereals and create pastures. 66% of deforestation in Central and South America is destined to animal feed crops and pastures, and more than 70% of grain grown in Canada are used to feed livestock. A reduction in the consumption of animal food could have a great impact in reducing deforestation, not to mention that the land currently destined to growing crops for animal feed could grow food for human consumption, contributing to a reduction of world hunger as well.",
  upvote: (0..100).to_a.sample
  )

puts "answers created"
puts "---------------------------------------------------------"


puts "---------------------------------------------------------"
puts "-----------Seeding process done, play Now!---------------"
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"





