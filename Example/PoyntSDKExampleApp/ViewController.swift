//
//  ViewController.swift
//  PoyntSDKExampleApp
//
//  Created by Eric McConkie on 9/5/16.
//  Copyright © 2016 Eric McConkie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let posManager = PoyntPOSConnectionManager()
        print("\(#function)\r\n POS MANAGER  ---> \(posManager)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

