//
//  ProjectModel.DependencyModel.swift
//  
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation

extension ProjectModel {
    public struct DependencyModel: Codable {
        let bundleID: String?
        
        enum CodingKeys: String, CodingKey {
            case bundleID = "bundleId"
        }
    }
}
