//
//  PermissionViewController.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 29.09.2021.
//

import UIKit

class PermissionViewController: UIViewController {

    private var viewModel: PermissionViewModel!
    private var permissionMainView: PermissionMainView!
    
    
    convenience init(viewModel: PermissionViewModel)
    {
        self.init()
        self.viewModel = viewModel
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addPermissionMainView()
    }
    
    private func addPermissionMainView(){
        permissionMainView = PermissionMainView(data: viewModel.getPermissionMainViewData())
        permissionMainView.translatesAutoresizingMaskIntoConstraints =  false
        view.addSubview(permissionMainView)
        
        NSLayoutConstraint.activate([
            permissionMainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            permissionMainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            permissionMainView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
//    private func getPermissionViewData() -> PermissionMainViewData{
//        return PermissionMainViewData(image: PermissionImages.camera.value, labelData: LabelComponentData(title: "Camera Permission", subTitle: "Would you please give permission to access your camera."), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Not Now", type: .outlined(.smooth)), positiveButtonData: ActionButtonData(text: "OK", type: .filled(.smooth))))
//
//    }

}
