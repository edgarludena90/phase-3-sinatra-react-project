puts "Deleting Movie/Rating data..."
Movie.destroy_all
Rating.destroy_all

puts "🌱 Seeding movies..."

m1 = Movie.create(title:"John Wick 1",genre:"action",director:"Chad Stahelski",year:2014)
m2 = Movie.create(title:"JohnW Wick chapter 2",genre:"action",director:"Chad Stahelski",year:2017)
m3 = Movie.create(title:"Dead Pool",genre:"action",director:"Tim Miller",year:2018)
m4 = Movie.create(title:"Meet The Fockers",genre:"comedy",director:"Jay Roach",year:2004)
m5 = Movie.create(title:"21 jump street",genre:"comedy",director:"Chris Miller",year:2012)
m6 = Movie.create(title:"The NoteBool",genre:"romantic",director:"Nick Cassavetes",year:2004)

puts "🌱 Seeding rating.... "

r1 = Rating.create(name:"Donald trump", movie_id:m1.id, rating:4)
r2 = Rating.create(name:"Edgar Ludena", movie_id:m2.id, rating:9)
r3 = Rating.create(name:"Sandy Zhang", movie_id:m3.id, rating:5)
r4 = Rating.create(name:"Robert Who", movie_id:m4.id, rating:7)
r5 = Rating.create(name:"Andrew Schultz", movie_id:m5.id, rating:8)
r6 = Rating.create(name:"Pickle Rick", movie_id:m1.id, rating:7)

puts "🌱 Seeding theaters... "

 Theater.create(theater_name:"AMC",movie_id:m1.id, rating_id:r1.id)
 Theater.create(theater_name:"LOEWS",movie_id:m2.id, rating_id:r2.id)
 Theater.create(theater_name:"FANDANGO",movie_id:m3.id, rating_id:r3.id)
 Theater.create(theater_name:"POPS THEATER",movie_id:m4.id, rating_id:r4.id)
 Theater.create(theater_name:"BEST THEATER",movie_id:m5.id, rating_id:r5.id)
 Theater.create(theater_name:"MOMS THEATER",movie_id:m1.id, rating_id:r1.id)

puts "✅ Done seeding!"
