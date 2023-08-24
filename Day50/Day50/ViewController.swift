//
//  ViewController.swift
//  Day50
//
//  Created by Hyun Gyu Im on 2023/08/24.
//

import UIKit
import NewFeatures

class newUtil : Utils{
    override class func sayHello(){
        super.sayHello()
        print("안녕")
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        Utils.sayHello()
        newUtil.sayHello()
    }


}

