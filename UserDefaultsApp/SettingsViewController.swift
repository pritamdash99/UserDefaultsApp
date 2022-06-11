//
//  SettingsViewController.swift
//  UserDefaultsApp
//
//  Created by Pritam Dash on 11/06/22.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var colorSegment : UISegmentedControl!
    @IBOutlet var nameTextField : UITextField!
    @IBOutlet var colorChoiceLabel : UILabel!
    @IBOutlet var saveButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func saveSettings() {
        let name = nameTextField.text
        let colorPosition = colorSegment.selectedSegmentIndex
        //instead of saving the color name we will save the color index.
        
        //open userDefault and save name and color position.
        
        let userDefaults = UserDefaults.standard
        //here we are ot using any intialiser just a static property of UserDefaults
        
        //After opening the userdefaults we need to set the values in it.
        userDefaults.set(colorPosition, forKey: "color")
        userDefaults.set(name, forKey: "userName")
        
        userDefaults.synchronize()  //File opens, file gets stored and file closes. It is parmanent data.
        
        //Inorder to close the screen.
        self.navigationController?.popViewController(animated: true)
    }

}
