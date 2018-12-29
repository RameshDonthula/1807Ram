//
//  ViewController.swift
//  ApiServiceCallTask
//
//  Created by Ramesh on 12/28/18.
//  Copyright © 2018 Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Apiservice.shared.getDataFromServer(serviceType: .TOPFREE, onSuccess: { (jsonData) in
            print(jsonData)
        }) { (errorMessage) in
            print(errorMessage)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

