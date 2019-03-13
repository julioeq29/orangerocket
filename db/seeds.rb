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
  last_name: "lily",
  email: "l@l.com",
  password: "123456",
  location:"hoxton"
  )

User.create!(
  first_name: "gina",
  last_name: "gina",
  email: "g@g.com",
  password: "123456",
  location:"Peckham"
  )

User.create!(
  first_name: "edoardo",
  last_name: "edoardo",
  email: "e@e.com",
  password: "123456",
  location:"Boston"
  )

User.create!(
  first_name: "hector",
  last_name: "hector",
  email: "h@h.com",
  password: "123456",
  location:"Stratford"
  )

User.create!(
  first_name: "nurcan",
  last_name: "nurcan",
  email: "n@n.com",
  password: "123456",
  location:"San Francisco, US"
  )

puts "users created"
puts "---------------------------------------------------------"



# -----------------  CATEGORIES  --------------------
puts "---------------------------------------------------------"
puts "creating categories"

category = Category.create!(
  name: "Food & Cooking",
  name_nyt: "Food"
  )
category.remote_photo_url = "https://images.pexels.com/photos/5938/food-salad-healthy-lunch.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Travel & Commute",
  name_nyt: "Travel"
  )
category.remote_photo_url = "https://images.pexels.com/photos/1453960/pexels-photo-1453960.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Energy",
  name_nyt: "Energy"
  )
category.remote_photo_url = "https://images.pexels.com/photos/243053/pexels-photo-243053.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Waste & Recycling",
  name_nyt: ""
  )
category.remote_photo_url = "https://images.pexels.com/photos/1933386/pexels-photo-1933386.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Politics & Activism",
  name_nyt: ""
  )
category.remote_photo_url = "https://images.pexels.com/photos/919109/pexels-photo-919109.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Technology",
  name_nyt: "Technology"
  )
category.remote_photo_url = "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Shopping & Fashion",
  name_nyt: "Fashion"
  )
category.remote_photo_url = "https://images.pexels.com/photos/1345082/pexels-photo-1345082.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "House & Building",
  name_nyt: "House"
  )
category.remote_photo_url = "https://images.pexels.com/photos/302186/pexels-photo-302186.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Lifestyle",
  name_nyt: "Style"
  )
category.remote_photo_url = "https://images.pexels.com/photos/310983/pexels-photo-310983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

category = Category.create!(
  name: "Climate Change",
  name_nyt: "Style"
  )
category.remote_photo_url = "https://images.pexels.com/photos/221012/pexels-photo-221012.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
category.save

puts "categories created"
puts "---------------------------------------------------------"



# ---------------------  TAGS  ----------------------
puts "---------------------------------------------------------"
puts "creating tags"

# ----------  TAGS: Food & Cooking -------------
category_for_tag = Category.find_by_name("Food & Cooking")
array = ["vegan", "organic", "sustainable agriculture", "meat free", "gmo", "urban garden", "sustainable fisheries", "fertiliser"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Travel & Commute ------------
category_for_tag = Category.find_by_name("Travel & Commute")
array = ["sustainable transport", "emissions", "electric mobility", "electric cars", "fuel efficiency", "pollution free", "bike sharing"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Energy ----------------------
category_for_tag = Category.find_by_name("Energy")
array = ["emissions", "solar", "wind power", "renewable energy", "energy storage", "efficiency"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Waste & Recycling -------------
category_for_tag = Category.find_by_name("Waste & Recycling")
array = ["waste recycling", "food waste", "zero waste", "plastic pollution", "single use plastic", "recycling landfills"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Politics & Activism -------------
category_for_tag = Category.find_by_name("Politics & Activism")
array = ["climate activism", "new green deal", "environmental regulations", "climate paris agreement", "un ipcc", "climate deal"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Technology ------------
category_for_tag = Category.find_by_name("Technology")
array = ["planned obsolescence", "greenhouse gas", "global warming", "geoengineering", "renewable energy"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Shopping & Fashion ------------
category_for_tag = Category.find_by_name("Shopping & Fashion")
array = ["fast fashion", "eco friendly", "sustainable brands", "ethical brands", "sustainable fashion", "recycling clothes"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: House & Building ------------
category_for_tag = Category.find_by_name("House & Building")
array = ["recycling at home", "energy efficient", "sustainable materials", "passive cooling", "passive heating"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Lifestyle ------------
category_for_tag = Category.find_by_name("Lifestyle")
array = ["sustainability", "impact investment", "environment", "recycling", "fast fashion"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

# ---------  TAGS: Climate Change ------------
category_for_tag = Category.find_by_name("Climate Change")
array = ["climate change", "carbon emissions", "ice melting", "global temperature", "ocean warming", "ocean acidification", "methane", "ozone"]
array.each do |item|
  Tag.create!(
    category: category_for_tag,
    name: item
    )
end

puts "tags created"
puts "---------------------------------------------------------"



# -----------------  QUESTIONS  --------------------
puts "---------------------------------------------------------"
puts "creating questions"


# ----------  QUESTION: Food & Cooking -------------
category_for_tag = Category.find_by_name("Food & Cooking")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "How is veganism useful to combat climate change?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "What is the environmental impact of having a cup of coffee?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Travel & Commute ------------
category_for_tag = Category.find_by_name("Travel & Commute")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Route London - South of France, same price, Eurostar or a Plane?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Is diesel a really polluting fuel?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Energy ----------------------
category_for_tag = Category.find_by_name("Energy")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "How convenient is to install solar panels on my roof (I live in South Spain)?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Can you recommenend Renewable Energy suppliers in London?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Waste & Recycling -------------
category_for_tag = Category.find_by_name("Waste & Recycling")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "What does the different numbers under the plastic bottles mean?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
 category: category_for_tag,
  content: "I live in London, does it really help if I sort the trash out before putting it on the bin?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Politics -------------
category_for_tag = Category.find_by_name("Politics & Activism")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "What is the New Green Deal that is being pushed by the Democrats in the US?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Which EU political party has the greenest credentials ahead of the EU 2019 elections?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Can someone please explain the Youth Strikes for Climate movement and why pupils are striking from school?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Any recommendations like Climate Change Vs Capitalism by Naomi Klein books?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Technology ------------
category_for_tag = Category.find_by_name("Technology")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "What is the energy consumption of a single blockchain transaction?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Where does all the eWaste end up?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Shopping & Fashion ------------
category_for_tag = Category.find_by_name("Shopping & Fashion")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "How many liters of water are used to produce a single cotton t-shirt?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Where in London can I donate clothes and make sure will be used and not resold?",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: House & Building ------------
category_for_tag = Category.find_by_name("House & Building")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Is the Nest thermostat a real money-saver? Or will I end up paying +£200 on a gadget?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Does installing a heat pump saves much money? I live in South Italy and the investment seems quite high",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Lifestyle ------------
category_for_tag = Category.find_by_name("Lifestyle")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Any good tips on Green Living books?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "Is buying an electric vehicle a game changer? I am worried about the autonomy (range in km)",
  upvote: (0..100).to_a.sample
  )

# ---------  QUESTION: Climate Change ------------
category_for_tag = Category.find_by_name("Climate Change")
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
  content: "What are the consequences of not not staying within the 2deg Celcius?",
  upvote: (0..100).to_a.sample
  )
Question.create!(
  user_id: (1..4).to_a.sample,
  category: category_for_tag,
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





