//
//  ViewController.swift
//  InfinityStoneCollector
//
//  Created by Macho Man on 15/05/18.
//  Copyright © 2018 siddharth. All rights reserved.
//

import UIKit
var Stone : Int = 0
var Number : Int = 1
var myArray = [String]()
var row : Int = 0

class ViewController: UIViewController {
    var Purple : Int = 0
    var Blue : Int = 0
    var Green : Int = 0
    var Red : Int = 0
    var Orange : Int = 0
    var Yellow : Int = 0
    var Purple1 : Int = 0
    var Blue1 : Int = 0
    var Green1 : Int = 0
    var Red1 : Int = 0
    var Orange1 : Int = 0
    var Yellow1 : Int = 0
    var AnimationPerformedOnce = false
    
    
    @IBAction func Action(_ sender: Any) {
        Stone = Int(arc4random_uniform(6))
        
        
        
        
        
        if(Stone == 0)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.purple
            }, completion: nil)
            
            TextField.text = (" Thanos has obtained the Power Stone")
            
            
            Purple = 1
            
            
            print("Purple")
            
            
            
        }
        else if(Stone == 1)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.blue
            }, completion: nil)
            
            TextField.text = (" Thanos has obtained the Space Stone")
            
            
            Blue = 1
            
            
            
            print("Blue")
            
        }
        else if(Stone == 2)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.green
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Time Stone")
            
            
            Green = 1
            print("Green")
            
        }
        else if(Stone == 3)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.red
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Reality Stone")
            
            
            Red = 1
            print("Red")
            
        }
        else if(Stone == 4)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.orange
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Soul Stone")
            
            
            Orange = 1
            print("Orange")
            
        }
        else if(Stone == 5)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.yellow
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Mind Stone")
            
            
            Yellow = 1
            print("Yellow")
            
        }
        
        if(Red + Green + Blue + Yellow + Purple + Orange == 6)
        {
            
            Alert(title: "Mission Complete", message: "Thanos has obtained all Infinity Stones")
        }
        
        
        if let Text = TextField.text
        {
            if(Text == " Thanos has obtained the Reality Stone")
            {
                if(Red1 == 0)
                {
                    myArray.append(Text)
                    Red1 += 1
                }
            }
            if(Text == " Thanos has obtained the Power Stone")
            {
                if(Purple1 == 0)
                {
                    myArray.append(Text)
                    Purple1 += 1
                }
            }
            if(Text == " Thanos has obtained the Space Stone")
            {
                if(Blue1 == 0)
                {
                    myArray.append(Text)
                    Blue1 += 1
                }
            }
            if(Text == " Thanos has obtained the Mind Stone")
            {
                if(Yellow1 == 0)
                {
                    myArray.append(Text)
                    Yellow1 += 1
                }
            }
            if(Text == " Thanos has obtained the Soul Stone")
            {
                if(Orange1 == 0)
                {
                    myArray.append(Text)
                    Orange1 += 1
                }
            }
            if(Text == " Thanos has obtained the Time Stone")
            {
                if(Green1 == 0)
                {
                    myArray.append(Text)
                    Green1 += 1
                }
            }
            
            
            
            
        }
        
    }
    func Alert (title:String , message:String)
    {
        let alert = UIAlertController(title:title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler:{ (action) in
            alert.dismiss(animated: true, completion: nil)}))
        self.present(alert,animated:true,completion: nil)
    }
    
    @IBAction func Reset(_ sender: Any) {
        Red = 0
        Orange = 0
        Yellow = 0
        Green = 0
        Blue = 0
        Purple = 0
        myArray.removeAll()
        TextField.text = ""
        VC.backgroundColor = UIColor.white
        UIView.animate(withDuration: 0.5, animations: {
            self.VC.backgroundColor = UIColor.white
            print("Done")
        }, completion: nil)
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var VC: UIView!
    
    @IBOutlet weak var InfinityStones: UIButton!
    
    @IBOutlet weak var List: UIButton!
    @IBOutlet weak var Reset: UIButton!
    
    @IBOutlet weak var TextField: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

