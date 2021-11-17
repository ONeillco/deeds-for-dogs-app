puts "🌱 Seeding spices..."

dingo = Dog.create(name: "Dingo")
riley = Dog.create(name: "Riley")
jude = Dog.create(name: "Jude")
spike = Dog.create(name: "Spike")
snopp = Dog.create(name: "Snoop")


hike = Deed.create(action: "Hike", category: "Exercise", dog_id: dingo.id)
lunch = Deed.create(action: "Lunch", category: "Eating", dog_id: dingo.id)
swim = Deed.create(action: "Swim", category: "Exercise", dog_id: dingo.id)
bed_time = Deed.create(action: "Sleep", category: "Relaxation", dog_id: jude.id)
walk = Deed.create(action: "Walk", category: "Exercise", dog_id: riley.id)
lunch = Deed.create(action: "Lunch", category: "Eating", dog_id: spike.id)

puts "✅ Done seeding!"
