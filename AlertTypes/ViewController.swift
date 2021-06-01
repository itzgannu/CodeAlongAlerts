//
//  ViewController.swift
//  AlertTypes
//
//  Created by admin on 5/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGreen
        self.title = "CODE ALONG Alerts"
    }


    @IBAction func DefaultAlertButton(_ sender: UIButton) {
        let title : String = "Default Alert"
        let message : String = "You have clicked Default Alert Button!"
        let buttonTitle: String = "Okay"
        defaultAlert(title: title, message: message, buttonTitle: buttonTitle)
        // Display on label
        label.text = "Clicked on Default Alert Button"
    }
    
    @IBAction func DestructiveAlertButton(_ sender: UIButton) {
        let title : String = "Destructive Alert"
        let message : String = "You have clicked Destructive Alert Button!"
        let buttonTitle: String = "Dismiss"
        destructiveAlert(title: title, message: message, buttonTitle: buttonTitle)
        // Display on label
        label.text = "Clicked on Destructive Alert Button"
        
    }
    
    @IBAction func TwoOptionsAlert(_ sender: UIButton) {
        let title : String = "Two Opton Alert"
        let message : String = "You have clicked on Two Option Alert Button!"
        let firstButtonTitle : String = "Okay"
        let sencondButtonTitle : String = "Dismiss"
        twoAlerts(title: title, message: message, firstTitle: firstButtonTitle, secondTitle: sencondButtonTitle)
        //Display on label
        label.text = "Clicked on Two Option Alert Button"
    }
    
    @IBAction func FieldsinsideAlert(_ sender: UIButton) {
        fieldsOnAlert()
    }
    
    @IBAction func ActionOnAlert(_ sender: UIButton) {
        actionAlert()
    }
    
    @IBAction func ActionSheet(_ sender: UIButton) {
        actionSheet()
    }
    
    
    ///Methods or Functions
    private func defaultAlert(title : String, message : String, buttonTitle : String){
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: buttonTitle,
                                      style: .default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func destructiveAlert(title : String, message : String, buttonTitle : String){
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: buttonTitle,
                                      style: .destructive,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func twoAlerts(title : String, message: String, firstTitle: String, secondTitle: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: firstTitle, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: secondTitle, style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func fieldsOnAlert(){
        let alert = UIAlertController(title: "Fields inside Alert", message: "Try entering Value in the textfield", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField { field in
            field.placeholder = "Enter Value here"
            field.keyboardType = .namePhonePad
        }
        alert.addAction(UIAlertAction(title: "Fetch Value", style: .default, handler: { _ in
            let value : String = alert.textFields![0].text!
            print("Value entered on Alert Pop Up - \(value)")
            self.label.text = "Value entered in the field is - \(value)"
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            //do nothing
            self.label.text = "Clicked on Cancel - Fields inside Alert"
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func actionAlert(){
        let x : Int = 10
        let y : Int = 2
        let alert = UIAlertController(title: "Action on Alert", message: "Let x=\(x), y=\(y)", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Addition", style: .default, handler: { _ in
            let add = x+y
            self.label.text = "Additon of x & y is \(add)"
        }))
        alert.addAction(UIAlertAction(title: "Subtraction", style: .default, handler: { _ in
            let sub : Int = x-y
            self.label.text = "Subtraction of x & y is \(sub)"
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func actionSheet(){
        let actionSheet = UIAlertController(title: "Action Sheet", message: "This is how action sheet looks like", preferredStyle: UIAlertController.Style.actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Button 1", style: .default, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Button 2", style: .default, handler: nil))
        self.present(actionSheet, animated: true, completion: {
            self.label.text = "Action Sheet appeared"
        })
    }
}

