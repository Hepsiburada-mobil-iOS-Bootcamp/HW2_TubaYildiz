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
    func getPermissionMainViewData(with negativeListener: @escaping VoidCompletionBlock, with positiveListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.photos.value, labelData: LabelComponentData(title: PermissionLocalizables.photosPermissionTitle.value, subTitle: PermissionLocalizables.photosPermissionSubTitle.value), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: PermissionLocalizables.permissionNotNow.value, type: .outlined(.bright)).setActionButtonListener(by: negativeListener), positiveButtonData: ActionButtonData(text: PermissionLocalizables.permissionOk.value, type: .filled(.bright)).setActionButtonListener(by: positiveListener)))
    }

}
    
