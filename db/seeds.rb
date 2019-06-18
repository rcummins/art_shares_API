# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {username: 'Renata'},
    {username: 'Jen'},
    {username: 'Skyler'},
    {username: 'Lance'}
])

Artwork.create([
    {title: 'Rainbow', 
        image_url: 'https://en.wikipedia.org/wiki/Rainbow#/media/File:Double-alaskan-rainbow.jpg',
        artist_id: 1},
    {title: 'Woman with a Parasol',
        image_url: 'https://en.wikipedia.org/wiki/Claude_Monet#/media/File:Claude_Monet_-_Woman_with_a_Parasol_-_Madame_Monet_and_Her_Son_-_Google_Art_Project.jpg',
        artist_id: 1},
    { title: 'The Scream',
        image_url: 'https://en.wikipedia.org/wiki/The_Scream#/media/File:Edvard_Munch,_1893,_The_Scream,_oil,_tempera_and_pastel_on_cardboard,_91_x_73_cm,_National_Gallery_of_Norway.jpg',
        artist_id: 2},
    
])

ArtworkShare.create([
    {artwork_id: 1, viewer_id: 2},
    {artwork_id: 1, viewer_id: 3},
    {artwork_id: 1, viewer_id: 4},
    {artwork_id: 2, viewer_id: 2},
    {artwork_id: 3, viewer_id: 1},
    {artwork_id: 3, viewer_id: 3},
    {artwork_id: 3, viewer_id: 4},
])