//
//  ThirdViewController.swift
//  table view
//
//  Created by Mac on 31/03/22.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    
    let employeeId : [String] = ["1","2","3","4","5","6"]
    let empName : [String] = ["Akansha","Pankuli","Sakshi","Shivanajali","Muskan","Meenakshi"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.employeeId.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell4 = self.employeeLeftDetailTableView.dequeueReusableCell(withIdentifier: "cell4")
        cell4?.textLabel?.text = self.employeeId[indexPath.row]
        cell4?.detailTextLabel?.text = self.empName[indexPath.row]
        cell4?.backgroundColor = .yellow
        return cell4!
    }
    
    
    @IBOutlet weak var employeeLeftDetailTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        employeeLeftDetailTableView.dataSource = self
        employeeLeftDetailTableView.delegate = self

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
