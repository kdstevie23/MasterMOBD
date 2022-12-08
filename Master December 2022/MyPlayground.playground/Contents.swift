import UIKit

var greeting = "Hello, playground"


struct User {
  var name: String
  var bio: String
}



class someViewController: UIViewController {

  var user: User {
    willSet {
      //Do something
    }
    didSet {
      //Do something
    }
  }
  @IBOutlet myTextField: UITextField
  
  @IBAction buttonTapped() {
    user.name = myTextField.text
  }
  //All the other view controller stuff below
}
