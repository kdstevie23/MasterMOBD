//
//  ViewController.swift
//  appEventCount 10.16.22
//
//  Created by Steven Newman on 10/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var didFinishOptions: UILabel!
    
    @IBOutlet weak var configurationForConnecting: UILabel!
    
    @IBOutlet weak var willConnectToOptions: UILabel!
    
    @IBOutlet weak var sceneDidBecomeActive: UILabel!
    
    @IBOutlet weak var sceneWillResideActive: UILabel!
    

    @IBOutlet weak var sceneWillEnterForeground: UILabel!
    
    
    @IBOutlet weak var sceneDidEnterBackground: UILabel!
    
}

