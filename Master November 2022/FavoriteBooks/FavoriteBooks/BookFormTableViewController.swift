import UIKit


//This project was created and edited to suit the christmas conditions. however, since its from the book i didnt want to change what things were named. they have the same functions as they did previously, everything is just renamed and viewed differently. exe, author is called something else on the actualy phone screen. but the outlet is still called author. too lazy to fix still does the same thing. might fix at some point

class BookFormTableViewController: UITableViewController {

    var item: Item?
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var authorTextField: UITextField!
    @IBOutlet var genreTextField: UITextField!
    @IBOutlet var lengthTextField: UITextField!
    
    
    
    init?(coder: NSCoder, item: Item?)
    {
        self.item = item
        super.init(coder: coder)
    }
    
    
    
    required init?(coder: NSCoder)
    {
        self.item = nil
        super.init(coder: coder)
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateView()
    }
    
    
    
    func updateView() {
        guard let item = item else {return}
        
        titleTextField.text = item.title
        authorTextField.text = item.author
        genreTextField.text = item.genre
        lengthTextField.text = item.length
    }
    
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text,
            let author = authorTextField.text,
            let genre = genreTextField.text,
            let length = lengthTextField.text else {return}
        
        item = Item(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
    }


}
