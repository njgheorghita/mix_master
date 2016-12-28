# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# http://www.thetoptens.com/electronic-tracks/
# http://www.laweekly.com/music/the-20-best-dance-music-tracks-in-history-6251507/2
# last fm - https://www.youtube.com/watch?v=hLgbeJcnvIU
# http://mixmag.net/read/what-is-the-greatest-dance-track-of-all-time-features
# https://www.buzzfeed.com/ericbudiantot/101-best-most-popular-and-most-influential-electr-73mt
# google search for best electronic songs of all time
# http://www.complex.com/music/2013/08/the-15-best-songs-from-the-electronica-era/underworld-born-slippy-nuxx
# https://www.theguardian.com/music/2014/oct/22/annie-mac-top-10-dance-tracks

deadmau5 = Artist.create(artist_name: "Deadmau5", artist_image_path: "http://kingofwallpapers.com/deadmau5/deadmau5-004.jpg")
first = Song.create(title:"Strobe", artist_id: deadmau5.id, youtube: "https://www.youtube.com/watch?v=tKi9Z-f6qX4")
avicii = Artist.create(artist_name: "Avicii", artist_image_path: "http://www.billboard.com/files/styles/article_main_image/public/media/avicii-press-photo-alex-wessely-650-430.jpg")
levels = Song.create(title:"Levels", artist_id: avicii.id, youtube: "https://www.youtube.com/watch?v=_ovdm2yX4MA")
daft = Artist.create(artist_name: "Daft Punk", artist_image_path: "http://www.factmag.com/wp-content/uploads/2016/01/DaftPunk0116.jpg")
harder_better = Song.create(title:"Harder, Better, Faster, Stronger", artist_id: daft.id, youtube: "https://www.youtube.com/watch?v=gAjR4_CbPpQ")
zedd = Artist.create(artist_name: "Zedd", artist_image_path: "https://geo-media.beatport.com/image/9603010.jpg")
fourth = Song.create(title:"Spectrum", artist_id: zedd.id, youtube: "https://www.youtube.com/watch?v=IsuVMdnF8A0")
martin = Artist.create(artist_name: "Martin Garrix", artist_image_path: "https://geo-media.beatport.com/image/9094633.jpg")
animals = Song.create(title:"Animals", artist_id: martin.id, youtube: "https://www.youtube.com/watch?v=gCYcHz2k5x0")
around = Song.create(title:"Around The World", artist_id: daft.id, youtube: "https://www.youtube.com/watch?v=yca6UsllwYs")
seventh = Song.create(title:"Fade Into Darkness", artist_id: avicii.id, youtube: "https://www.youtube.com/watch?v=KQYzF84xocw")
skrillex = Artist.create(artist_name: "Skrillex", artist_image_path: "http://runthetrap.com/wp-content/uploads/2015/09/skrillex2-6.26.2015.jpg")
scary = Song.create(title:"Scary Monsters and Nice Sprites", artist_id: skrillex.id, youtube: "https://www.youtube.com/watch?v=WSeNSzJ2-Jw")
ninth = Song.create(title:"Wake Me Up", artist_id: avicii.id, youtube: "https://www.youtube.com/watch?v=IcrbM1l_BoI")
ingrosso = Artist.create(artist_name: "Ingrosso & Alesso", artist_image_path: "http://www.beatmyday.com/wp-content/uploads/2012/08/sebastian-ingrosso-alesso.jpeg")
tenth = Song.create(title:"Calling (Lose My Mind)", artist_id: ingrosso.id, youtube: "https://www.youtube.com/watch?v=9G1I16gJBvU")
Playlist.create(name:"The Top Tens", song_ids:[first.id, levels.id, harder_better.id, fourth.id, animals.id, around.id, seventh.id, scary.id, ninth.id, tenth.id])

marshall = Artist.create(artist_name: "Marshall Jefferson", artist_image_path: "http://www.deejaybooking.com/wp-content/uploads/2014/02/marshall_jefferson_google4.jpg")
first = Song.create(title:"Move Your Body (The House Music Anthem)", artist_id: marshall.id, youtube: "https://www.youtube.com/watch?v=QAR8cq5Bl94")
stardust = Artist.create(artist_name: "Stardust", artist_image_path: "http://www.djdmac.com/blog/wp-content/uploads/2011/11/stardust.jpeg")
sounds_better = Song.create(title:"Music Sounds Better With You", artist_id: stardust.id, youtube: "https://www.youtube.com/watch?v=bwv-3cM2pVk")
paperclip = Artist.create(artist_name: "Paperclip People", artist_image_path: "https://staging-thump-images.vice.com/images/2015/1/27/carl-craig-requiem-for-detroit-techno-interview-1422360826101.jpg")
third = Song.create(title:"Throw", artist_id: paperclip.id, youtube: "https://www.youtube.com/watch?v=wUwS9jqbId0")
innercity = Artist.create(artist_name: "Inner City", artist_image_path: "https://i.ytimg.com/vi/0H3uD1wyrR4/hqdefault.jpg")
fourth = Song.create(title:"Big Fun", artist_id: innercity.id, youtube: "https://www.youtube.com/watch?v=omfiVkkJ1OU")
underworld = Artist.create(artist_name: "Underworld", artist_image_path: "http://images.popmatters.com/blog_art/u/underworld-1996-promo-650.jpg")
born_slippy = Song.create(title:"Born Slippy", artist_id: underworld.id, youtube: "https://www.youtube.com/watch?v=iTFrCbQGyvM")
secondphase = Artist.create(artist_name: "Second Phase", artist_image_path: "https://cdn.shopify.com/s/files/1/0223/4339/products/image_230813_670221b7-5d24-422a-aaf7-8686a76e5ef3_grande.jpeg?v=1459413907")
sixth = Song.create(title:"Mentasm", artist_id: secondphase.id, youtube: "https://www.youtube.com/watch?v=u8VY5dxq5CU")
cybotron = Artist.create(artist_name: "Cybotron", artist_image_path: "https://i.ytimg.com/vi/PpHrRP_nSQg/hqdefault.jpg")
seventh = Song.create(title:"Clear", artist_id: cybotron.id, youtube: "https://www.youtube.com/watch?v=fGqiBFqWCTU")
hardrive = Artist.create(artist_name: "Hardrive", artist_image_path: "http://images.junostatic.com/full/CS2588496-02A-BIG.jpg")
eighth = Song.create(title:"Deep Inside", artist_id: hardrive.id, youtube: "https://www.youtube.com/watch?v=KRH05Nq_JI0")
orbital = Artist.create(artist_name: "Orbital", artist_image_path: "http://dt7v1i9vyp3mf.cloudfront.net/styles/news_large/s3/imagelibrary/c/classic4-1206.jpg?UF9R5kHw5DOJlXiwH2k_W_KVEfoi9OIE=&itok=HItmSIQV")
ninth = Song.create(title:"Chime", artist_id: orbital., youtube: "https://www.youtube.com/watch?v=HXU5Rxc3vBQ")
rhythim = Artist.create(artist_name: "Rhythim is Rhythim", artist_image_path: "https://lastfm-img2.akamaized.net/i/u/avatar170s/48aeaee3dbfa45b1a7e6abb29407c032.jpg")
tenth = Song.create(title:"Strings Of Life", artist_id: rhythim.id, youtube: "https://www.youtube.com/watch?v=2GnFvdaEl2Q")
Playlist.create(name:"LA Weekly", song_ids:[first.id, sounds_better.id, third.id, fourth.id, born_slippy.id, sixth.id, seventh.id, eighth.id, ninth.id, tenth.id])

justice = Artist.create(artist_name: "Justice", artist_image_path: "http://www.projectrevolver.org/wp-content/uploads/2013/03/JUSTICE.jpg")
first = Song.create(title:"D.A.N.C.E.", artist_id: justice.id, youtube: "https://www.youtube.com/watch?v=sy1dYFGkPUE")
empire = Artist.create(artist_name: "Empire Of The Sun", artist_image_path: "http://static.spin.com/files/130618-empire-of-the-sun.jpg")
second = Song.create(title:"Walking On A Dream", artist_id: empire.id, youtube: "https://www.youtube.com/watch?v=eimgRedLkkU")
awol = Artist.create(artist_name: " AWOLNATION", artist_image_path: "http://showsigoto.com/wp-content/uploads/2013/03/awolnation-live-review.jpg")
third = Song.create(title:"Sail", artist_id: awol.id, youtube: "https://www.youtube.com/watch?v=JaAWdljhD5o")
owl = Artist.create(artist_name: "Owl City", artist_image_path: "http://www.sonicscoop.com/wp-content/uploads/2015/06/Press-Photo-1-1024x683.jpg")
fourth = Song.create(title:"Fireflies", artist_id: owl.id, youtube: "https://www.youtube.com/watch?v=psuRGfAaju4")
passion = Artist.create(artist_name: "Passion Pit", artist_image_path: "https://s3.amazonaws.com/rapgenius/passion-pit.jpg")
fifth = Song.create(title:"Sleepyhead", artist_id: passion.id, youtube: "https://www.youtube.com/watch?v=T0RvPYRRRbE")
# sixth = harder_better
m83 = Artist.create(artist_name: "M83", artist_image_path: "http://images2.mtv.com/uri/mgid:uma:artist:mtv.com:1694056?width=1200&height=900")
seventh = Song.create(title:"Midnight City", artist_id: m83.id, youtube: "https://www.youtube.com/watch?v=dX3k_QDnzHE")
mgmt = Artist.create(artist_name: "MGMT", artist_image_path: "http://3.bp.blogspot.com/-cXYBqzWuhn0/ToFv1UKa9cI/AAAAAAAABqc/Cc9vTB7Qmiw/s1600/mgmt-blackbook-cover-may-2010-02.jpg")
eighth = Song.create(title:"Electric Feel", artist_id: mgmt.id, youtube: "https://www.youtube.com/watch?v=MmZexg8sxyk")
ninth = Song.create(title:"Time To Pretend", artist_id: mgmt.id, youtube: "https://www.youtube.com/watch?v=B9dSYgd5Elk")
tenth = Song.create(title:"Kids", artist_id: mgmt.id, youtube: "https://www.youtube.com/watch?v=fe4EK4HSPkI")
Playlist.create(name:"Last FM", song_ids:[first.id, second.id, third.id, fourth.id, fifth.id, harder_better.id, seventh.id, eighth.id, ninth.id, tenth.id])

fatboy = Artist.create(artist_name: "Fatboy Slim", artist_image_path: "http://edmsauce.wpengine.netdna-cdn.com/wp-content/uploads/2014/03/Fatboy-Slim-To-Create-World-Cup-Soundtrack-with-Dirtybird-Producers.jpg")
first = Song.create(title:"Right Here, Right Now", artist_id: fatboy.id, youtube: "https://www.youtube.com/watch?v=F7jSp2xmmEE")
sasha = Artist.create(artist_name: "Sasha", artist_image_path: "http://mixing.dj/wp-content/uploads/2013/05/Sasha.jpg")
second = Song.create(title:"Xpander", artist_id: sasha.id, youtube: "https://www.youtube.com/watch?v=z-87KHrwXQc")
pvd = Artist.create(artist_name: "PVD", artist_image_path: "http://www.digitaldjtips.com/wp-content/uploads/2013/02/paul-van-dyk2.jpg")
third = Song.create(title:"For An Angel", artist_id: pvd.id, youtube: "https://www.youtube.com/watch?v=lnRmwhaoDU8")
plastik = Artist.create(artist_name: "Plastikman", artist_image_path: "https://files.list.co.uk/images/2011/11/08/plastikman.jpg")
fourth = Song.create(title:"Spastik", artist_id: plastik.id, youtube: "https://www.youtube.com/watch?v=Nsct-e-HVE0")
# sounds_better
faithless = Artist.create(artist_name: "Faithless", artist_image_path: "https://i.ytimg.com/vi/ZHVJVQzHv5Q/hqdefault.jpg")
insomnia = Song.create(title:"Insomnia", artist_id: faithless.id, youtube: "https://www.youtube.com/watch?v=ZHVJVQzHv5Q")
# born_slippy seventh
prodigy = Artist.create(artist_name: "The Prodigy", artist_image_path: "http://tbilisijazz.com/wp-content/uploads/2016/04/the-prodigy-4.jpg")
eighth = Song.create(title:"Smack My Bitch Up", artist_id: prodigy.id, youtube: "https://www.youtube.com/watch?v=2DPF_pWIy3w")
tiesto = Artist.create(artist_name: "Tiesto", artist_image_path: "http://exoduslasvegas.com/wp-content/uploads/2016/11/Tiesto-1.jpg")
adagio = Song.create(title:"Adagio For Strings", artist_id: tiesto.id, youtube: "https://www.youtube.com/watch?v=8tIgN7eICn4")
one_more_time = Song.create(title:"One More Time", artist_id: daft.id, youtube: "https://www.youtube.com/watch?v=FGBhQbmPwH8")
Playlist.create(name:"MixMag", song_ids:[first.id, second.id, third.id, fourth.id, sounds_better.id, insomnia.id, born_slippy.id, eighth.id, adagio.id, one_more_time.id])

get_lucky = Song.create(title:"Get Lucky", artist_id: daft.id, youtube: "https://www.youtube.com/watch?v=5NV6Rdv1a3I")
# animals marti garrix second
# levels third
shm = Artist.create(artist_name: "Swedish House Mafia", artist_image_path: "http://theneptunes.org/wp-content/uploads/2009/10/Swedish-House-Mafia.jpg")
fourth = Song.create(title:"One", artist_id: shm.id, youtube: "https://www.youtube.com/watch?v=PkQ5rEJaTmk">)
# music sounds better with you 
# born_slippy sixth
praise_you = Song.create(title:"Praise You", artist_id: fatboy.id, youtube: "https://www.youtube.com/watch?v=ruAi4VBoBSM")
# adagio eighth
robin = Artist.create(artist_name: "Robin S.", artist_image_path: "http://mediaserver-cont-dc6-2-v4v6.pandora.com/images/public/amz/4/2/8/2/5014524102824_500W_500H.jpg")
ninth = Song.create(title:"Show Me Love", artist_id: robin.id, youtube: "https://www.youtube.com/watch?v=Ps2Jc28tQrw")
# one more time
Playlist.create(name:"BuzzFeed", song_ids:[get_lucky.id, animals.id, levels.id, fourth.id, sounds_better.id, born_slippy.id, praise_you.id, adagio.id, ninth.id, one_more_time.id])

first = Song.create(title:"I remember", artist_id: deadmau5.id, youtube: "https://www.youtube.com/watch?v=zK1mLIeXwsQ")
chemical = Artist.create(artist_name: "The Chemical Brothers", artist_image_path: "http://jcket.com/stoneyroads/files/2015/07/800x500-centre/the-chemical-bros-blue.jpg")
block = Song.create(title:"Block Rockin' Beats", artist_id: chemical.id, youtube: "https://www.youtube.com/watch?v=iTxOKsyZ0Lw")
calvin = Artist.create(artist_name: "Calvin Harris", artist_image_path: "https://a4-images.myspacecdn.com/images04/1/2b69174db2ee4fc494f2667ca48f2820/600x600.jpg")
# scary fourth
fifth = Song.create(title:"We Found Love ft. Rihanna", artist_id: calvin.id, youtube: "https://www.youtube.com/watch?v=tg00YEETFzg")
# sixth
firestarter = Song.create(title:"Firestarter", artist_id: prodigy.id, youtube: "https://www.youtube.com/watch?v=wmin5WkOuPw")
Playlist.create(name:"Google", song_ids:[first.id, block.id, get_lucky.id, scary.id, fifth.id, harder_better.id, firestarter.id, around.id, born_slippy.id, insomnia.id])

goldie = Artist.create(artist_name: "Goldie", artist_image_path: "http://cps-static.rovicorp.com/3/JPG_500/MI0001/342/MI0001342877.jpg?partner=allrovi.com")
innercity = Song.create(title:"Inner City Life", artist_id: goldie.id, youtube: "https://www.youtube.com/watch?v=lx9-fjlh7Y4")
moby = Artist.create(artist_name: "Moby", artist_image_path: "http://p.fod4.com/p/channels/legacy/profile/1328180/f52a2695fceff6e43179053f701c5d16.")
seventh = Song.create(title:"Porcelain", artist_id: moby.id, youtube: "https://www.youtube.com/watch?v=IJWlBfo5Oj0")
aphex = Artist.create(artist_name: "Aphex Twin", artist_image_path: "http://www.electronicbeats.net/app/uploads/2016/01/MI0000123384.jpg")
eighth = Song.create(title:"Come To Daddy", artist_id: aphex.id, youtube: "https://www.youtube.com/watch?v=h-9UvrLyj3k")
roni = Artist.create(artist_name: "Roni Size / Reprazent", artist_image_path: "https://thumbnailer.mixcloud.com/unsafe/318x318/extaudio/7/e/d/7/868d-bf3a-4c86-b88d-a5b82f229041.jpg")
ninth = Song.create(title:"Brown Paper Bag", artist_id: roni.id, youtube: "https://www.youtube.com/watch?v=cwI0gbGEyuI")
Playlist.create(name:"Complex", song_ids:[around.id, firestarter.id, innercity.id, born_slippy.id, block.id, praise_you.id, seventh.id, eighth.id, ninth.id, insomnia.id])

massive = Artist.create(artist_name: "Massive Attack", artist_image_path: "http://images.popmatters.com/blog_art/t/take_it_there-650.jpg")
first = Song.create(title:"Unfinished Symphony", artist_id: massive.id, youtube: "https://www.youtube.com/watch?v=ZWmrfgj0MZI")
portishead = Artist.create(artist_name: "Portishead", artist_image_path: "http://www.alwaysontherun.net/portisheadtop0.jpg")
second = Song.create(title:"Roads", artist_id: portishead.id, youtube: "https://www.youtube.com/watch?v=WQYsGWh_vpE")
leftfield = Artist.create(artist_name: "Leftfield", artist_image_path: "http://img2-ak.lst.fm/i/u/300x300/c90616001a2244bcb2b16a9d916b9f2d.jpg")
third = Song.create(title:"Space Shanty", artist_id: leftfield.id, youtube: "https://www.youtube.com/watch?v=2fvimphEeN4")
fifth = Song.create(title:"Burnin", artist_id: daft.id, youtube: "https://www.youtube.com/watch?v=DBHipNYuAZk")
rolando = Artist.create(artist_name: "DJ Rolando", artist_image_path: "https://www.xlr8r.com/wp-content/uploads/files/features/frontpage_images/rolando052311.jpg")
sixth = Song.create(title:"Knights of the Jaguar", artist_id: rolando.id, youtube: "https://www.youtube.com/watch?v=EdqROEmZ74k")
tribe = Artist.create(artist_name: "A Tribe Called Quest", artist_image_path: "https://nyoobserver.files.wordpress.com/2016/11/screen-shot-2016-09-19-at-10-35-43-am11.png?w=635")
seventh = Song.create(title:"Electric Relaxation", artist_id: tribe.id, youtube: "https://www.youtube.com/watch?v=WHRnvjCkTsw")
for_hero = Artist.create(artist_name: "4Hero", artist_image_path: "https://pbs.twimg.com/profile_images/2936944453/47877ffd5b2b15cdc5775b8fa95d0f87_400x400.jpeg")
eighth = Song.create(title:"I Am the Black Gold of the Sun (Nuyorican Soul Remix)", artist_id: for_hero.id, youtube: "https://www.youtube.com/watch?v=aYBT90PFmoM")
ninth = Song.create(title:"Waters Of Nazareth", artist_id: justice.id, youtube: "https://www.youtube.com/watch?v=1SEgoi7kjw8")
skream = Artist.create(artist_name: "Skream", artist_image_path: "https://djmag.com/sites/default/files/storyimages/SKREAM_4.jpg")
tenth = Song.create(title:"In For The Kill (La Roux Remix)", artist_id: skream.id, youtube: "https://www.youtube.com/watch?v=_2XmLcnYSwQ")
Playlist.create(name:"Annie Mac", song_ids:[first.id, second.id, third.id, innercity.id, fifth.id, sixth.id, seventh.id, eighth.id, ninth.id, tenth.id])
