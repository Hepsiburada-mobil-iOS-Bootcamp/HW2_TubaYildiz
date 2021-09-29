//
//  CameraPermissionManager.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 30.09.2021.
//

import Foundation


class CameraPermissionManager: PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print ("request permission")
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value, labelData: LabelComponentData(title: "Camera Permission", subTitle: "Would you please give permission to access your camera."), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Not Now", type: .outlined(.smooth)), positiveButtonData: ActionButtonData(text: "OK", type: .filled(.smooth))))
    }
}
