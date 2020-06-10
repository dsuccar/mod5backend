# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Rapper.delete_all
Lyric.delete_all
Battle.delete_all


r1 = Rapper.create(name: "Kanye", bio: "Who isn't kanye?", hometown:'Chicago', isboss: false, hp:100)
r2 = Rapper.create(name: "Jay-Z", bio: " 21-time GRAMMY award-winner", hometown:'Brooklyn', isboss: true, hp:100)
# r3 = Rapper.create(name: "Tyler The Creator", bio: "OFWGKTA", isboss:true)a

u1 = User.create(artist_id: r1.id, username: "Danny", badges:'wind' )

b1 = Battle.create(user_id: u1.id, boss_id: r2.id, winner_id: u1.id)
# b1 = Battle.create(user_id: u1.id, rapper_id: r1.id, winner: u1.id )
l1 = Lyric.create(text:"I know I act a fool, but I promise you I'm going back to _____",  answer:"school", song: "Hey Mama", rapper_id: r1.id)
l2 = Lyric.create(text:"couldn’t afford the car so she named her daughter _____", answer:"alexis", song: "All Falls Down",rapper_id: r1.id)
l3 = Lyric.create(text:"The plan was to drink until the pain over, but what’s worse, the pain or the _____ ? ", answer:"hangover", song: "Dark Fantasy",rapper_id: r1.id)

l4=Lyric.create(text:"123", answer:"4",song:"Numbers", rapper_id: r2.id)
l5=Lyric.create(text:"abc", answer:"d",song:"Alph", rapper_id: r2.id)
l6 = Lyric.create(text:"aeio", answer:"u",song:"sometimes Y", rapper_id: r2.id)

# resp1 = RestClient.get 'https://public.opendatasoft.com/api/records/1.0/search/?dataset=rapworld&q=&rows=447&refine.categories=rapper'
# json1 = JSON.parse(resp1.body)
# rappers = json1["records"].each{|rapper| Rapper.create(name: rapper['fields']['name'], bio: rapper['fields']['bio_summary'], hometown: rapper['fields']['location_neighborhood'], hp: 100, isboss: false)}
# m1 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=1'
# m2 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=2'
# m3 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=3'
# m4 = RestClient.get 'https://api.themoviedb.org/3/movie/popular?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US&page=4'
# m1arr = JSON.parse(m1)["results"]
# m2arr = JSON.parse(m2)["results"]
# m3arr = JSON.parse(m3)["results"]
# m4arr = JSON.parse(m4)["results"]
# m1arr.each do |movie|
#     x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
#     resp = JSON.parse(x)
#     genres = []
#     resp["genres"].each {|x| genres << x["name"]}
#     Movie.create(
#         title: resp["title"],
#         backdrop_path: resp["backdrop_path"],
#         adult: resp["adult"],
#         overview: resp["overview"],
#         poster_path: resp["poster_path"],
#         release_date: resp["release_date"],
#         runtime: resp["runtime"],
#         imdb_id: resp["imdb_id"],
#         tagline: resp["tagline"],
#         original_language: resp["original_language"],
#         genres: genres,
#         tmdb_id: resp["id"]
#     )
# end
# m2arr.each do |movie|
#     x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
#     resp = JSON.parse(x)
#     genres = []
#     resp["genres"].each {|x| genres << x["name"]}
#     Movie.create(
#         title: resp["title"],
#         backdrop_path: resp["backdrop_path"],
#         adult: resp["adult"],
#         overview: resp["overview"],
#         poster_path: resp["poster_path"],
#         release_date: resp["release_date"],
#         runtime: resp["runtime"],
#         imdb_id: resp["imdb_id"],
#         tagline: resp["tagline"],
#         original_language: resp["original_language"],
#         genres: genres,
#         tmdb_id: resp["id"]
#     )
# end
# m3arr.each do |movie|
#     x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
#     resp = JSON.parse(x)
#     genres = []
#     resp["genres"].each {|x| genres << x["name"]}
#     Movie.create(
#         title: resp["title"],
#         backdrop_path: resp["backdrop_path"],
#         adult: resp["adult"],
#         overview: resp["overview"],
#         poster_path: resp["poster_path"],
#         release_date: resp["release_date"],
#         runtime: resp["runtime"],
#         imdb_id: resp["imdb_id"],
#         tagline: resp["tagline"],
#         original_language: resp["original_language"],
#         genres: genres,
#         tmdb_id: resp["id"]
#     )
# end
# m4arr.each do |movie|
#     x = RestClient.get "https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=b94d0b3b408ccf74d9f49bb39a64a13b&language=en-US"
#     resp = JSON.parse(x)
#     genres = []
#     resp["genres"].each {|x| genres << x["name"]}
#     Movie.create(
#         title: resp["title"],
#         backdrop_path: resp["backdrop_path"],
#         adult: resp["adult"],
#         overview: resp["overview"],
#         poster_path: resp["poster_path"],
#         release_date: resp["release_date"],
#         runtime: resp["runtime"],
#         imdb_id: resp["imdb_id"],
#         tagline: resp["tagline"],
#         original_language: resp["original_language"],
#         genres: genres,
#         tmdb_id: resp["id"]
#     )
# end