//
//  TopPaidViewController.swift
//  ApiServiceCallTask
//
//  Created by Ramesh on 12/28/18.
//  Copyright © 2018 Ramesh. All rights reserved.
//

import UIKit

class TopPaidViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Apiservice.shared.getDataFromServer(serviceType:serviceTypeMethod.TOPPAID, onSuccess: { (jsonData) in
            print(jsonData)
        }) { (errorMessage) in
            print(errorMessage)
        }
        // Do any additional setup after loading the view.
    }

    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
