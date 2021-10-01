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
    
    func getPermissionMainViewData(with negativeListener: @escaping VoidCompletionBlock, with positiveListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value,
                                      labelData: LabelComponentData(title: PermissionLocalizables.cameraPermissionTitle.value, subTitle: PermissionLocalizables.cameraPermissionSubtitle.value),
                                      actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: PermissionLocalizables.permissionNotNow.value, type: .outlined(.smooth)).setActionButtonListener(by: negativeListener),
                                                                         positiveButtonData: ActionButtonData(text: PermissionLocalizables.permissionOk.value, type: .filled(.smooth)).setActionButtonListener(by: positiveListener)))
    }
    
}
