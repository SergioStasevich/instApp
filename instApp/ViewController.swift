//
//  ViewController.swift
//  instApp
//
//  Created by Siarhei Stasevich on 09/11/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var avatarNameLabel: UILabel!
    @IBOutlet weak var avatarCutyLabel: UILabel!
    @IBOutlet weak var countSubscribe: UILabel!
    @IBOutlet weak var countFreund: UILabel!
    @IBOutlet weak var freundLabel: UILabel!
    @IBOutlet weak var countPhoros: UILabel!
    @IBOutlet weak var photoLabel: UILabel!
    
    @IBOutlet weak var subscribeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarImage.layer.cornerRadius = avatarImage.frame.width/2
        avatarImage.layer.borderWidth = 3.0
        avatarImage.layer.borderColor = UIColor.lightGray.cgColor
        
    }


    
    
}

