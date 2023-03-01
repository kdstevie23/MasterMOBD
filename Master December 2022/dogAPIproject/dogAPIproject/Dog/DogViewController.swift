//
//  ViewController.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/6/22.
//

import UIKit

class DogViewController: UIViewController
{
    let controller = DogInfoController()
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        Task {
            do {
                let photoInfo = try await
                controller.fetchDogInfo()
                updateUI(with: photoInfo)
            } catch {
                updateUI(with: error)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    
    func updateUI(with dogInfo: DogInfo)
    {
        Task
        {
            do
            {
                let image = try await controller.fetchImage(from: dogInfo.image)
                imageOutlet.image = image
            } catch
            {
                updateUI(with: error)
            }
        }
    }
    
    
    func updateUI(with error: Error)
    {
        imageOutlet.image = UIImage(systemName: "exclamationmark.octagon")
    }
    
    
    
    
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBAction func buttonPressed(_ sender: UIButton) {
        Task {
            do {
                let photoInfo = try await
                controller.fetchDogInfo()
                updateUI(with: photoInfo)
            } catch {
                updateUI(with: error)
            }
        }
        
        
        
        
        
        enum ItemError: Error, LocalizedError
        {
            case itemsNotFound
            case imageDataMissing
        }
        
        
        
    }
}
