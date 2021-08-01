//
//  ProfileViewModel.swift
//  SneakyStores
//
//  Created by apple on 01/08/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth
import UIKit

struct ProfileModel {
    var address = ""
    var phoneNumber = ""
}

extension ProfileModel: RequestParameter {
    
    var asParameter: Parameter {
        return ["address": address, "phoneNumber": phoneNumber]
    }
}
