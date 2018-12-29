//
//  Apiservice.swift
//  ApiServiceCallTask
//
//  Created by Ramesh on 12/28/18.
//  Copyright © 2018 Ramesh. All rights reserved.
//

import UIKit

class Apiservice: NSObject {
    static let shared = Apiservice()
    private override init() {
      print("")
    }
    func getDataFromServer(serviceType:serviceTypeMethod,onSuccess:@escaping (Any)->(),onFailure:@escaping (String)->()){
        guard let URL = URL(string: "https://rss.itunes.apple.com/api/v1/in/ios-apps/\(serviceType.rawValue)/all/100/explicit.json")else{return}
        URLSession.shared.dataTask(with: URL){(data,response,err) in
            do{
                let jsonData = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                onSuccess(jsonData)
                
            }
            catch{
               onFailure(error.localizedDescription)
            }
            
        }.resume()
        
    }

}
