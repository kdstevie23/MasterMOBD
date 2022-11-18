
import UIKit

class FurnitureTableViewController: UITableViewController {

    struct PropertyKeys {
        static let furnitureCell = "FurnitureCell"
    }
    
    var rooms: [Room] = [
        
        
        Room(name: "Gaming Room",
             furniture: [Furniture(name: "Gaming Chair", description: "A comfy place to sit down."),
                         Furniture(name: "Television", description: "Entertainment for all to watch."),
                         Furniture(name: "Glass Desk", description: "Very sleek place to enjoy gaming to its fullest.")]),
        
        Room(name: "Theater Room",
             furniture: [Furniture(name: "Couches", description: "comfy place to relax and enjoy the movie"),
                         Furniture(name: "Leg Rest", description: "prop your feet up and relax even more"),
                         Furniture(name: "pillows", description: "nice spot to rest your head")]),
        
        Room(name: "Bedroom",
             furniture: [Furniture(name: "Bed", description: "A place to sleep. the most relaxing place in the whole world"),
                         Furniture(name: "Dresser", description: "keep your clothes nice and organized"),
                         Furniture(name: "Closet", description: "Hang up your clothes")])]
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return rooms.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms[section].furniture.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.furnitureCell, for: indexPath)
        
        let room = rooms[indexPath.section]
        let furniture = room.furniture[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = furniture.name
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        switch section
        {
        case 0:
            return rooms[0].name
        case 1:
            return rooms[1].name
        case 2:
            return rooms[2].name
        default:
            return "Oops!"
        }
    }
    
    @IBSegueAction func showFurnitureDetail(_ coder: NSCoder, sender: Any?) -> FurnitureDetailViewController?
    {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else
        
        {return nil}
        
        let selectedRoom = rooms[indexPath.section]
        let selectedFurniture = selectedRoom.furniture[indexPath.row]
        
        return FurnitureDetailViewController(coder: coder, furniture: selectedFurniture)
    }    
}
