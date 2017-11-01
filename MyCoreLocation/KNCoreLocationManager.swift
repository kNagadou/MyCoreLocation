//
//  KNCoreLocationManager.swift
//  KNCoreLocationManager
//
//  Created by k_nagadou on 2017/10/11.
//  Copyright © 2017年 kzms33-4.com. All rights reserved.
//

import UIKit
import CoreLocation

class KNCoreLocationManager: CLLocationManager {
    static let sharedInstance: KNCoreLocationManager = {
        let instance = KNCoreLocationManager()
        return instance
    }()
}
