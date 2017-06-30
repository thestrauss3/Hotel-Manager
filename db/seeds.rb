Room.delete_all
Hotel.delete_all
Customer.delete_all
Booking.delete_all

hotel = Hotel.create(name: 'My Hotel', address: '44 Upthestreet blvd, goodplace, MA 00031', phone: '444-231-9982')

r101 = Room.create(room_number: 101, room_type: 'Deluxe Single', beds: 1, bed_type: 'King', hotel: hotel)
r102 = Room.create(room_number: 102, room_type: 'Deluxe Double', beds: 2, bed_type: 'Queen', hotel: hotel)
r103 = Room.create(room_number: 103, room_type: 'Deluxe Single', beds: 1, bed_type: 'King', hotel: hotel)
r104 = Room.create(room_number: 104, room_type: 'Producer Suite', beds: 1, bed_type: 'King', hotel: hotel)

r201 = Room.create(room_number: 201, room_type: 'Deluxe Single', beds: 1, bed_type: 'King', hotel: hotel)
r202 = Room.create(room_number: 202, room_type: 'Deluxe Double', beds: 2, bed_type: 'Queen', hotel: hotel)
r203 = Room.create(room_number: 203, room_type: 'Deluxe Double', beds: 2, bed_type: 'Queen', hotel: hotel)
penthouse = Room.create(room_number: 'PENTHOUSE', room_type: 'Executive Suite', beds: 1, bed_type: 'King', hotel: hotel)

jack = Customer.create(name: 'Jack', phone: '543-231-2567', email: 'applejack@gmail.com')
diane = Customer.create(name: 'Diane', phone: '123-472-4563', email: 'dsmith@gmail.com')
bob = Customer.create(name: 'Bob', phone: '123-456-7890', email: 'bob@bob.bob')

midnight = DateTime.now

b1 = Booking.create(customer: jack, room: r202, checkin_date: (midnight - 4.days + 16.hours), checkout_date: (midnight - 2.days + 11.hours), status: 'Past', checkin_time: (midnight - 4.days + 17.hours + 15.minutes), checkout_time: (midnight - 2.days + 10.hours + 15.minutes))

b2 = Booking.create(customer: jack, room: r103, checkin_date: (midnight + 4.days + 16.hours), checkout_date: (midnight + 7.days + 11.hours), status: 'Reservation')

b3 = Booking.create(customer: diane, room: r102, checkin_date: (midnight - 2.days + 16.hours), checkout_date: (midnight + 11.hours), status: 'Active', checkin_time: (midnight - 2.days + 19.hours))

b4 = Booking.create(customer: bob, room: penthouse, checkin_date: (midnight + 1.day + 16.hours), checkout_date: (midnight + 4.days + 11.hours), status: 'Reservation')
