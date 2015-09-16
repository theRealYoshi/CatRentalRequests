# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat1 = Cat.create(birth_date: '2015-09-15 18:46:05', color: "brown", name: "Mango", sex: "F", description: "Throws up everywhere")
cat2 = Cat.create(birth_date: '2015-09-15 18:46:05', color: "black", name: "hams", sex: "M", description: "scratches everything")
cat3 = Cat.create(birth_date: '2015-09-15 18:46:05', color: "blue", name: "Meows", sex: "F", description: "is quiet")

cr1 = CatRentalRequest.create(cat_id: cat1.id, start_date: '2015-09-01 18:46:05', end_date: '2016-09-01 18:46:05')
cr2 = CatRentalRequest.create(cat_id: cat1.id, start_date: '2015-12-01 18:46:05', end_date: '2016-12-01 18:46:05')
cr3 = CatRentalRequest.create(cat_id: cat2.id, start_date: '2015-09-01 18:46:05', end_date: '2016-09-01 18:46:05')
cr4 = CatRentalRequest.create(cat_id: cat2.id, start_date: '2015-12-01 18:46:05', end_date: '2016-12-01 18:46:05')
cr5 = CatRentalRequest.create(cat_id: cat3.id, start_date: '2015-09-01 18:46:05', end_date: '2016-09-01 18:46:05', status: "APPROVED")
cr6 = CatRentalRequest.create(cat_id: cat3.id, start_date: '2015-12-01 18:46:05', end_date: '2016-12-01 18:46:05', status: "DENIED")
