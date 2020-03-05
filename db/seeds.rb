# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dish.destroy_all
Ingredient.destroy_all


        # ingredients: ["Bird Egg, Hylian Rice"],
    fried_egg_and_rice = Dish.create(name: "Fried Egg and Rice", description: "The soft egg yolk pairs well with the fresh rice in this simple dish.", image_url: "https://i.imgur.com/dcEw6lr.png")
    

        # ingredients: ["Courser Bee Honey"],
    honey_candy = Dish.create(name: "Honey Candy", description: "A natural sweet, brimming with nutrition and made by stewing fresh honey.", image_url: "https://i.imgur.com/RhJi0g2.png")
    
        # ingredients: ["Endura Carrot, Tabantha Wheat, Cane Sugar, Goat Butter"],
        carrot_cake = Dish.create(name: "Carrot Cake", description: "Even those who don't like carrots tend to enjoy the mild sweetness of this cake.", image_url: "https://i.imgur.com/c0g4F5Y.png")
    
        # ingredients: ["Raw Prime Meat, Armored Carp, Monster Extract"],
        monster_stew = Dish.create(name: "Monster Stew", description: "Meat and seafood simmered in monster extract. A savory dish despite its ingredients.", image_url: "https://i.imgur.com/7hjECJY.png")
    
        # ingredients: ["Fresh Milk"],
        warm_milk = Dish.create(name: "Warm Milk", description: "Make this by heating up some milk. Drink it before bed to ensure a good night's sleep.", image_url: "https://i.imgur.com/ouWatQH.png")
    
        # ingredients: ["Spicy Pepper"],
        spicy_sauteed_peppers = Dish.create(name: "Spicy Sautéed Peppers",
        description: "The spiciness of these sautéed peppers has been broken by the heat for a sweeter taste.",
        image_url: "https://i.imgur.com/he5Vepi.png")
   
        # ingredients: ["Endura Shroom", "Rock Salt"],
        salt_grilled_mushrooms = Dish.create(name: "Salt-Grilled Mushrooms",description: "A basic mushroom dish made by lightly salting mushrooms and grilling them.", image_url: "https://i.imgur.com/EwG6e0d.png")


ingredients = [
    {
        name: "Bird Egg",
        dish_id: fried_egg_and_rice.id
    },
    {
        name: "Hylian Rice",
        dish_id: fried_egg_and_rice.id
    },
    {
        name: "Courser Bee Honey",
       dish_id: honey_candy.id
    },
    {
        name: "Endura Carrot",
        dish_id: carrot_cake.id
    },
    {
        name: "Tabantha Wheat",
        dish_id: carrot_cake.id
    },
        {
        name: "Cane Sugar",
       dish_id: carrot_cake.id
    },
        {
        name: "Goat Butter",
       dish_id: carrot_cake.id
    },
        {
        name: "Raw Prime Meat",
        dish_id: monster_stew.id
    },
        {
        name: "Armored Carp",
        dish_id: monster_stew.id
    },
        {
        name: "Monster Extract",
        dish_id: monster_stew.id
    },
        {
        name: "Fresh Milk",
       dish_id: warm_milk.id
    },
        {
        name: "Spicy Pepper",
       dish_id: spicy_sauteed_peppers.id
    },
        {
        name: "Endura Shroom",
       dish_id: salt_grilled_mushrooms.id
    },
        {
        name: "Rock Salt",
        dish_id: salt_grilled_mushrooms.id
    }
    
]

# dishes.each do |dish_hash|

#     Dish.create(
#         name: dish_hash[:name],
#         description: dish_hash[:description],
#         image_url: dish_hash[:image_url]
#         #  ingredients: dish_hash[:ingredients]
#     )
# end

ingredients.each do |ingredient_hash|

    Ingredient.create(
    name: ingredient_hash[:name],
    dish_id: ingredient_hash[:dish_id]
    )
end


p 'seeded'