//
//  PhotosPermissionManager.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 30.09.2021.
//

import Foundation

class PhotosPermissionManager: PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print ("request permission")
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.photos.value, labelData: LabelComponentData(title: "Photos Permission", subTitle: "Would you please give permission to access your photos."), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Not Now", type: .outlined(.bright)), positiveButtonData: ActionButtonData(text: "OK", type: .filled(.bright))))
    }
}
