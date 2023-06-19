//
//  ProjectEntity.swift
//  
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation

public struct ProjectEntity {
    public let id: String?
    public let name: String?
    public let lastModificationDate: Int?
    public let creationDate: Int?
    public let localCopy: Bool?
    public let lastPatchID: String?
    public let creatorID: Int?
    public let owned: Bool?
    public let path: String?
    public let photoURL: String?
    public let bugWorkflow: Bool?
    public let dependencies: [ProjectEntity.DependencyEntity]?
    public let available: Bool?
    
    public init(id: String? = nil,
                name: String? = nil,
                lastModificationDate: Int? = nil,
                creationDate: Int? = nil,
                localCopy: Bool? = nil,
                lastPatchID: String? = nil,
                creatorID: Int? = nil,
                owned: Bool? = nil,
                path: String? = nil,
                photoURL: String? = nil,
                bugWorkflow: Bool? = nil,
                dependencies: [ProjectEntity.DependencyEntity]? = nil,
                available: Bool? = nil) {
        self.id = id
        self.name = name
        self.lastModificationDate = lastModificationDate
        self.creationDate = creationDate
        self.localCopy = localCopy
        self.lastPatchID = lastPatchID
        self.creatorID = creatorID
        self.owned = owned
        self.path = path
        self.photoURL = photoURL
        self.bugWorkflow = bugWorkflow
        self.dependencies = dependencies
        self.available = available
    }
}
