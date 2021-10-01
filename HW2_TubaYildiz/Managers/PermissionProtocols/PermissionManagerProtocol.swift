//
//  PermissionManagerProtocol.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 30.09.2021.
//

import Foundation

enum PermissionType{
    case camera
    case photos
}
protocol PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock)
    
    func getPermissionMainViewData(with negativeListener: @escaping VoidCompletionBlock, with positiveListener: @escaping VoidCompletionBlock) -> PermissionMainViewData
    
}
