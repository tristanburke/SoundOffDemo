# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

songs = [{:title => 'Father Stretch My Hands Pt. 2', :artist => 'Kanye West', :image => 'father', :mp3 => ''},
         {:title => 'Oh Sheit It\'s X', :artist => 'Thundercat', :image => '', :mp3 => 'oh'},
         {:title => 'Baby You\'re Out', :artist => 'Mac DeMarco', :image => '', :mp3 => 'baby'}
]

songs.each do |song|
  Song.create!(song)
end

