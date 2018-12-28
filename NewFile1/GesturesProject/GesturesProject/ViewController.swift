//
//  ViewController.swift
//  GesturesProject
//
//  Created by Ramesh on 12/27/18.
//  Copyright © 2018 Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLbl: UILabel!
    
    
    @IBOutlet weak var mainView: UIView!
    
    var swipetTopGesture:UISwipeGestureRecognizer!
    var swipeDownGesture:UISwipeGestureRecognizer!
    var swipeRightSideGesture:UISwipeGestureRecognizer!
    var swipeLeftSideGesture:UISwipeGestureRecognizer!
    var longPressGesture:UILongPressGestureRecognizer!
    var rotationalGesture:UIRotationGestureRecognizer!
    var pinchGesture:UIPinchGestureRecognizer!
    var panGesture:UIPanGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createUI(){
        swipetTopGesture = UISwipeGestureRecognizer(target: self, action: #selector(topGesture))
        swipetTopGesture.direction = .up
        mainView.addGestureRecognizer(swipetTopGesture)
        
        swipeDownGesture = UISwipeGestureRecognizer(target: self, action: #selector(bottomGesture))
        swipeDownGesture.direction = .down
        mainView.addGestureRecognizer(swipeDownGesture)
    }
    
    @objc func topGesture(){
        
        mainLbl.text! = "Top Changed"
        
     }
    @objc func bottomGesture(){
        
        mainLbl.text! = "Bottom Changed"
        
    }
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

