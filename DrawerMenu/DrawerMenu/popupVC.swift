//
//  popupVC.swift
//  DrawerMenu
//
//  Created by user on 30/11/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class popupVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var popupView: UIView!
    var vehicleType : [String] = ["Tractor", "Trailer", "Forklift", "Dolly"];
    var viewCon : ViewController!;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.view.alpha = 0.25;
        popupView.layer.cornerRadius = 15
        popupView.layer.shadowColor = UIColor.black.cgColor
        popupView.layer.shadowOffset = CGSize(width: 0, height: 3)
        popupView.layer.shadowOpacity = 0.9
        popupView.layer.shadowRadius = 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicleType.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell");
        cell.textLabel?.text = vehicleType[indexPath.row];
        return cell;
    }
    
    func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewCon.selectvehicleTypeBtn.setTitle( vehicleType[indexPath.row], for: .normal);
        self.dismiss(animated: true, completion: nil);
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
