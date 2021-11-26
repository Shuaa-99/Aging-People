//
//  ViewController.swift
//  Adding-totheBeastList
//
//  Created by administrator on 04/10/2021.
//

import UIKit
let cellname = "student"

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
  
    var studentArray = ["Shuaa","Wasan","Rod","Ahmed","Nawal","Naif","Ali","Mostafa","Kiven","Dany","Fahad","Reema"]
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view.
        tableview.dataSource = self
        tableview.delegate = self
        tableview.reloadData()   //When app loads, display 12 rows.
    }
   
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath )
    cell.textLabel?.text = studentArray[indexPath.row]  // Names should be displayed in main label
        let arrayRabdomAge = Int.random(in: 5...95)
cell.detailTextLabel?.text = String(arrayRabdomAge) + " years old" // "{random number} years old" displayed in detail label
    return cell}
 
  
  
  
  
}
