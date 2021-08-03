//
//  HUD.swift
//  SneakyStores
//
//  Created by apple on 03/08/2021.
//

import Foundation
import ProgressHUD

final class HUD {
    class func show(status: String) {
        DispatchQueue.main.async {
            ProgressHUD.show(status)
            ProgressHUD.animationType = .circleStrokeSpin
            ProgressHUD.colorBackground = .black
            ProgressHUD.colorHUD = #colorLiteral(red: 0.1650000066, green: 0.7799999714, blue: 0.9959999919, alpha: 1)
            ProgressHUD.colorAnimation = #colorLiteral(red: 0.1650000066, green: 0.7799999714, blue: 0.9959999919, alpha: 1)
        }
    }
    
    class func hide() {
        DispatchQueue.main.async {
         ProgressHUD.dismiss()
        }
    }
}
