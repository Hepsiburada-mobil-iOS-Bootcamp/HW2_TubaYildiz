//
//  ActionModule.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import UIKit

class ActionModule: GenericBaseView<ActionModuleData>{

    private lazy var containerView: UIView = {
       let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
    
        let temp = UIStackView(arrangedSubviews: [negativeButton, positiveButton])
        
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center //butonlar ortalıyor
        temp.distribution = .fill //butonlar stackview ı doldursun
        temp.axis = .horizontal
        temp.spacing = 20
        return temp
        
        
    }()
    private lazy var negativeButton: ActionButton = {
       let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 120).isActive = false
        return temp
    }()
    
    private lazy var positiveButton: ActionButton = {
       let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 120).isActive = false
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    private func addUserComponents(){
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            

        ])
        
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else {return }
        negativeButton.setData(by: data.negativeButtonData)
        positiveButton.setData(by: data.positiveButtonData)
    }
}
