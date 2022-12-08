//
//  ViewController.swift
//  MusicWireframe
//
//  Created by Steven Newman on 11/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outletImageView: UIImageView!
    
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    
    //BACKGROUNDS
    @IBOutlet weak var backButtonBackground: UIView!
    @IBOutlet weak var playPauseBackground: UIView!
    @IBOutlet weak var forwardButtonBackground: UIView!
    
    
    var isPlaying = true {
        didSet {
            playPauseButton.isSelected = isPlaying
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        playPauseButton.setImage(UIImage(systemName: "playpause.fill"), for: .normal)
        playPauseButton.setImage(UIImage(systemName: "pause.fill"), for: .selected)
        
        // Do any additional setup after loading the view.
        
        
        [backButtonBackground, playPauseBackground, forwardButtonBackground].forEach { bgView in
            bgView.layer.cornerRadius = bgView.frame.width / 2
            bgView.clipsToBounds = true
            bgView.alpha = 0
            
            }
        }
        
    
    @IBAction func playPauseButtonTapped(_ sender: UIButton) {
        
        isPlaying.toggle()
        
        //animation
        
        if isPlaying {
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1) {
                self.outletImageView.transform = CGAffineTransform.identity
            }
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.outletImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            })
        }
        
    }
    
    @IBAction func controlTouchUpInside(_ sender: UIButton) {
        
        let buttonBackground: UIView
        
        switch sender {
        case backButton:
            buttonBackground = backButtonBackground
        case playPauseButton:
            buttonBackground = playPauseBackground
        case forwardButton:
            buttonBackground = forwardButtonBackground
        default:
            return
        }
        
        UIView.animate(withDuration: 0.25) {
            buttonBackground.alpha = 0
            buttonBackground.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            sender.transform = .identity
        } completion: { _ in
            buttonBackground.transform = .identity
        }

    }
    
    @IBAction func controlTouchDown(_ sender: UIButton) {
        
        let buttonBackground: UIView
        
        switch sender {
        case backButton:
            buttonBackground = backButtonBackground
        case playPauseButton:
            buttonBackground = playPauseBackground
        case forwardButton:
            buttonBackground = forwardButtonBackground
        default:
            return
        }
        
        UIView.animate(withDuration: 0.25) {
            buttonBackground.alpha = 0.3
            sender.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }
        
    }
    
    
    }


