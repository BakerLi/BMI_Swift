//
//  ViewController.swift
//  BMI_Swift
//
//  Created by 李旻 on 2017/2/16.
//  Copyright © 2017年 里民. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // except use line , is there something else to link these little geek ?
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    // this is used alert
    let alertController = UIAlertController(title : "Error", message: "text field is empty", preferredStyle: UIAlertControllerStyle.alert);
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("viewDidLoad");
        
        heightLabel.text = "Height";
        heightLabel.adjustsFontSizeToFitWidth = true;
        heightLabel.minimumScaleFactor = 12;
        
        
        weightLabel.text = "Weight";
        weightLabel.adjustsFontSizeToFitWidth = true;
        weightLabel.minimumScaleFactor = 12;

        
        resultLabel.text = "";
        resultLabel.adjustsFontSizeToFitWidth = true;
        resultLabel.minimumScaleFactor = 18;
        
        alertController.addAction(UIAlertAction(title : "fxxx xxx", style: UIAlertActionStyle.default));
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

  
   
    
    @IBAction func btClick(_ sender: Any) {
        
        if let heigh = heightTextField.text, heigh.isEmpty
        {
            self.present(alertController, animated: true, completion: nil);
            return;
        }
        
        
        
        let weigh = weightTextField.text! ;
        
        if (weigh.isEmpty)
        {
            self.present(alertController, animated: true, completion: nil);
            return;
        }
        
        
        let h = Double(heightTextField.text!);
        
        
        let w = Double(weightTextField.text!);
        let bmi = Double(w!/(h!*h!));
        
        resultLabel.text = String(bmi);
        
        

    }
    

}

