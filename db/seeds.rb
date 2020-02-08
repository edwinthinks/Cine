# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
in_time = Movie.create(name: "In time",duration: 109, synopsis: "Un hombre es acusado de asesinato y debe encontrar la forma de acabar con un sistema en donde el tiempo es dinero, permitiéndole a los ricos vivir para siempre, mientras los pobres ruegan por cada minuto de vida.",genre: "Suspenso, Ciencia ficcion", trailer: "https://www.youtube.com/embed/fdadZ_KrZVw", image: "https://www.youtube.com/embed/fdadZ_KrZVw",big_image: "https://image.tmdb.org/t/p/w1280/W2qS7hjH5Ic5a90a1HU2UC6MDw.jpg")
    #Movie.create([{name: "",duration: ,synopsis: "", genre: "", trailer: "", image: "", big_image: ""])
    #Movie.create([{name: "",duration: ,synopsis: "", genre: "", trailer: "", image: "", big_image: ""])
    #Movie.create([{name: "",duration: ,synopsis: "", genre: "", trailer: "", image: "", big_image: ""])
    #Movie.create([{name: "",duration: ,synopsis: "", genre: "", trailer: "", image: "", big_image: ""])
    #Movie.create([{name: "",duration: ,synopsis: "", genre: "", trailer: "", image: "", big_image: ""])

# Creates 20 events /w 20 movies associated with it
FactoryBot.create_list(:event, 20)

