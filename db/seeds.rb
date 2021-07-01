# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PurchasedItem.destroy_all
Order.destroy_all
User.destroy_all
Widget.destroy_all

tyler = User.create(
    email: "tyler@gmail.com" 
)

kaitlyn = User.create(
    email: "kaitlyn@gmail.com" 
)

jon = User.create(
    email: "jon@gmail.com" 
)

calculator = Widget.create(
    name: "Calculator",
    color: "#000000",
    quantity: 20
)

screwdriver = Widget.create(
    name: "Screwdriver",
    color: "#FFFFFF",
    quantity: 10
)

order_1 = Order.create(
    user: tyler
)

order_2 = Order.create(
    user: jon
)

order_3 = Order.create(
    user: tyler
)

purchase_1 = PurchasedItem.create(
    widget: calculator,
    quantity: 2,
    order: order_1
)

purchase_2 = PurchasedItem.create(
    widget: screwdriver,
    quantity: 1,
    order: order_1
)

purchase_3 = PurchasedItem.create(
    widget: screwdriver,
    quantity: 3,
    order: order_2
)
