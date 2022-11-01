import UIKit

class ViewController: UIViewController {

    @IBOutlet var launchLabel: UILabel!
    
    @IBOutlet var configureLabel: UILabel!
    
    @IBOutlet var willConnectLabel: UILabel!
    
    @IBOutlet var didBecomeActiveLabel: UILabel!
    
    @IBOutlet var willResignActiveLabel: UILabel!
    
    @IBOutlet var willEnterForegroundLabel: UILabel!
    
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    
    
    
    
    
    
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    
    
    
    
    
    func updateView() {
        
        
        
        launchLabel.text = "The App launched \(appDelegate.launchCount) time"
        
        configureLabel.text = "App trying to connect \(appDelegate.configurationForConnectingCount) time"
        
        willConnectLabel.text = "sceneWillConnect \(willConnectCount) time"
        
        didBecomeActiveLabel.text = "sceneDidBecomeActive \(willResignActiveCount) time"
        
        willResignActiveLabel.text = "sceneWillResignActive \(willResignActiveCount) time"
        
        willEnterForegroundLabel.text = "sceneWillEnterForeground \(willEnterForegroundCount) time"
        
        didEnterBackgroundLabel.text = "sceneDidEnterBackground \(didEnterBackgroundCount) time"
    }


}

