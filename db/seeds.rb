Room.delete_all
Floor.delete_all
Hotel.delete_all

hotel = Hotel.create(name: 'My Hotel', address: '44 Upthestreet blvd, goodplace, MA 00031', phone: '444-231-9982')

floor1 = Floor.create(hotel: hotel, floor_name: 'Floor 1')
floor2 = Floor.create(hotel: hotel, floor_name: 'Floor 1')

Room.create(room_number: 101, room_type: 'Deluxe Single', beds: 1, bed_type: 'King', floor: floor1, hotel: hotel)
Room.create(room_number: 105, room_type: 'Deluxe Double', beds: 2, bed_type: 'Queen', floor: floor1, hotel: hotel)
Room.create(room_number: 109, room_type: 'Deluxe Single', beds: 1, bed_type: 'King', floor: floor1, hotel: hotel)
Room.create(room_number: 113, room_type: 'Producer Suite', beds: 1, bed_type: 'King', floor: floor1, hotel: hotel)

Room.create(room_number: 201, room_type: 'Deluxe Single', beds: 1, bed_type: 'King', floor: floor2, hotel: hotel)
Room.create(room_number: 105, room_type: 'Deluxe Double', beds: 2, bed_type: 'Queen', floor: floor2, hotel: hotel)
Room.create(room_number: 109, room_type: 'Deluxe Double', beds: 2, bed_type: 'Queen', floor: floor2, hotel: hotel)
Room.create(room_number: 213, room_type: 'Executive Suite', beds: 1, bed_type: 'King', floor: floor2, hotel: hotel)
