//
//  ColorsDetailsVC.swift
//  RandomColor1
//
//  Created by Aarsh  Patel on 10/01/24.
//

import UIKit

class ColorsDetailsVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
        
    }
    

}
