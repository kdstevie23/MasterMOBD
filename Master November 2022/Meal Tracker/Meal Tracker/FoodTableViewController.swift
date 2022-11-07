import UIKit

class FoodTableViewController: UITableViewController
{
    
    var meals: [Meal]
    {
        let firstBreakfastFood = Food(name: "chicken", description: "MMMM  YUMMY CHICKEN")
        let secondBreakfastFood = Food(name: "chicken", description: "ooooh look its more chicken")
        let thirdBreakfastFood = Food(name: "chicken", description: "WOW WE LOVE CHICKEN")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
        
        let firstLunchFood = Food(name: "chicken", description: "MORE CHICKEN!!")
        let secondLunchFood = Food(name: "chicken", description: "MORE CHICKEN?")
        let thirdLunchFood = Food(name: "chicken", description: "Okay thats a lot of chicken...")
        let lunch = Meal(name: "Lunch", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
        
        let firstDinnerFood = Food(name: "chicken", description: "WOWZA MORE CHICKEN")
        let secondDinnerFood = Food(name: "chicken", description: "THATS TOOOO MUCH CHICKEN")
        let thirdDinnerFood = Food(name: "chicken", description: "CHICKEN IS GROSS TO ME NOW. FRICK U TABLEVIEWS")
        let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
        
        return [breakfast, lunch, dinner]
    }



    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return meals.count
    }

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let meal = meals[section]
        let food = meal.food
        return food.count
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        let meal = meals[section]
        
        return meal.name
    }
    
}
