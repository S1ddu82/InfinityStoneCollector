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
    var AnimationPerformedOnce = false
    var From : Int = 0
    var To: Int = 5
    var Array = [Int]()
    var I = 0
    
    @IBAction func Action(_ sender: Any) {
        Stone = Array[I]
        if(Stone == 0)
        {   if(Purple == 0){
            UIView.animate(withDuration: 0.5, animations: {
            self.VC.backgroundColor = UIColor.purple
        }, completion: nil)
            TextField.text = (" Thanos has obtained the Power Stone")
            myArray.append(TextField.text!)
            Purple = 1
            print("Purple")
        }
        }
        else if(Stone == 1)
        {
            if(Blue == 0){
            UIView.animate(withDuration: 0.5, animations: {
            self.VC.backgroundColor = UIColor.blue
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Space Stone")
            myArray.append(TextField.text!)
            Blue = 1
            
            
            
            print("Blue")
            
            }}
        else if(Stone == 2)
        {
            if(Green == 0)
            {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.green
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Time Stone")
            myArray.append(TextField.text!)
            
            Green = 1
            print("Green")
            
            }}
        else if(Stone == 3)
        {if(Red == 0)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.red
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Reality Stone")
            
            myArray.append(TextField.text!)
            Red = 1
            print("Red")
            
            }}
        else if(Stone == 4)
        {if(Orange == 0)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.orange
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Soul Stone")
            myArray.append(TextField.text!)
            
            Orange = 1
            print("Orange")
            
            }}
        else if(Stone == 5)
        {if(Yellow == 0)
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.VC.backgroundColor = UIColor.yellow
            }, completion: nil)
            TextField.text = (" Thanos has obtained the Mind Stone")
            myArray.append(TextField.text!)
            
            Yellow = 1
            print("Yellow")
            
            }}
        
        if(Red + Green + Blue + Yellow + Purple + Orange == 6)
        {
            
            Alert(title: "Mission Complete", message: "Thanos has obtained all Infinity Stones")
        }
        
         if(I != 5)
         {
         I += 1
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
        Array.removeAll()
        GenerateRandomNumber(From, To, nil)
        I = 0
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var VC: UIView!
    
    @IBOutlet weak var InfinityStones: UIButton!
    
    @IBOutlet weak var List: UIButton!
    @IBOutlet weak var Reset: UIButton!
    
    @IBOutlet weak var TextField: UITextField!
    
    func GenerateRandomNumber ( _ from:Int, _ to:Int,   _ qut:Int?) -> [Int]
    {
        var MyRandomNumber = [Int]()
        var NumberofNumbers = qut
        let lower = UInt32(from)
        let higher = UInt32(to+1)
        if(NumberofNumbers == nil || NumberofNumbers! >  (to-from) + 1)
        {
            NumberofNumbers = (to-from) + 1
            
        }
        while MyRandomNumber.count != NumberofNumbers
        {
            let MyNumber = arc4random_uniform(higher-lower) + lower
            if !MyRandomNumber.contains(Int(MyNumber))
            {
                MyRandomNumber.append(Int(MyNumber))
                Array.append(Int(MyNumber))
            }
            
        }
        print(MyRandomNumber)
        
        return MyRandomNumber
        
        
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        GenerateRandomNumber(From, To, nil)
        
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

