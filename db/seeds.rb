

User.delete_all
Rapper.delete_all
Lyric.delete_all
Battle.delete_all


r1 = Rapper.create(name: "Kanye", bio: "Who isn't kanye?", hometown:'Chicago, IL', isboss: false, lives:3, gif:"/Gifs/kanye.gif" )
r3 = Rapper.create(name: "Tyler The Creator", bio:"OFWGKTA", hometown:"Ladera Heights, CA", isboss: false, lives:3, gif:"/Gifs/tyler.gif" )
r4 = Rapper.create(name: "J.Cole", bio:"Dreamville", hometown: "Fayetteville, NC", isboss: false, lives:3, gif:"/Gifs/jcole.gif")
r5 = Rapper.create(name: "Kendrick", bio:"Kendrick Lamar Duckworth", hometown: 'Compton,CA', isboss: false, lives:3, gif:"/Gifs/kendrick.gif" )
r6 = Rapper.create(name: "Eminem", bio: "Saturday through sunday, monday.", hometown: "Detroit,MI", isboss: false, lives:3, gif:"/Gifs/eminem.gif")
r7 = Rapper.create(name: "DaBaby", bio: "Going baby on baby", hometown: "Charlotte,NC", isboss: false, lives:3, gif:"/Gifs/dababy.gif")

r2 = Rapper.create(name: "Jay-Z", bio:"21-time GRAMMY award-winner", hometown:'Brooklyn', isboss: true, lives:3, badge: 'Brooklyn', gif:"/Gifs/goat.gif")



u1 = User.create(artist_id: r1.id, username: "Danny", password: "d", badges:"")

b1 = Battle.create(user_id: r1.id, boss_id: r2.id, winner_id: u1.id)


# Boss Lyrics
l9 = Lyric.create(text:"\"Dear _____, I’m writing' this with no pen or a pad and I’m signing it, ya uncle, ya best friend, and ya dad\"", answer:"nephew",song:"Anything", rapper_id: r2.id)
l18 = Lyric.create(text:"\"That same building today is worth twenty-five million. Guess how I'm feelin'? ____", answer:"dumbo",song:"The Story of O.J.", rapper_id: r2.id)
l17 = Lyric.create(text:"\"I sell ice in the winter, I sell fire in hell I am a hustler baby, I’ll sell water to a _____", answer:"well",song:"The Hustler", rapper_id: r2.id)
l16 = Lyric.create(text:"\"Get, that, dirt off your _____\"", answer:"shoulder",song:"Dirt Off Your Shoulder", rapper_id: r2.id)
l8 = Lyric.create(text:"\"But these streets raised me _____. Product of my environment, nothing can save me.\"", answer:"crazy",song:"Anything", rapper_id: r2.id)
l7 = Lyric.create(text:"\"Nobody _____ like you, you design yourself.\"", answer:"built",song:"A Dream", rapper_id: r2.id)

# l4=Lyric.create(text:"\"That same building today is worth twenty-five million. Guess how I'm feelin'? ____\"", answer:"dumbo",song:"The Story of O.J.", rapper_id: r5.id)
# l5=Lyric.create(text:"\"I sell ice in the winter, I sell fire in hell I am a hustler baby, I’ll sell water to a _____\"", answer:"well",song:"The Hustler", rapper_id: r5.id)
# l6 = Lyric.create(text:"\"Get, that, dirt off your _____\"", answer:"shoulder",song:"Dirt Off Your Shoulder\"", rapper_id: r5.id) 

# UserLyrics

  # Kanye
l1 = Lyric.create(text:"\"I know I act a fool, but I promise you I'm going back to _____\"",  answer:"school", song: "Hey Mama", rapper_id: r1.id)
l2 = Lyric.create(text:"\"couldn’t afford the car so she named her daughter _____\" ", answer:"alexis", song: "All Falls Down",rapper_id: r1.id)
l3 = Lyric.create(text:"\"Everybody sayin' what's not for him. Everything I'm not, made me _______ I am\"", answer:"everything", song: "Everything I Am",rapper_id: r1.id)
l4 = Lyric.create(text:"\"What if Kanye made a song about Kanye called: \"I Miss The Old Kanye\" man that would be so _____\"", answer:"kanye", song: "I Love Kanye",rapper_id: r1.id)
l5 = Lyric.create(text:"\"She got me stressin', singin' melodies. For her, I swear I'd catch a felony. Oh, _________\"", answer:"penelope", song: "Mixed Personalities",rapper_id: r1.id)
l6 = Lyric.create(text:"\"The plan was to drink until the pain over, but what’s worse, the pain or the _____ ?\"", answer:"hangover", song: "Dark Fantasy",rapper_id: r1.id)  
# Tyler 
l13 = Lyric.create(text:"\"I’m a _____, you ain’t ever been the man\"", answer:"businessman", song:"Telephone Calls", rapper_id: r3.id)
l14 = Lyric.create(text:"\"Next line will have ‘em like ‘Whoa' / I’ve been _____ white boys since 2004\"", answer:"kissing", song:"Where This Flower Blooms", rapper_id: r3.id)
l15 = Lyric.create(text:"\"I'm a f***ing walking _______, no I'm not\"", answer:"paradox", song:"Yonkers", rapper_id: r3.id)
  #J.Cole
l10 = Lyric.create(text:"\"Tonight is what you make it, take it do not waste it. Take a shot you're not _____...\"", answer:"wasted", song:"Is She Gon Pop", rapper_id: r4.id)
l11 = Lyric.create(text:"\"You're the one that was trying to keep me way down. But like the _____ know you know I found my way back round\"", answer:"sun", song:"Crooked Smile", rapper_id: r4.id)
l12 = Lyric.create(text:"\"I stacked a few M's like my last name was _____. My life is too crazy, no actor could play me.\"", answer:"shady", song:"KOD", rapper_id: r4.id)
# Kendrick
l19 = Lyric.create(text:"\"Homie, you f***d up but if God got us then we gon' be _____\"",  answer:"alright", song: "Alright", rapper_id: r5.id)
#Eminem
l20 = Lyric.create(text:"\"Will the real _____ Shady please stand up?\"",  answer:"slim", song: "The Real Slim Shady", rapper_id: r6.id)
l21 = Lyric.create(text:"\"Pack in the mail, it's gone (Uh) She like how I smell, _______ (Yeah)\"",  answer:"cologne", song: "Suge", rapper_id: r7.id)
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