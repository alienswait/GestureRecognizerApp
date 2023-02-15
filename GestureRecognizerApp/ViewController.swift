//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Mertcan Ünek on 15.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var isTrilogy = true
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        if isTrilogy == true{
            
            imageView.image = UIImage(named: "weekndkissland")
            myLabel.text = "Kiss Land"
            isTrilogy = false
        }else{
            
            imageView.image = UIImage(named: "Trilogy")
            myLabel.text = "Trilogy"
            isTrilogy = true
        }
        

        
    }

}
