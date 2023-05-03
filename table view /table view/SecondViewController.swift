//
//  SecondViewController.swift
//  table view
//
//  Created by Mac on 31/03/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let playername : [String] = ["rohit","virat","hardik","babar"]
    
    let country : [String] = ["India","India","India","pak"]
    
    
    @IBOutlet weak var cricketTeam: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cricketTeam.dataSource = self
        cricketTeam.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.playername.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = self.cricketTeam.dequeueReusableCell(withIdentifier: "cell1")
        cell1?.textLabel?.text = self.playername[indexPath.row]
        cell1?.detailTextLabel?.text = self.country[indexPath.row]
        cell1?.backgroundColor = .red
        cell1?.detailTextLabel?.textColor = .yellow
        cell1?.textLabel?.textColor = .blue
        return cell1!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "cricket team player \(section)"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "section --\(section)"
    }
}
