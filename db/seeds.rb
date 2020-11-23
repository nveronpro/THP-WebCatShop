# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cart.destroy_all
Item.destroy_all
Carditem.destroy_all
AssociateOrderItem.destroy_all
Carditem.destroy_all
Order.destroy_all

10.times do
  Item.create(title: Faker::Lorem.sentence(word_count: 2), description: Faker::Lorem.sentence(word_count: 10), price: 15, image_url: "https://pajulahti.com/wp-content/uploads/2017/04/500x500.jpeg")
end
  
5.times do
  cart_tmp = Cart.create
  User.create(email: Faker::Internet.email(domain: 'yopmail.com'), password: "password", cart: cart_tmp)
  5.times do
    Carditem.create(item: Item.all.sample, cart: cart_tmp)
  end
end

5.times do
  2.times do
    order_tmp = Order.create(user: User.all.sample)
    5.times do
      AssociateOrderItem.create(order: order_tmp, item: Item.all.sample)
    end
  end
end