u1 = User.create!(email: "luke@spartaglobal.com", password: "abc123")

l1 = List.create!(title: "Do homework", item: "Make a to-do application using Ruby Rails which will be due tomorrow morning.", user_id: u1.id)
l2 = List.create!(title: "Eat dinner", item: "You will be hungry when you come home from work.", user_id: u1.id)
l3 = List.create!(title: "Sleep", item: "You will be tired tonight.", user_id: u1.id)

puts "Finished seed..."