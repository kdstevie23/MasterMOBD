import UIKit

class BookTableViewController: UITableViewController {
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookTableViewCell
        let item = items[indexPath.row]
        cell.update(with: item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue)
    {
        guard let source = segue.source as? BookFormTableViewController,
            let item = source.item else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow
        {
            items.remove(at: indexPath.row)
            items.insert(item, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            items.append(item)
        }
    }
    
    @IBSegueAction func editBook(_ coder: NSCoder, sender: Any?) -> BookFormViewController?
    {
        
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else
        {
            return nil
        }
        
        let item = items[indexPath.row]
        
        return BookFormViewController(coder: coder, item: item)
    }
    
    
}
