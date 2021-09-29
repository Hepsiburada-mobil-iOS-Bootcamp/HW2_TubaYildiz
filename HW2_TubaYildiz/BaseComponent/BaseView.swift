//
//  BaseView.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import UIKit

class BaseView: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    func addMajorViewComponents(){}
    func setupViewConfigurations(){}
}
