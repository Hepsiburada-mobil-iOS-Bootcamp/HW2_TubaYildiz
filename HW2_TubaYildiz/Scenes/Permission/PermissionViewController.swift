//
//  PermissionViewController.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 29.09.2021.
//

import UIKit

class PermissionViewController: BaseViewController<PermissionViewModel> {

    private var permissionMainView: PermissionMainView!
    
        
    override func prepareViewControllerConfigurations() {
        //super.prepareViewControllerConfigurations()
        addPermissionMainView()
        subscribeViewModelListeners()
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
    
    private func subscribeViewModelListeners(){
        viewModel.listenManagerActions { [weak self] in
            self?.dismiss(animated: true, completion: nil)
            
        }
    }

}
