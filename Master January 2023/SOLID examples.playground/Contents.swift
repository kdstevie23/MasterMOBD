import UIKit

var greeting = "Hello, playground"


// Single Responsibility

//S

class DataStorage {
    // this class has only one responsibility: storing data
    func saveData(data: String) {
        // save the data to the database
    }
}






//Open/Closed Principle


//O

class Shape {
    // this class is open for extension (you can add new shapes by subclassing it)
    // but closed for modification (you shouldn't need to change the existing code)
    func area() -> Double {
        // calculate the area of the shape
        return 0
    }
}

class Circle: Shape {
    // this is a subclass of Shape
    // it extends the Shape class by adding a new method for calculating the circumference
    func circumference() -> Double {
        // calculate the circumference of the circle
        return 0
    }
}





//Liskov Substitution Principle


//L
class Vehicle {
    // this is the parent class
    func startEngine() {
        // start the engine
    }
}

class Car: Vehicle {
    // this is a subclass of Vehicle
    // it should be able to be used in the same way as the Vehicle class without causing any problems
}





//Interface Segregation Principle


//I
protocol ShapeCalculations {
    // this protocol defines methods for calculating the area and perimeter of a shape
    func area() -> Double
    func perimeter() -> Double
}

class Rectangle: ShapeCalculations {
    // this class only needs the area method, so it only implements that one
    func area() -> Double {
        // calculate the area of the rectangle
        return 0
    }
}



//Dependency Inversion Principle


//D
protocol Engine {
    // this is the abstraction (interface)
    func start()
}

class Car {
    // this is the high-level class
    var engine: Engine
    
    init(engine: Engine) {
        // the car depends on the Engine interface, not a specific engine class
        self.engine = engine
    }
    
    func startCar() {
        engine.start()
    }
}

class V6Engine: Engine {
    // this is a low-level class that implements the Engine interface
    func start() {
        // start the engine
    }
}
