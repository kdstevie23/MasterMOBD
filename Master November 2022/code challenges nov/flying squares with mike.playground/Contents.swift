import UIKit
import PlaygroundSupport
import DeezNuts

var greeting = "Hello, playground"


let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = .white

PlaygroundPage.current.liveView = liveView

let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)

square.backgroundColor = .blue

liveView.addSubview(square)


UIView.animate(withDuration: 3, animations: {
    
    square.backgroundColor = .lightGray
    let scaleTransform = CGAffineTransform(scaleX: 2, y: 2)
    let rotateTransform = CGAffineTransform(rotationAngle: .pi * 2)
    let translate = CGAffineTransform(translationX: 100, y: 200)
    
    
    let combinedTransforms = scaleTransform.concatenating(rotateTransform)
    
    square.transform = combinedTransforms
}) { _ in
    
    
    UIView.animate(withDuration: 2, animations: {
        square.transform = .identity
        
        
        
        
    })
}
