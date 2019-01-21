//
//  ViewController.swift
//  MyOne
//
//  Created by Ramesh on 1/21/19.
//  Copyright © 2019 Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func createUI(){
        var switch1 = UIButton()
        switch1.frame = CGRect.init(x: 50, y: 50, width: 150, height: 150)
        switch1.layer.borderColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        switch1.layer.borderWidth = 2.0
        view.addSubview(switch1)
        
    }
    

}

