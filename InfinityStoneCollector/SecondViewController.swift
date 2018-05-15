//
//  SecondViewController.swift
//  InfinityStoneCollector
//
//  Created by Macho Man on 15/05/18.
//  Copyright © 2018 siddharth. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.Label.text =  myArray[indexPath.row]
        if(cell.Label.text == " Thanos has obtained the Reality Stone")
        {
            cell.imageView?.image = #imageLiteral(resourceName: "red")
        }
        if(cell.Label.text == " Thanos has obtained the Power Stone")
        {
            cell.imageView?.image = #imageLiteral(resourceName: "purple")
        }
        if(cell.Label.text == " Thanos has obtained the Space Stone")
        {
            cell.imageView?.image = #imageLiteral(resourceName: "blue")
        }
        if(cell.Label.text == " Thanos has obtained the Soul Stone")
        {
            cell.imageView?.image = #imageLiteral(resourceName: "orange")
        }
        if(cell.Label.text == " Thanos has obtained the Mind Stone")
        {
            cell.imageView?.image = #imageLiteral(resourceName: "yellow")
        }
        if(cell.Label.text == " Thanos has obtained the Time Stone")
        {
            cell.imageView?.image = #imageLiteral(resourceName: "green")
        }
        
        return cell
    }
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 65.0
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AnimateTable()
    }
    func AnimateTable()
    {
        TableView.reloadData()
        let cells = TableView.visibleCells
        let TableViewHeight = TableView.bounds.size.height
        for cell in cells{
            cell.transform = CGAffineTransform(translationX: 0, y: TableViewHeight)
        }
        var DelayCounter = 0
        for cell in cells{
            UIView.animate(withDuration: 1.75, delay: Double(DelayCounter)*0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            DelayCounter += 1
        }
    }
    
    
    @IBOutlet weak var TableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
