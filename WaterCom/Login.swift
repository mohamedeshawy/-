//
//  Login.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/3/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Gloss

class Login: UIViewController {
    var checked = false
    var companyOrPerson=false // company = false , person = true

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var checkBoxButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let font = UIFont.systemFont(ofSize: 22)
        segmentedControl.setTitleTextAttributes([NSFontAttributeName: font],
                                                for: .normal)
        //segmentedControl.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white], for: .normal)
    }
    
    @IBAction func segmentedIndexChange(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 1: //Companies
            self.companyOrPerson=false
            
        default: //Persons
            self.companyOrPerson=true
        }

    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func checkBox(_ sender: Any) {
        if !checked {
        self.checkBoxButton.setImage(UIImage(named: "checked.png"), for: .normal)
            checked=true
        }
        else {
            self.checkBoxButton.setImage(UIImage(named: "unchecked.png"), for: .normal)
            checked=false

        }
    }
    @IBAction func loginButton(_ sender: Any) {
        if self.companyOrPerson { //person
            print("person")
            let name = self.nameTextField.text
            let password = self.passwordTextField.text
            if let name=name , let password=password {
                let parameters :[String:String] = ["name":name,"password":password]
                Alamofire.request("http://meahcom.com/MobileApp/User/Login_user.php/post", method: .post, parameters: parameters).validate().responseJSON { response in
                    switch response.result {
                    case .success(let value):
                        let json = JSON(value)
                        if json["success"]==true {
                            let person = PersonModel(json: json.dictionary!)
                            print((person?.id)!)
                            self.performSegue(withIdentifier: "person", sender: self)
                        }
                        else {
                            let alert = UIAlertController(title: "خطأ فى تسجيل الدخول", message: "اعد ادخال البيانات بشكل صحيح", preferredStyle: .alert)
                            let action  = UIAlertAction(title: "حسنا", style: UIAlertActionStyle.destructive, handler: nil)
                            alert.addAction(action)
                        }
                    case .failure(let error):
                        print(error)
                    }
                }
            }
            else {
                print("name and password is nil")
                
            }
            
        }
        else { //company
            print("company")
            let name = self.nameTextField.text
            let password = self.passwordTextField.text
            if let name=name , let password=password {
                let parameters :[String:String] = ["name":name,"password":password]
                Alamofire.request("http://meahcom.com/MobileApp/User/Login_company.php/post", method: .post, parameters: parameters).validate().responseJSON { response in
                    switch response.result {
                    case .success(let value):
                        let json = JSON(value)
                        if json["success"]==true {
                            //let company = CompanyModel(json: json.dictionary!)
                            //print(company!)
                            print(json)
                            self.performSegue(withIdentifier: "company", sender: self)
                        }
                        else {
                            let alert = UIAlertController(title: "خطأ فى تسجيل الدخول", message: "اعد ادخال البيانات بشكل صحيح", preferredStyle: .alert)
                            let action  = UIAlertAction(title: "حسنا", style: UIAlertActionStyle.destructive, handler: nil)
                            alert.addAction(action)
                        }
                    case .failure(let error):
                        print(error)
                    }
                }
            }
            else {
                print("name and password is nil")
                
            }

            
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier=="person"{
            //passing person object
        
        }
        else if segue.identifier=="company"{
            //passing company object
        }
    }
    

}
