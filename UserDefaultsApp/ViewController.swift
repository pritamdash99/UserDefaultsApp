//
//  ViewController.swift
//  UserDefaultsApp
//
//  Created by Pritam Dash on 11/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var welcomeLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
    } //endOF viewDidLoad
    
    override func viewDidAppear(_ animated: Bool) {
        //This function takes place when the screen disapears then reappears.
        
        //show name of person saved in settings screen.
        let userDefault = UserDefaults.standard
        
        //Fetch the value for userName key set in the Settings Screen and display
        let name = userDefault.value(forKey: "userName")
        
        if name != nil {
            //.value returns a "any" type value, so we need to explicitly map the values.
            let str = name as! String
            welcomeLabel.text = "Welcome -\(str)"
        }
        
        //Fetch the color and set in as background
        let color = userDefault.integer(forKey: "color")
            let c = color
            switch c {
            case 0 :
                self.view.backgroundColor = UIColor.red
            case 1 :
                self.view.backgroundColor = UIColor.green
            case 2 :
                self.view.backgroundColor = UIColor.blue
            case 3 :
                self.view.backgroundColor = UIColor.yellow
            default :
                self.view.backgroundColor = UIColor.gray
            }

    }


}

