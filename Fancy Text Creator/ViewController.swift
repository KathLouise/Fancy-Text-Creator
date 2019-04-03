//
//  ViewController.swift
//  Fancy Text Creator
//
//  Created by Katheryne Graf on 01/04/19.
//  Copyright © 2019 Katheryne Graf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textFild: UITextField!
    @IBOutlet weak var shadowButtonLabel: UIButton!
    var fontSize:CGFloat = 40
    var state = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func entreText(_ sender: Any) {
        label.text = textFild.text
        //dismiss the keyboard
        self.resignFirstResponder()
    }
    
    @IBAction func redButton(_ sender: Any) {
        label.textColor = UIColor.red
    }
    
    @IBAction func blueButton(_ sender: Any) {
        label.textColor = UIColor.blue
    }
    
    @IBAction func greenButton(_ sender: Any) {
        label.textColor = UIColor(red: 51.0/255.0, green: 255.0/255.0, blue: 88.0/255.0, alpha: 1.0)
    }
    
    @IBAction func font1(_ sender: Any) {
        label.font = UIFont(name: "Blacksword", size: fontSize)
    }
    
    @IBAction func font2(_ sender: Any) {
        label.font = UIFont(name: "LemonMilk", size: fontSize)
    }
    
    @IBAction func font3(_ sender: Any) {
        label.font = UIFont(name: "Moon Flower", size: fontSize)
    }
    
    @IBAction func font4(_ sender: Any) {
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
    }
    
    @IBAction func shadow(_ sender: Any) {
        if(state == false){
            state = true
            shadowButtonLabel.setTitle("Remove Shadow", for: .normal)
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: 2, height: 2)
            label.layer.shadowRadius = 2.0
            label.layer.shadowOpacity = 0.5
        } else{
            state = false
            shadowButtonLabel.setTitle("Add Shadow", for: .normal)
            label.layer.shadowOpacity = 0.0
        }
    }
    
    @IBAction func small(_ sender: Any) {
        fontSize = 40
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func medium(_ sender: Any) {
        fontSize = 60
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func large(_ sender: Any) {
        fontSize = 80
        label.font = label.font.withSize(fontSize)
    }
    
    
}

