//
//  ViewController.swift
//  3-rd Sprint - project
//
//  Created by ALeXzZzAy on 03.06.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonCount: UIButton!
    @IBOutlet weak var labelCount: UILabel!

    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelCount.text = "Значение счетчика: \n\(count)"
        labelCount.numberOfLines = 4
        labelCount.textAlignment = .center
    }
    
    @IBAction func incrementNumber(_ sender: Any) {
        count += 1
        labelCount.text = "Значение счетчика: \n\(count)"
    }
}

