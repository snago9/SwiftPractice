//
//  ViewController.swift
//  Day51
//
//  Created by Hyun Gyu Im on 2023/08/24.
//

import UIKit
class Pet{
    static let shared = Pet()
    private init(){
    }
    var name : String = "고양이"
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Pet.shared.name = "강아지"
        
        let myCat = Pet.shared
        
        let myDog = Pet.shared

    }


}

