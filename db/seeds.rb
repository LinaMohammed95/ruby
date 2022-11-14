10.times do
    Restaurant.create(name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.cell_phone,
    review: Faker::Restaurant.review
    )
    Food.create(description: Faker::Food.description,
    fruits: Faker::Food.fruits,
    ingredient: Faker::Food.ingredient,
    vegetables: Faker::Food.vegetables
    )
    Dessert.create(variety: Faker::Dessert.variety,
    topping: Faker::Dessert.topping,
    flavor: Faker::Dessert.flavor
    )
end