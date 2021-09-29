//
//  PermissionMainView.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 29.09.2021.
//

import UIKit

class PermissionMainView: GenericBaseView<PermissionMainViewData>{
    
    private lazy var containerView: UIView = {
       let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }() //boş container, padding vs verirken yönetim kolaylığı sağlar
    
    private lazy var mainStackView: UIStackView = {
    
        let temp = UIStackView(arrangedSubviews: [permissionImage, permissionInfoView, actionModule])
        
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center //butonlar ortalıyor
        temp.distribution = .fill //butonlar stackview ı doldursun
        temp.axis = .vertical
        temp.spacing = 10
        return temp
        
        
    }()
 
    private lazy var permissionImage: UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints =  false
        temp.contentMode = .scaleAspectFill
        return temp
        
    }()
    
    private lazy var permissionInfoView: LabelComponent = {
        let temp =  LabelComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
        
    }()
    
    private lazy var actionModule: ActionModule = {
        let temp =  ActionModule()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
        
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        setupContainerViewLayers()
    }
    private func addUserComponents(){
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -60),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            

        ])
        
    }
    private func setupContainerViewLayers(){
        containerView.layer.cornerRadius = 10
        containerView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else {return }
        permissionImage.image = data.image
        permissionInfoView.setData(by: data.labelData)
        actionModule.setData(by: data.actionModuleData)
    }
}
