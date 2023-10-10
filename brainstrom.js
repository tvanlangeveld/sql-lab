// User table
// Id int
// Email varchar
// Password varchar

// Recipes table 
// id
// Ingredients
// Instructions
// Private?
// Foreign key user(id) many to many 

// Grocery table
// Id
// Foreign key recipes(ingredients) one to one
// Foreign key user(id) one to one

// Occasion table
// Id
// Foreign key user(id)
// occasions _id int
// Foreign key recipes(id) many to one

