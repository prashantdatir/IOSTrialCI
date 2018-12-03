//
//  ViewController.swift
//  DrawerMenu
//
//  Created by user on 30/11/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectvehicleTypeBtn: UIButton!
    @IBOutlet weak var UnitTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let border : CALayer = CALayer.init();
        border.borderColor = UIColor.gray.cgColor;
        border.frame = CGRect(x: 0,
                              y: selectvehicleTypeBtn.frame.size.height - 2,
                              width: selectvehicleTypeBtn.frame.size.width,
                              height: 2)
        border.borderWidth = 2;
        selectvehicleTypeBtn.layer.addSublayer(border);
        selectvehicleTypeBtn.layer.masksToBounds = true;
        
        UnitTextField.font = UIFont.boldSystemFont(ofSize: 17);
        let UnitTextFieldBorder : CALayer = CALayer.init();
        let width = CGFloat(2.0);
        UnitTextFieldBorder.borderColor = UIColor.gray.cgColor;
        UnitTextFieldBorder.frame = CGRect(x: 0,
                                           y: UnitTextField.frame.size.height - width,
                                           width: UnitTextField.frame.size.width,
                                           height: 2);
        UnitTextFieldBorder.borderWidth = width;
        UnitTextField.layer.addSublayer(UnitTextFieldBorder);
        UnitTextField.layer.masksToBounds = true;
        UnitTextField.borderStyle = .none;
    }

    @IBAction func selectVehicle(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "popupVC") as! popupVC;
        vc.viewCon = self;
        vc.modalPresentationStyle = .overFullScreen;
        vc.modalTransitionStyle = .crossDissolve;
        self.present(vc, animated: true, completion: nil);
    }
}
