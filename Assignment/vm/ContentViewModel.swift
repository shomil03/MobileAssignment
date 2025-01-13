//
//  ContentViewModel.swift
//  Assignment
//
//  Created by Kunal on 10/01/25.
//

import Foundation
import SwiftUI

@Observable
class ContentViewModel{
    
    private let apiService = ApiService()
    var navigateDetail: DeviceData? = nil
    var allDevices: [DeviceData]? = []
    var data : [DeviceData]? = []
    func fetchAPI() async {
        do{
           data = try await apiService.fetchDeviceDetails()
            allDevices = data
            
        }catch
        {
            print("Error")
        }
//        apiService.fetchDeviceDetails(completion: { item in
//            self.data = item
//        })
    }
    
    func navigateToDetail(navigateDetail: DeviceData) {
        self.navigateDetail = navigateDetail
    }
    
    func navigateBack(){
//        navigateDetail =
    }
}
