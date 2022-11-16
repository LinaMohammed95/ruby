json.restaurants @restaurant do |restaurant|
json.partial! 'restaurant', restaurant: restaurant

json.foods @food do |food|
json.partial! 'food', food: food


json.desserts @dessert do |dessert|
json.partial! 'dessert', dessert: dessert
end

end
end