//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = UIImage(named: "DiceSix")
        if let image = UIImage(named: "DiceSix") {
            print("✅ Image found!")
        } else {
            print("❌ Image NOT found!")
        }


    }


}

