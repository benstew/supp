# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Build Muscle', description: 'Increase muscle mass'},
  { name: 'Lose Weight' , description: 'Decrease overall weight'},
  { name:'Have More Energy' , description: 'Gain more energy to tackly your day'},
  { name: 'Become Stronger', description: 'Improve ability to lift more weight'}
])

goals = Goal.create([{ name: 'Lose Belly Fat', description: 'Lose weight around core and midsection to better expose abdominal muscles', category_id: 2 },
  { name: 'Have Bigger Biceps', description: 'Increase the size of my biceps', category_id: 1 },
  { name: 'Drink Less Coffee', description: 'Rely more on other natural alternatives for energt', category_id: 3 },
  { name: 'Improve Bench Press', description: 'Increase my bench press max', category_id: 4 },
  { name: 'Summer Shred', description: 'Lose weight for beach season', category_id: 3 },
  { name: 'Killer Quads', description: 'Increase the size of my quads', category_id: 1 },
  { name: 'Workout Harder Naturally', description: 'Have more energy in my morning workouts', category_id: 3 },
  { name: 'Higher Vertical Jump', description: 'Improve my vertical jump', category_id:4  }
])

products = Product.create([{ name: 'Whey Protein', description: 'A whey based protein', price: 30 , serving_size: 20 , product_size: 2, family: 'Protein', goal_id: 2 },
  { name: 'Casein Protein', description: 'A casein based protein', price: 40 , serving_size: 20 , product_size: 2 , family: 'Protein', goal_id: 2 },
  { name: 'Soy Protein', description: 'A soy based protein', price: 50, serving_size: 20, product_size: 2 , family: 'Protein', goal_id: 6 },
  { name: 'Cellucor', description: 'Lose weight faster', price: 20 , serving_size: 10 , product_size: 1 , family: 'Weight Loss', goal_id: 1 },
  { name: 'GNC Total Lean', description: 'An appetite control product', price: 15 , serving_size: 10 , product_size:2 , family: 'Appetite Control', goal_id: 1},
  { name: 'Hydroxycut', description: 'The most hardcore weight loss supplement', price: 10 , serving_size: 3, product_size:1 , family: 'Thermogenics', goal_id: 4 },
  { name: 'C4', description: 'A prewokrout supplement', price: 25 , serving_size: 12, product_size: 1 , family: 'Pre-Workout', goal_id: 6 },
  { name: 'Creator', description: 'A creatine based workout supplement', price: 20, serving_size:5 , product_size:3 , family: 'Creatine', goal_id:2 },
  { name: 'Gold Standard Whey', description: 'A whey based preotein', price:30 , serving_size:2 , product_size:2 , family: 'Protein', goal_id:6 },
  { name: 'Fish Oil', description: 'A fish oil based supplement', price:8 , serving_size:10 , product_size:1 , family: 'Omegas', goal_id:7 },
  { name: 'Multi Vitamin', description: 'A multivitamin', price:15 , serving_size:10 , product_size:1 , family: 'Vitamin', goal_id:3 }
])
