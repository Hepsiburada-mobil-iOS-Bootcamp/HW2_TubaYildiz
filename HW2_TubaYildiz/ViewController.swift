//
//  ViewController.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {

    //private var actionButton: ActionButton! //late init !
    //private var actionModule: ActionModule! //late init !

    
    @IBAction func cameraButtonTapped(_ sender: Any) {
        print("Camera Tapped")
        present(PermissionViewBuilder.build(with: .camera), animated: true) {
            print("permission view controller is presented")
        }
    }
    
    @IBAction func photosButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        present(PermissionViewBuilder.build(with: .photos), animated: true) {
            print("permission view controller is presented")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
  

}
