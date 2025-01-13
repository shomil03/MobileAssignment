//
//  ApiService.swift
//  Assignment
//
//  Created by Kunal on 10/01/25.
//

import Foundation

enum NetworldError : Error {
    case invalidResponse
    case invalidData
}
class ApiService : NSObject {
    private let baseUrl = ""
    
    private let sourcesURL = URL(string: "https://api.restful-api.dev/objects")!
//    let url = baseUrl + sourcesURL
    func fetchDeviceDetails() async throws -> [DeviceData] {
        
        let (data , response) = try await URLSession.shared.data(from: sourcesURL)
        
        guard let response = response as? HTTPURLResponse else {
            throw NetworldError.invalidResponse
        }
        
//        if response.isNotEqual(to: 200) {
//            throw NetworldError.invalidResponse
//        }
        
        let DeviceDetails = try JSONDecoder().decode([DeviceData].self, from: data)
        
        return DeviceDetails
        
        
    }
//    func fetchDeviceDetails(completion : @escaping ([DeviceData]) -> ()){
//        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
//            if let error = error {
//                print("Network error: \(error.localizedDescription)")
//                completion([]) // Return an empty array on network failure
//                return
//            }
//            
//            if let data = data {
//                let jsonDecoder = JSONDecoder()
//                let empData = try! jsonDecoder.decode([DeviceData].self, from: data)
//                if (empData.isEmpty) {
//                    completion([])
//                }
//            }
//        }.resume()
//    }
}
