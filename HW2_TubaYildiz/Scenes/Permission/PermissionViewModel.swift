//
//  PermissionViewModel.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 30.09.2021.
//

import Foundation

class PermissionViewModel{
    
    private let manager: PermissionManagerProtocol
    
    init(manager: PermissionManagerProtocol){
        self.manager = manager
    }
   
    func getPermissionMainViewData() -> PermissionMainViewData {
        return manager.getPermissionMainViewData()
    }
    
    
    
}
