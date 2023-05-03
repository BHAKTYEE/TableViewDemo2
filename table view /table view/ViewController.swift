//
//  ViewController.swift
//  table view
//
//  Created by Mac on 31/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let playername : [String] = ["rohit","virat","hardik","jadeja","bumrah","shami"]
    
    let snacks : [String] = ["poha","bhaji","vadapav","samosa"]
    
    @IBOutlet weak var cricketTeam: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cricketTeam.dataSource = self
        cricketTeam.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return self.playername.count
    }
        else{
            return self.snacks.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = self.cricketTeam.dequeueReusableCell(withIdentifier: "Cell")
        if indexPath.section == 0
        {
            Cell?.textLabel?.text = self.playername[indexPath.row]
            Cell?.textLabel?.textColor = .yellow
        Cell?.backgroundColor = .blue
        }
        else
        {
            Cell?.textLabel?.text = self.snacks[indexPath.row]
            Cell?.backgroundColor = .blue
            Cell?.textLabel?.textColor = .red
        }
        return Cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "team Player\(section)"
    }
   
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "footer=\(section)"
    }
    }

