# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

blah = User.create(:email => "blah@blah.com")
fizz = User.create(:email => "fizz@fizz.org")
buzz = User.create(:email => "buzz@buzz.net")


couch = Item.create(:title => "Ugly couch",
                    :summary => "A couch",
                    :price => "100.0",
                    :location => "Unit 1",
                    :sold => false,
                    :category => "furniture",
                    :user => fizz)

umbrella = Item.create(:title => "Umbrella",
                       :summary => "No more rain",
                       :price => "10.25",
                       :location => "Unit 3",
                       :sold => false,
                       :category => "misc",
                       :user => fizz)

phone = Item.create(:title => "Old phone",
                    :summary => "A phone",
                    :price => "999.99",
                    :location => "Foothill",
                    :sold => true,
                    :category => "electronics",
                    :user => buzz)

Comment.create(:contents => "This is hideous!", :item => couch)
Comment.create(:contents => "Wow that's old", :item => phone)
Comment.create(:contents => "Doesn't even work but whatever I'll buy it", :item => phone)
Comment.create(:contents => "Has a hole in it", :item => umbrella)

Photo.create(:url => "http://ak1.ostkcdn.com/images/products/P13318481L.jpg", :item => couch)
Photo.create(:url => "http://cdn.shopify.com/s/files/1/0227/0033/products/Davek_Umbrella_Elite_Open_Straight_1024x1024.jpg?v=1381446908", :item => umbrella)
