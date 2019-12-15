//
//  ViewController.swift
//  day12Gestures
//
//  Created by Felix-ITS016 on 03/12/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let  tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        tap.numberOfTapsRequired = 1
        view.addGestureRecognizer(tap)
        
        
        let  leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleLeftSwipe(sender:)))
        leftSwipe.direction = .left
        view.addGestureRecognizer(leftSwipe)
        
        
        let  rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleRightSwipe(sender:)))
        rightSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @objc func handleTap(sender:UITapGestureRecognizer)
    {
        view.backgroundColor = .blue
    }
    @objc func handleLeftSwipe(sender:UISwipeGestureRecognizer)
    {
        view.backgroundColor = .red
    }
    @objc func handleRightSwipe(sender:UISwipeGestureRecognizer)
    {
        view.backgroundColor = .green
    }

}

