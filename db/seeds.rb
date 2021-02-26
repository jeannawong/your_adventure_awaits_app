# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS SEED
User.create!(first_name: "Jeanna", last_name: "Wong", email: "jeanna@email.com", phone: "123-456-7890", username: "jwong", password: "password", admin: true)
User.create!(first_name: "Alex", last_name: "Pammer", email: "alex@email.com", phone: "908-765-4321", username: "apammer", password: "password", admin: true)
User.create!(first_name: "Maddie", last_name: "Ryden", email: "maddie@email.com", phone: "765-098-2534", username: "mryden", password: "password", admin: false)
User.create!(first_name: "Maggie", last_name: "Chung", email: "maggie@email.com", phone: "465-924-1752", username: "mchung", password: "password", admin: false)

#JOURNEYS SEED
Journey.create!(name: "Couples Journey", price: 40)
Journey.create!(name: "Family Journey", price: 40)
Journey.create!(name: "Friends Journey", price: 40)
Journey.create!(name: "Solo Journey", price: 40)

#IMAGES SEED
Image.create!(url: nil, journey_id: 1)
Image.create!(url: nil, journey_id: 2)
Image.create!(url: nil, journey_id: 3)
Image.create!(url: nil, journey_id: 4)

#ADVENTURES SEED
Adventure.create!(title: "Penny for Your Thoughts", description: "Go to a store and each of you pick out a journal or notebook of your liking. Use cutouts from magazines, patches, decals, stickers, stamps, pins, etc. on the exterior of your notebook to make it your own. Everything you write in this journal is intended for your partner to read anytime they want. So fill it weekly with love notes, encouraging messages, date ideas, things you're learning about them, etc.", cost: "5-40", time_of_day: "Any", duration: "1 to 2 hrs", memory_post: "What a wonderful memory.", memory_image: nil, journey_id: 1, accepted: true)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 1, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 1, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 1, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 1, accepted: false)
Adventure.create!(title: "Watch Me Whip", description: "Get ready to laugh - it's time for a lip sync battle between Team Parents and Team Kiddos! The two teams get to take turns picking songs that the other team has to perform lip-sync on the spot, whether or not they actually know the words! Bonus: Record the battle with your phone and post it to social media, taking a poll to see who won!", cost: "0", time_of_day: "Any", duration: "30 to 60 min", memory_post: "I am so happy to be making new memories in our home.", memory_image: nil, journey_id: 2, accepted: true)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 2, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 2, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 2, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 2, accepted: false)
Adventure.create!(title: "Tug of Yoke", description: "Get some rope, it's time for a good ol'-fashioned tug-of-war with a twist! Set up your tug-of-war on a slip 'n' slide. Get some contractors plastic from the hardware store and lay that down as an alternative. For extra fun apply water and some dish soap. Lastly, crack open several eggs at the center of the tug-of-war so that the losers get pulled into a pile of eggs!", cost: "10", time_of_day: "Any", duration: "1 hr", memory_post: "We laughed until our bellies hurted!", memory_image: nil, journey_id: 3, accepted: true)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 3, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 3, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 3, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 3, accepted: false)
Adventure.create!(title: "The Great Indoors", description: "Collect all the supplies needed for making s'mores, including canned methanol gel for fire. Next, gather all the blankets and pillows that you can find. Spend some time building your perfect (or not-so-perfect) blanket fort! After you've built your blanket fort, make s'mores and watch a movie. Google 'top 10 adventure movies' and pick from this list!", cost: "5-10", time_of_day: "Evening", duration: "3 to 4 hrs", memory_post: "It was a very cozy experience.", memory_image: nil, journey_id: 4, accepted: true)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 4, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 4, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 4, accepted: false)
Adventure.create!(title: nil, description: nil, cost: nil, time_of_day: nil, duration: nil, memory_post: nil, memory_image: nil, journey_id: 4, accepted: false)

#HELPFUL_HINTS SEED
HelpfulHint.create!(hint: "Meal", description: "Make sure to come with a hungry stomach! This symbol indicates that the challenge will involve eating a full meal.", hint_symbol: nil)
HelpfulHint.create!(hint: "Snacks", description: "Be prepared to enjoy a prepared or purchased snack at some point during the challenge.", hint_symbol: nil)
HelpfulHint.create!(hint: "Mess", description: "Sometimes adventures get messy, but it's worth it! The adventures with this symbol will likely result in needing to wash your clothes afterward.", hint_symbol: nil)
HelpfulHint.create!(hint: "Get Wet", description: "Prepare for the splash zone! These activities might get wet, so dress appropriately.", hint_symbol: nil)
HelpfulHint.create!(hint: "Supplies", description: "Unless you have a large stock of specific foods or random craft supplies at your home, the challenges with this icon may require you to get some essential items from the store.", hint_symbol: nil)
HelpfulHint.create!(hint: "Active", description: "These adventures will have a higher level of physical exertion. Nothing will be too hard, but they might make you sweat or run around a bit more than the others.", hint_symbol: nil)
HelpfulHint.create!(hint: "Indoors", description: "Takes place indoors...good ones for a rainy or cold day.", hint_symbol: nil)
HelpfulHint.create!(hint: "Outdoors", description: "Best completed outdoors; wait for a nice day to take this on.", hint_symbol: nil)
HelpfulHint.create!(hint: "Home", description: "Check for this icon if you want to do an adventure that is completed in or around your house.", hint_symbol: nil)
HelpfulHint.create!(hint: "Away", description: "You will probably need to go somewhere other than your house to complete this adventure. (It may be a park, lake, ice cream shop, etc.)", hint_symbol: nil)
HelpfulHint.create!(hint: "Daylight", description: "You'll want to do these during daylight. Similar to the outdoor advenures, this symbol wil help you decide what tiem of day you should complete this activity.", hint_symbol: nil)
HelpfulHint.create!(hint: "Nighttime", description: "Try these adventures after dark! They are most fun after the sun has gone down.", hint_symbol: nil)
HelpfulHint.create!(hint: "Filming", description: "These adventures need either a photo or video camera to complete. Of course your smartphone will work!", hint_symbol: nil)
HelpfulHint.create!(hint: "Babysitter", description: "Many of the adventures can be done with kids around, but these will be quite difficult to accomplish without a babysitter. Check for this indicator if you have a sitter lined up for the night.", hint_symbol: nil)
HelpfulHint.create!(hint: "Plan Ahead", description: "This adventure will require a little planning, scratch off at least 48hrs ahead of time.", hint_symbol: nil)

#ADVENTURES_HELPFUL_HINTS SEED (join table adventures and helpful_hints)
AdventureHelpfulHint.create!(adventure_id: 1, helpful_hint_id: 5)
AdventureHelpfulHint.create!(adventure_id: 1, helpful_hint_id: 7)
AdventureHelpfulHint.create!(adventure_id: 6, helpful_hint_id: 7)
AdventureHelpfulHint.create!(adventure_id: 6, helpful_hint_id: 13)
AdventureHelpfulHint.create!(adventure_id: 11, helpful_hint_id: 5)
AdventureHelpfulHint.create!(adventure_id: 11, helpful_hint_id: 9)
AdventureHelpfulHint.create!(adventure_id: 11, helpful_hint_id: 8)
AdventureHelpfulHint.create!(adventure_id: 11, helpful_hint_id: 3)
AdventureHelpfulHint.create!(adventure_id: 16, helpful_hint_id: 2)
AdventureHelpfulHint.create!(adventure_id: 16, helpful_hint_id: 5)
AdventureHelpfulHint.create!(adventure_id: 16, helpful_hint_id: 7)
AdventureHelpfulHint.create!(adventure_id: 16, helpful_hint_id: 12)
