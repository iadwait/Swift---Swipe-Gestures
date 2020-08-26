//
//  ViewController3.swift
//  Swipe Gestures
//
//  Created by Adwait Barkale on 26/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeActionLeft(swipe:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(leftSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeActionRight(swipe:)))
        rightSwipe.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func swipeActionLeft(swipe: UISwipeGestureRecognizer)
    {
        print(swipe.direction.rawValue) // 1
        switch swipe.direction.rawValue {
        case 2:
            let nextVC = storyboard?.instantiateViewController(identifier: "ViewController4") as! ViewController4
            navigationController?.pushViewController(nextVC, animated: true)
            
        default:
            break
        }
    }
    
    @objc func swipeActionRight(swipe: UISwipeGestureRecognizer)
    {
        print(swipe.direction.rawValue) // 1
        switch swipe.direction.rawValue {
        case 1:
           navigationController?.popViewController(animated: true)
        default:
            break
        }
    }
}
