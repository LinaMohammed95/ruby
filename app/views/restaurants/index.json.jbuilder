json.resturants Restaurant.all do |resturant|
json.name   resturant.name
json.address resturant.address
json.phone   resturant.phone
json.review  resturant.review


json.foods Food.all do |food|
json.description food.description
json.fruits      food.fruits
json.ingredient  food.ingredient
json.vegetables  food.vegetables

json.desserts Dessert.all do |dessert|
json.variety     dessert.variety
json.topping     dessert.topping
json.flavor      dessert.flavor
end

end

end