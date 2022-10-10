//
//  MiddleViewController.swift
//  Order Of Events
//
//  Created by Zander Ewell on 9/19/22.
//

import UIKit

class MiddleViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        addEvent(from: "ViewDidLoad")
    }
    
    @IBOutlet weak var middleLabel: UILabel!
    var eventNumber: Int = 1
    func addEvent(from: String)
    {
        if let existingText = middleLabel.text
        {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
}
