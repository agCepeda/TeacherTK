//
//  ViewController.swift
//  TeacherTK
//
//  Created by Macbook on 12/22/18.
//  Copyright © 2018 agcepeda. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func exampleTest(_ sender: Any) {
        Alamofire.request("https://api.bitso.com/v3/trades/?book=btc_mxn").responseJSON { (response) in
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
}

