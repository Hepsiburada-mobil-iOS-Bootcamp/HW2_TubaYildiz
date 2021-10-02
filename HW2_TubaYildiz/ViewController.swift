//
//  ViewController.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    private lazy var mainStackView: UIStackView = {
          let temp = UIStackView(arrangedSubviews: [cameraButton, photosButton])
          temp.translatesAutoresizingMaskIntoConstraints = false
          temp.isUserInteractionEnabled = true
          temp.alignment = .center
          temp.distribution = .fill
          temp.axis = .vertical
          temp.spacing = 20
          return temp
      }()
    
    private lazy var cameraButton: ActionButton = {
            let temp = ActionButton()
            
            temp.translatesAutoresizingMaskIntoConstraints = false
            temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
            temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        temp.setData(by: ActionButtonData(text: PermissionLocalizables.camera.value, type: .filled(.smooth)).setActionButtonListener(by: cameraListenerHandler))
            return temp
        }()
        
        private lazy var photosButton: ActionButton = {
            let temp = ActionButton()
            temp.translatesAutoresizingMaskIntoConstraints = false
            temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
            temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
            temp.setData(by: ActionButtonData(text: PermissionLocalizables.photos.value, type: .filled(.bright)).setActionButtonListener(by: photosListenerHandler))
            return temp
        }()
    
    
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
        addSth()
    }
  
    private func addSth(){
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(mainStackView)

        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)

 
        ])
       
    }
    func cameraListenerHandler() {
        print ("camera pressed")
        present(PermissionViewBuilder.build(with: .camera), animated: true) {
            print("permission view controller is presented")
        }
        
    }
    func photosListenerHandler(){
        
        present(PermissionViewBuilder.build(with: .photos), animated: true) {
            print("permission view controller is presented")
        }
    }
}
