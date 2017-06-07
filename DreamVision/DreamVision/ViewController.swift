//
//  ViewController.swift
//  DreamVision
//
//  Created by RAJ KHAITAN on 5/22/16.
//  Copyright © 2016 DreamVision. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {





    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBOutlet weak var theSetAlarm: UILabel!
    
    @IBOutlet weak var theSetAlarm2: UILabel!
    @IBOutlet weak var theSetAlarm3: UILabel!
    
    @IBOutlet weak var theSetAlarm4: UILabel!
    
    @IBOutlet weak var theSetAlarm5: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var enterInformationOneLabel: UILabel!
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var musicInfoLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    
    @IBOutlet var newAge: UITextField!
    
    @IBOutlet var newWeight: UITextField!

    @IBOutlet var newHeight: UITextField!
    
    @IBAction func infoPage2bt(_ sender: AnyObject) {
    }
    @IBOutlet var resultBMI: UILabel!
    
    @IBOutlet var resultBMI2: UILabel!
    
    @IBAction func playMusic(_ sender: AnyObject) {
        
        ButtonAudioPlayer.play()
        
    }
    
    var dateText = ""

    @IBAction func datePickerAction(_ sender: AnyObject) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let strDate = dateFormatter.string(from: myDatePicker.date)
        self.dateText = strDate
        
    }
    @IBAction func setAlarm(_ sender: AnyObject) {
        if theSetAlarm.text == "" {
            
            theSetAlarm.text = dateText
            
        } else if theSetAlarm2.text == "" {
            
            theSetAlarm2.text = dateText

        } else if theSetAlarm3.text == "" {
            
            theSetAlarm3.text = dateText
            
        } else if theSetAlarm4.text == "" {
            
            theSetAlarm4.text = dateText
            
        } else {
            
            theSetAlarm5.text = dateText
        }
    
        
        
    }
    

    @IBAction func alarmSwitch1(_ sender: AnyObject) {
        
    }
    
    
    @IBAction func getBMINew(_ sender: AnyObject) {
        
        var height2 = Int(newHeight.text!)!
        
        height2 = height2 * height2
        
        var weight2 = Int(newWeight.text!)!
        
        weight2 = weight2 * 703
        
        var bminew = weight2 / height2
        
        bminew = weight2 / height2
        
        if bminew <= 18 {
            
            
            resultBMI2.text = "Your bmi is \(bminew). You are slightly underweight. You are getting an ideal amount of sleep but make sure you are not oversleeping. "
            
            
        } else if bminew > 18 && bminew < 25 {
            
            resultBMI2.text = "Your bmi is \(bminew). You are perfectly normal but make sure you don't start slacking on your sleep. "
            
            
        } else if bminew >= 25 && bminew < 30 {
            
            resultBMI2.text = "Your bmi is \(bminew). You are slightly overweight. You should be getting more sleep. "
            
            
        } else {
            
            resultBMI2.text = "Your bmi is \(bminew). You are slightly underweight. You should be getting more sleep. "
            
        }
    }
    
    @IBAction func getBMI(_ sender: AnyObject) {
        
           /* var age = Int(ageTextField.text!)!
        
            var name = firstNameTextField.text! */
        
            var height = Int(heightTextField.text!)!
        
            height = height * height
        
            var weight = Int(weightTextField.text!)!
        
            weight = weight * 703
        
            var bmi = weight / height
        
            bmi = weight / height
        
            if bmi <= 18 {
            
                
                resultBMI.text = "Your bmi is \(bmi). You are slightly underweight. You are getting an ideal amount of sleep but make sure you are not oversleeping. "
                
            
            } else if bmi > 18 && bmi < 25 {
                
                resultBMI.text = "Your bmi is \(bmi). You are perfectly normal but make sure you don't start slacking on your sleep. "
                
                
            } else if bmi >= 25 && bmi < 30 {
                
                resultBMI.text = "Your bmi is \(bmi). You are slightly overweight. You should be getting more sleep. "
                
                
            } else {
                
                resultBMI.text = "Your bmi is \(bmi). You are slightly underweight. You should be getting more sleep. "
                
            }
    
    }
    
    var ButtonAudioURL = URL(fileURLWithPath: Bundle.main.path(forResource: "sleepPlaylist", ofType: "mp3")!)
    
    var ButtonAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
         try ButtonAudioPlayer = AVAudioPlayer(contentsOf: ButtonAudioURL)
        } catch {
           /* musicStatusLabel.text = "Sorry. Something went wrong. Cannot play music" */
        }
        
       /* currentTime.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.ShortStyle) */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    


}

