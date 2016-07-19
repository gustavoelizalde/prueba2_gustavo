# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Work.destroy_all
User.destroy_all

2.times do |i|
  u = User.new(name: "User Name #{i}", email: "username_#{i}@gmail.com")
  u.works.build(description: "Trabajo #{i}-1")
  u.works.build(description: "Trabajo #{i}-2")
  u.works.build(description: "Trabajo #{i}-3")
  u.save!
end

5.times do |i|
	c = Category.new(name: "Cat Name #{i}")
	c.inventories.build(serial: 100 + i, name: "Producto Name #{i}", wheel: 10 + i, description: "This is the description for the Product Name #{i}")
	c.inventories.build(serial: 200 + i, name: "Producto Name #{i}", wheel: 20 + i, description: "This is the description for the Product Name #{i}")
	c.inventories.build(serial: 300 + i, name: "Producto Name #{i}", wheel: 30 + i, description: "This is the description for the Product Name #{i}")
	c.save!
end