# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts "Creating new flats"

flat = Flat.create!(
  name: 'Amplio apartamento & terraza en Recoleta!',
  address: 'Recoleta, Buenos Aires, Argentina',
  description: 'Luminoso y amplio apartamento de 57m2 con una gran terraza con parrilla como muy pocos alojamientos en Buenos Aires pueden ofrecer.
    Decorado con ilustraciones de los grandes íconos de la ciudad (Gardel, Caminito y muchos más)
    Su estancia en este cómodo y tranquilo departamento será la mejor bienvenida a la ciudad de Buenos Aires.',
  price_per_night: rand(850..1500),
  number_of_guests: rand(2..4)
)
puts "Created flat with id #{flat.id}"

flat = Flat.create!(
  name: 'Dpto Remodelado a estrenar en Recoleta',
  address: 'Recoleta, Buenos Aires, Argentina',
  description: 'Buenos Aires es romanticismo y pasión. Esta maravillosa ciudad combina la grandeza europea con la pasión latina. Sexy y viva, Buenos Aires se mete por debajo de tu piel. La cuna del tango, y como este mismo la ciudad es, captivante, seductora y repleta de energía . Puedes disfrutar de todo esto y mas. Departamento re modelado a nuevo a estrenar, con estilo eco-moderno dentro de un hotel, justo en el corazón de Rec',
  price_per_night: rand(850..1500),
  number_of_guests: rand(2..4)
)
puts "Created flat with id #{flat.id}"

flat = Flat.create!(
  name: 'Exclusive flat in the heart of Palermo Soho',
  address: 'Palermo, Buenos Aires, Argentina',
  description: 'Beautiful flat in the heart of the exclusive area of Palermo Soho. It has 1 double bed in the room and two single beds (sofa-bed) in the living room. The balcony is huge and has a very nice view of the city that you can appreciate in the pictures. Very bright and exclusive, Windows all over the property.',
  price_per_night: rand(850..1500),
  number_of_guests: rand(2..4)
)
puts "Created flat with id #{flat.id}"

flat = Flat.create!(
  name: 'Monoambiente Único en Buenos Aires',
  address: 'San Nicolás, Buenos Aires, Argentina',
  description: 'Te invito a disfrutar de este hermoso monoambiente, un espacio cálido y con detalles únicos. Totalmente equipado. Está ubicado a media cuadra de la Plaza del Congreso, a 3 cuadras de Av. Corrientes y a 6 cuadras de Av. 9 de Julio. Súper luminoso y acogedor. Ubicación estratégica, a pocas cuadras de los más importantes teatros, cines y restaurantes de la ciudad.',
  price_per_night: rand(850..1500),
  number_of_guests: rand(2..4)
)
puts "Created flat with id #{flat.id}"

flat = Flat.create!(
  name: 'Habitación privada en: departamento - Anfitrión: Mati & Cande',
  address: 'San Nicolás, Buenos Aires, Argentina',
  description: 'Enjoy your stay in this super comfortable bedroom connected with a spacious private living room with lots of natural light. Direct access to balcony and private stylish bathroom (outside the room). The room has a private open kitchen equipped with electric cooktop, kettle, fridge and washing machine. A dining area outside the room is also available for use.',
  price_per_night: rand(850..1500),
  number_of_guests: rand(2..4)
)
puts "Created flat with id #{flat.id}"

flat = Flat.create!(
  name: 'Departamento entero - Anfitrión: Valeria',
  address: 'Palermo, Buenos Aires, Argentina',
  description: 'Excelente departamento ubicado en PALERMO!! Súper equipado!! Cama KING SIZE, SMART TV, ropa de cama, toallas, cafetera, microondas, heladera, tostadora, pava eléctrica, utensilios de cocina, plancha y todo lo necesario para que te sientas como en tu casa!!.',
  price_per_night: rand(850..1500),
  number_of_guests: rand(2..4)
)
puts "Created flat with id #{flat.id}"
