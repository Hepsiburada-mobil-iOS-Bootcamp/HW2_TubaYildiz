//
//  PermissionLocalizables.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 30.09.2021.
//

import Foundation


enum PermissionLocalizables: String, GenericValueProtocol{
    typealias value = String
    
    var value: String{
        return rawValue.toLocalize()
    }
    
    
    case cameraPermissionTitle  = "cameraPermissionTitle"
    case cameraPermissionSubtitle = "cameraPermissionSubtitle"


    case photosPermissionTitle = "photosPermissionTitle"
    case photosPermissionSubTitle = "photosPermissionSubTitle"

    case permissionOk = "permissionOk"
    case permissionNotNow = "permissionNotNow"
    
    case camera = "camera"
    case photos = "photos"
    
    
}
