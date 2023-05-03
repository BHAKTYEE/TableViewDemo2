//
//  FourthViewController.swift
//  table view
//
//  Created by Mac on 31/03/22.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let name : [String] = ["Bhagyashri","Sakshi","Jagruti"]
    let age : [String] = ["21","22","21","22"]
    let image : [String] = ["Rose","Sunflower","Marigold"]
    
    
    
 
    @IBOutlet weak var images: UIImageView!
    
    @IBOutlet weak var subtitleTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        subtitleTableView.delegate = self
        subtitleTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell8 = self.subtitleTableView.dequeueReusableCell(withIdentifier: "cell8")
        cell8?.textLabel!.text = self.name[indexPath.row]
        cell8?.detailTextLabel?.text = self.age[indexPath.row]
        cell8?.imageView?.image = UIImage(named: image[indexPath.row])
        return cell4!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
