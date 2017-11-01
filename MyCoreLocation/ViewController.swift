//
//  ViewController.swift
//  MyCoreLocation
//
//  Created by k_nagadou on 2017/10/11.
//  Copyright © 2017年 kzms33-4.com. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    var locationManager: CLLocationManager!
    
    @IBOutlet weak var locationInfo: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onStartButton(_ sender: UIButton) {
        locationManager.startUpdatingLocation()
    }
    
    @IBAction func onStopButton(_ sender: UIButton) {
        locationManager.stopUpdatingLocation()
        locationInfo.text = "Stop Updating Location!!"
    }
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        for location in locations {
            let str = "\(location)"
            locationInfo.text = "\(str)"
            print("\(str)")
        }
    }
}
