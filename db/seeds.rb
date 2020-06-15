

User.delete_all
Rapper.delete_all
Lyric.delete_all
Battle.delete_all


r1 = Rapper.create(name: "Kanye", bio: "Who isn't kanye?", hometown:'Chicago, IL', isboss: false, hp:100)
r3 = Rapper.create(name: "Tyler The Creator", bio:"OFWGKTA", hometown:"Ladera Heights, CA", isboss: false, hp:100 )
r4 = Rapper.create(name: "J.Cole", bio:"Dreamville", hometown: "Fayetteville, NC", isboss: false, hp:100)

r2 = Rapper.create(name: "Jay-Z", bio:"21-time GRAMMY award-winner", hometown:'Brooklyn', isboss: true, hp:100)


u1 = User.create(artist_id: r1.id, username: "Danny", password: "d", badges:'wind' )

b1 = Battle.create(user_id: r1.id, boss_id: r2.id, winner_id: u1.id)


# Boss Lyrics
l4=Lyric.create(text:"\"That same building today is worth twenty-five million. Guess how I'm feelin'? ____\"", answer:"dumbo",song:"The Story of O.J.", rapper_id: r2.id)
l5=Lyric.create(text:"\"I sell ice in the winter, I sell fire in hell I am a hustler baby, I’ll sell water to a _____\"", answer:"well",song:"The Hustler", rapper_id: r2.id)
l6 = Lyric.create(text:"\"Get, that, dirt off your _____\"", answer:"shoulder",song:"Dirt Off Your Shoulder\"", rapper_id: r2.id)


# UserLyrics
  # Kanye
l1 = Lyric.create(text:"\"I know I act a fool, but I promise you I'm going back to _____\"",  answer:"school", song: "Hey Mama", rapper_id: r1.id)
l2 = Lyric.create(text:"\"couldn’t afford the car so she named her daughter _____\" ", answer:"alexis", song: "All Falls Down",rapper_id: r1.id)
l3 = Lyric.create(text:"\"The plan was to drink until the pain over, but what’s worse, the pain or the _____ ?\"", answer:"hangover", song: "Dark Fantasy",rapper_id: r1.id)
  # Tyler 
l7 = Lyric.create(text:"\"I’m a _____, you ain’t ever been the man\"", answer:"businessman", song:"Telephone Calls", rapper_id: r3.id)
l8 = Lyric.create(text:"\"Next line will have ‘em like ‘Whoa' / I’ve been _____ white boys since 2004\"", answer:"kissing", song:"Where This Flower Blooms", rapper_id: r3.id)
l9 = Lyric.create(text:"\"I'm a f***ing walking _______, no I'm not\"", answer:"paradox", song:"Yonkers", rapper_id: r3.id)
  #J.Cole
l10 = Lyric.create(text:"\"Tonight is what you make it, take it do not waste it. Take a shot you're not _____...\"", answer:"wasted", song:"Is She Gon Pop", rapper_id: r4.id)
l11 = Lyric.create(text:"\"You're the one that was trying to keep me way down. But like the _____ know you know I found my way back round\"", answer:"sun", song:"Crooked Smile", rapper_id: r4.id)
l12 = Lyric.create(text:"\"I stacked a few M's like my last name was _____. My life is too crazy, no actor could play me.\"", answer:"shady", song:"KOD", rapper_id: r4.id)

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