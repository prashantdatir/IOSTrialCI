//
//  VerifyWithVINAndLicViewController.swift
//  DrawerMenu
//
//  Created by user on 30/11/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class VerifyWithVINAndLicViewController: UIViewController {
    @IBOutlet weak var scanQRCodeBtn: UIButton!
    @IBOutlet weak var licensePlateNumber: UITextField!
    @IBOutlet weak var detailDisclosureBtn: UIButton!
    
    @IBOutlet weak var detailDisclosureView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // licensePlateNumber textField border
        licensePlateNumber.borderStyle = .none
        licensePlateNumber.font = UIFont.boldSystemFont(ofSize: 17);
        let licensePlateNumberTextFieldBorder : CALayer = CALayer.init();
        licensePlateNumberTextFieldBorder.borderColor = UIColor.gray.cgColor;
        licensePlateNumberTextFieldBorder.frame = CGRect(x: 0,
                                           y: licensePlateNumber.frame.size.height - 2,
                                           width: licensePlateNumber.frame.size.width,
                                           height: 2);
        licensePlateNumberTextFieldBorder.borderWidth = 2;
        licensePlateNumber.layer.addSublayer(licensePlateNumberTextFieldBorder);
        licensePlateNumber.layer.masksToBounds = true;
        
        //scanQRCodeBtn
        let scanQRCodeBtnBorder : CALayer = CALayer.init();
        let width = CGFloat(2.0);
        scanQRCodeBtnBorder.borderColor = UIColor.gray.cgColor;
        scanQRCodeBtnBorder.frame = CGRect(x: 0,
                                           y: scanQRCodeBtn.frame.size.height - width,
                                           width: view.frame.size.width,
                                           height: 2);
        scanQRCodeBtnBorder.borderWidth = width;
        scanQRCodeBtn.layer.addSublayer(scanQRCodeBtnBorder);
        scanQRCodeBtn.layer.masksToBounds = true;
        
        detailDisclosureView.isHidden = true;
    }
    @IBAction func scanQRCode(_ sender: Any) {
    }
    @IBAction func showDetailsOfUnitVIN(_ sender: Any) {
        
        if detailDisclosureView.isHidden == true {
            detailDisclosureView.isHidden = false;
            //detailDisclosureView.layer.cornerRadius = 15;
            detailDisclosureView.layer.shadowColor = UIColor.black.cgColor;
            detailDisclosureView.layer.shadowRadius = 3;
            detailDisclosureView.layer.shadowOffset = CGSize(width: 0, height: 3);
            detailDisclosureView.layer.shadowOpacity = 0.8;
            //detailDisclosureView.layer.masksToBounds = false;
            //detailDisclosureView.layer.opacity = 0.9;
        } else {
            detailDisclosureView.isHidden = true;
        }
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
