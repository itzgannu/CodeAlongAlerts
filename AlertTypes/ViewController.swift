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
        self.view.backgroundColor = .cyan
    }


    @IBAction func DefaultAlertButton(_ sender: UIButton) {
        let title : String = "Notification"
        let message : String = "You have clicked Default Alert Button!"
        let buttonTitle: String = "Okay"
        defaultAlert(title: title, message: message, buttonTitle: buttonTitle)
        // Display on label
        label.text = "Clicked on Default Alert Button"
    }
    
    
    @IBAction func DestructiveAlertButton(_ sender: UIButton) {
        let title : String = "Notification"
        let message : String = "You have clicked Destructive Alert Button!"
        let buttonTitle: String = "Dismiss"
        destructiveAlert(title: title, message: message, buttonTitle: buttonTitle)
        // Display on label
        label.text = "Clicked on Destructive Alert Button"
        
    }
    
    
    @IBAction func TwoOptionsAlert(_ sender: UIButton) {
        let title : String = "Notification"
        let message : String = "You have clicked on Two Option Alert Button!"
        let firstButtonTitle : String = "Okay"
        let sencondButtonTitle : String = "Dismiss"
        twoAlerts(title: title, message: message, firstTitle: firstButtonTitle, secondTitle: sencondButtonTitle)
        //Display on label
        label.text = "Clicked on Two Option Alert Button"
    }
    
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
    
}

