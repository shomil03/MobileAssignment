//
//  SeachImplementation.swift
//  Assignment
//
//  Created by Shomil Singh on 13/01/25.
//

import Foundation

func searchImplementation(string : String , data : [DeviceData] ) -> [DeviceData] {
    var res : [DeviceData] = []
    
    
    for device in data {
        if string == "" {
            res.append(device)
        }
        if device.name.contains(string) {
            res.append(device)
        }
        
    }
    return res
}
