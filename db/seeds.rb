# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

states = [
  { name: 'Aguascalientes' }, # 1
  { name: 'Baja California' }, # 2
  { name: 'Baja California Sur' }, # 3
  { name: 'Colima' } # 4
]

municipalities = [
  { name: 'Aguascalientes', state_id: 1 }, # 1
  { name: 'Asientos', state_id: 1 }, # 2    # Aguascalientes
  { name: 'Calvillo', state_id: 1 }, # 3

  { name: 'Ensenada', state_id: 2 }, # 4
  { name: 'Mexicali', state_id: 2 }, # 5    # Baja California
  { name: 'Playas de Rosarito', state_id: 2 }, # 6

  { name: 'Comondu', state_id: 3 }, # 7
  { name: 'La Paz', state_id: 3 }, # 8      # Baja California Sur
  { name: 'Loreto', state_id: 3 }, # 9

  { name: 'Armeria', state_id: 4 }, # 10
  { name: 'Colima', state_id: 4 }, # 11     # Colima
  { name: 'Comala', state_id: 4 } # 12
]

settlements = [
  { name: 'Zona Centro', municipality_id: 1 }, # 1
  { name: 'Colinas del Rio', municipality_id: 1 }, # 2      #Aguascalientes

  { name: 'Las Adjuntas', municipality_id: 2 }, # 3
  { name: 'La Tinajuela', municipality_id: 2 }, # 4         # Asientos

  { name: 'Calvillo Centro', municipality_id: 3 }, # 5
  { name: 'El Mirador', municipality_id: 3 }, # 6           # Calvillo

  { name: 'Francisco Zarco', municipality_id: 4 }, # 7
  { name: 'San Antonio Necua', municipality_id: 4 }, # 8    # Ensenada

  { name: 'La Rioja', municipality_id: 5 }, # 9
  { name: 'Los Manantiales', municipality_id: 5 }, # 10     # Mexicali

  { name: 'Rosarito Centro', municipality_id: 6 }, # 11
  { name: 'Quinta del Mar', municipality_id: 6 }, # 12      # Playas de Rosarito

  { name: 'Zona Centro', municipality_id: 7 }, # 13
  { name: 'Cerro Catedral', municipality_id: 7 }, # 14      # Comondu

  { name: 'Zona Central', municipality_id: 8 }, # 15
  { name: 'Ciudad del Cielo', municipality_id: 8 }, # 16    # La Paz

  { name: 'INVI', municipality_id: 9 }, # 17
  { name: 'Centro', municipality_id: 9 }, # 18    # Loreto

  { name: 'Armería Centro', municipality_id: 10 }, # 19
  { name: 'Cristo Rey', municipality_id: 10 }, # 20         # Armeria

  { name: 'Colima Centro', municipality_id: 11 }, # 21
  { name: 'Lomas de Circunvalación', municipality_id: 11 }, # 22 # Colima

  { name: 'Comala', municipality_id: 12 }, # 23
  { name: 'Zacualpan', municipality_id: 12 } # 24   # Comala
]

postal_codes = [
  { code: '20000', settlement_id: 1 }, # Zona Centro
  { code: '20010', settlement_id: 2 }, # Colinas del Rio

  { code: '20773', settlement_id: 3 }, # Las Adjuntas
  { code: '20773', settlement_id: 4 }, # La Tinajuela

  { code: '20800', settlement_id: 5 }, # Calvillo Centro
  { code: '20802', settlement_id: 6 }, # El Mirador

  { code: '22750', settlement_id: 7 }, # Francisco Zarco
  { code: '22750', settlement_id: 8 }, # San Antonio Necua

  { code: '21600', settlement_id: 9 }, # La Rioja
  { code: '21600', settlement_id: 10 }, # Los Manantiales

  { code: '22700', settlement_id: 11 }, # Rosarito Centro
  { code: '22703', settlement_id: 12 }, # Quinta del Mar

  { code: '23600', settlement_id: 13 }, # Zona Centro
  { code: '23600', settlement_id: 14 }, # Cerro Catedral

  { code: '23000', settlement_id: 15 }, # Zona Central
  { code: '23010', settlement_id: 16 }, # Ciudad del Cielo

  { code: '23880', settlement_id: 17 }, # INVI
  { code: '23880', settlement_id: 18 }, # Centro

  { code: '28300', settlement_id: 19 }, # Armería Centro
  { code: '28304', settlement_id: 20 }, # Cristo Rey

  { code: '28000', settlement_id: 21 }, # Colima Centro
  { code: '28010', settlement_id: 22 }, # Lomas de Circunvalación

  { code: '28450', settlement_id: 23 }, # Comala
  { code: '28450', settlement_id: 24 } # Zacualpan
]

states.each do |state|
  State.create(state)
end

municipalities.each do |municipality|
  Municipality.create(municipality)
end

settlements.each do |settlement|
  Settlement.create(settlement)
end

postal_codes.each do |code|
  PostalCode.create(code)
end
