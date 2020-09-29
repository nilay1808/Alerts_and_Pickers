//
//  ViewController.swift
//  Alerts_and_Pickers
//
//  Created by Nilay Sadavarte on 9/29/20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let questionList = ["Are you sure?", "continue?", "Is this a question?"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return questionList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return questionList[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let alertController = UIAlertController(title: "Alert", message: questionList[row], preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "OK", style: .default) {
        (action:UIAlertAction) in print("You've pressed OK");
        }

        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in print("You've pressed cancel");
        }
        
        alertController.addAction(action1)
        alertController.addAction(action2)

        self.present(alertController, animated: true, completion: nil)

    }
    
    
    @IBOutlet weak var my_picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        my_picker.delegate = self
        my_picker.dataSource = self
    }


}

