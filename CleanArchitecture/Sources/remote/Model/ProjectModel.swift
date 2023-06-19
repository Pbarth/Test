//
//  ProjectModel.swift
//  
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation

public struct ProjectModel: Codable {
    let id: String?
    let name: String?
    let lastModificationDate: Int?
    let creationDate: Int?
    let localCopy: Bool?
    let lastPatchID: String?
    let creatorID: Int?
    let owned: Bool?
    let path: String?
    let photoURL: String?
    let bugWorkflow: Bool?
    let dependencies: [ProjectModel.DependencyModel]?
    let available: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case lastModificationDate
        case creationDate
        case localCopy
        case lastPatchID = "lastPatchId"
        case creatorID = "creatorId"
        case owned
        case path
        case photoURL = "photoUrl"
        case bugWorkflow
        case dependencies
        case available
    }
}
