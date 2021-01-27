RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
MeasurementQty.destroy_all
MeasurementUnit.destroy_all

avocado_toast = Recipe.create(
  rating: 9,
  name: 'Avocado Toast',
  description: 'Take one piece of bread and toast. Take one avocado, slice up the avocado and mash. Apply mashed avocado on toast',
  difficulty: 'Easy',
  meal_type: 'Breakfast',
  image: 'https://cdn.loveandlemons.com/wp-content/uploads/2020/01/how-to-make-avocado-toast.jpg'
)

tuna_salad = Recipe.create(
  rating: 8.5,
  name: 'Tuna Salad',
  description: 
  'In a large bowl, whisk together mayonnaise, yogurt, lemon juice, and hot sauce (if using).
  Drain tuna then add to mayonnaise mixture. Use a fork to break up tuna into flakes. Add red onion and pickles and toss to combine.
  Season with salt and pepper. Serve on lettuce or bread as a sandwich.',
  difficulty: 'Easy',
  meal_type: 'Lunch',
  image: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/shot-4-0352-1522855625.png?crop=1xw:0.8888888888888888xh;center,top&resize=980:*'
)

breakfast_quesadilla = Recipe.create(
  rating: 9,
  name: 'Breakfast Quesadilla',
  description:
  "In a large skillet, scramble the eggs (add salt and pepper to taste).
  eggs being scrambled in a pan
  Spray skillet or griddle with cooking spray and heat over medium-high heat. Place one tortilla on the skillet or griddle and heat on one side.
  single tortilla on a griddle
  When tortilla is hot, flip and add half of the cheese.
  shredded cheese on a tortilla
  Add scrabled egg and distribute evenly.
  cheese and egg on a tortilla
  Add bacon over the top.
  open-faced breakfast quesadilla with bacon
  Sprinkle on remaining cheese and top with remaining tortilla. Cook for about 1 minute or until cheese starts to melt, then CAREFULLY flip (you don't want all the egg falling out).
  layers of egg bacon and cheese on a tortilla
  When the cheese is melted and the tortilla is golden brown remove from pan. Cut into quarters with a pizza cutter and serve with sour cream and/or salsa.",
  difficulty: 'Easy',
  meal_type: 'Breakfast',
  image: 'https://www.favfamilyrecipes.com/wp-content/uploads/2018/10/Breakfast-Quesadillas-500x375.jpg'
)

twelve = MeasurementQty.create(amount:'12')
two = MeasurementQty.create(amount:'2')
one = MeasurementQty.create(amount:'1')
half = MeasurementQty.create(amount: '1/2')
quarter = MeasurementQty.create(amount: '1/4')
eigth = MeasurementQty.create(amount: '1/8')
sixteenth = MeasurementQty.create(amount: '1/16')
thiry_two = MeasurementQty.create(amount: '1/32')


tbsp = MeasurementUnit.create(description: 'tbsp')
tsp = MeasurementUnit.create(description: 'tsp')
cup = MeasurementUnit.create(description: 'cup')
gal = MeasurementUnit.create(description: 'gal')
oz = MeasurementUnit.create(description: 'oz')
lb = MeasurementUnit.create(description: 'lb')
liter = MeasurementUnit.create(description: 'liter')
g = MeasurementUnit.create(description: 'g')
mg = MeasurementUnit.create(description: 'mg')
kg = MeasurementUnit.create(description: 'kg')
count = MeasurementUnit.create(description: 'count')

bread = Ingredient.create(name: 'Bread')
avocado = Ingredient.create(name: 'Avocado')
pepper = Ingredient.create(name: 'Pepper')
salt = Ingredient.create(name: 'Salt')
mayonnaise = Ingredient.create(name: 'Mayonnaise')
greek_yogurt = Ingredient.create(name: 'Greek Yogurt')
lemon = Ingredient.create(name: 'Lemon')
tuna = Ingredient.create(name: 'Tuna')
red_onion = Ingredient.create(name: 'Red Onion')
lettuce = Ingredient.create(name: 'Lettuce')
dill_pickles = Ingredient.create(name: 'Dill Pickle')
egg = Ingredient.create(name: 'Egg')
bacon = Ingredient.create(name: 'Bacon')
flour_tortilla = Ingredient.create(name: 'Flour Tortilla')
monterey_jack = Ingredient.create(name: 'Monterey Jack Cheese')


toast = RecipeIngredient.create(recipe: avocado_toast, ingredient: bread, measurement_unit: count, measurement_qty: one) 
avocado = RecipeIngredient.create(recipe: avocado_toast, ingredient: avocado, measurement_unit: count, measurement_qty: one)
mayonnaise = RecipeIngredient.create(recipe: tuna_salad, ingredient: mayonnaise, measurement_unit: tbsp, measurement_qty: two)
greek_yogurt = RecipeIngredient.create(recipe: tuna_salad, ingredient: greek_yogurt, measurement_unit: tbsp, measurement_qty: two)
lemon = RecipeIngredient.create(recipe: tuna_salad, ingredient: lemon, measurement_unit: count, measurement_qty: half)
tuna = RecipeIngredient.create(recipe: tuna_salad, ingredient: tuna, measurement_unit: oz, measurement_qty: twelve)
red_onion = RecipeIngredient.create(recipe: tuna_salad, ingredient: red_onion, measurement_unit: count, measurement_qty: quarter)
dill_pickles = RecipeIngredient.create(recipe: tuna_salad, ingredient: dill_pickles, measurement_unit: count, measurement_qty: two)
egg = RecipeIngredient.create(recipe: breakfast_quesadilla, ingredient: egg, measurement_unit: count, measurement_qty: two)
flour_tortilla = RecipeIngredient.create(recipe: breakfast_quesadilla, ingredient: flour_tortilla, measurement_unit: count, measurement_qty: two)
bacon = RecipeIngredient.create(recipe: breakfast_quesadilla, ingredient: bacon, measurement_unit: count, measurement_qty: two)
monterey_jack = RecipeIngredient.create(recipe: breakfast_quesadilla, ingredient: monterey_jack, measurement_unit: cup, measurement_qty: half)