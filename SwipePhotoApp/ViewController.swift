//
//  ViewController.swift
//  SwipePhotoApp
//
//  Created by Fuad Karimli on 4/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.isUserInteractionEnabled = true
        
        
        
        let right = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        right.direction = UISwipeGestureRecognizer.Direction.right
        imageView.addGestureRecognizer(right)
        
        
        let left = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        left.direction = UISwipeGestureRecognizer.Direction.left
        imageView.addGestureRecognizer(left)
        
        
        let up = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        up.direction = UISwipeGestureRecognizer.Direction.up
        imageView.addGestureRecognizer(up)
        
        
        let down = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        down.direction = UISwipeGestureRecognizer.Direction.down
        imageView.addGestureRecognizer(down)
        
    }
    
    
    
    @objc func swipe (sender: UISwipeGestureRecognizer) {
        
        
      // let swipeGesture = UISwipeGestureRecognizer()
       
        
        
        if let swipeGesture = sender as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction{
                
            case UISwipeGestureRecognizer.Direction.right :
                print("Swipe Right")
                imageView.image = UIImage(named: "image2")
                
            case UISwipeGestureRecognizer.Direction.left :
                print("Swipe Left")
                imageView.image = UIImage(named: "image3")
                
                
            case UISwipeGestureRecognizer.Direction.up :
                print("Swipe Up")
                imageView.image = UIImage(named: "image4")
                
            
            case UISwipeGestureRecognizer.Direction.down :
                print("Swipe Down")
                imageView.image = UIImage(named: "image1")
            
        
                
            default :
                break
            }
        }
        
        


}


}



