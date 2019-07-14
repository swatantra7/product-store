# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



ProductType.find_or_create_by(name: 'Mobile')

MOBILE_BRANDS = ['BlackBerry', 'Apple', 'MicroSoft', 'Asus', 'Gionee', 'Google', 'Htc']

5000.times do
  Product.create(
    name: Faker::Name.unique.name,
    model: Faker::Name.unique.name,
    brand: MOBILE_BRANDS.sample,
    year: Date.today,
    ram: Faker::Number.number(1),
    external_storage: Faker::Number.number(3),
    product_type_id: ProductType.find_by_name('Mobile').id,
    user_id: User.first.id
  )
end