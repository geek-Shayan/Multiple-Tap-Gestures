//
//  ViewController.swift
//  Multiple Tap Gestures
//
//  Created by SHAYANUL HAQ SADI on 11/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a parent view
        let parentView = UIView(frame: CGRect(x: view.center.x-100, y: view.center.y-100, width: 200, height: 200))
        parentView.backgroundColor = UIColor.blue
        
        // Add a tap gesture to the parent view
        let parentTapGesture = UITapGestureRecognizer(target: self, action: #selector(parentViewTapped))
        parentView.addGestureRecognizer(parentTapGesture)
        
        // Add the parent view to the main view
        view.addSubview(parentView)
        
        // Create a child view
        let childView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        childView.backgroundColor = UIColor.red
        
        // Add a tap gesture to the child view
        let childTapGesture = UITapGestureRecognizer(target: self, action: #selector(childViewTapped))
        childView.addGestureRecognizer(childTapGesture)
        
        // Add the child view to the parent view
        parentView.addSubview(childView)
    }
    
    @objc func parentViewTapped() {
        print("Parent view tapped")
    }
    
    @objc func childViewTapped() {
        print("Child view tapped")
    }
}
