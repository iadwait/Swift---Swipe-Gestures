//
//  ViewController.swift
//  Swipe Gestures
//
//  Created by Adwait Barkale on 26/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(leftSwipe)
    }
    
    @objc func swipeAction(swipe: UISwipeGestureRecognizer)
    {
        print(swipe.direction.rawValue)
        switch swipe.direction.rawValue {
        case 2:
            let nextVC = storyboard?.instantiateViewController(identifier: "ViewController2") as! ViewController2
            navigationController?.pushViewController(nextVC, animated: true)
        default:
            break
        }
    }
    
}
