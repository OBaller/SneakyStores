//
//  HUD.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//

import Foundation
import SVProgressHUD

final class HUD {
    class func show(status: String) {
        DispatchQueue.main.async {
            SVProgressHUD.setDefaultStyle(.custom)
            SVProgressHUD.setDefaultMaskType(.custom)
            SVProgressHUD.setForegroundColor(.systemBlue)
            SVProgressHUD.setBackgroundColor(.black)
            SVProgressHUD.setBackgroundLayerColor(.clear)
            SVProgressHUD.show(withStatus: status)
        }
    }
    
    class func hide() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
}

