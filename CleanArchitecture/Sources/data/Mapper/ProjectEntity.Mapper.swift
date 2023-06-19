//
//  ProjectEntity.Mapper.swift
//  
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation
import Domain

extension ProjectEntity {
    public init(project: AppProject) {
        self.init(id: project.id,
                  name: project.name,
                  lastModificationDate: Int(project.lastModificationDate?.timeIntervalSince1970 ?? Date().timeIntervalSince1970),
                  creationDate: project.creationDate,
                  localCopy: project.localCopy,
                  lastPatchID: project.lastPatchID,
                  creatorID: project.creatorID,
                  owned: project.owned,
                  path: project.path,
                  photoURL: project.photoURL,
                  bugWorkflow: project.bugWorkflow,
                  dependencies: nil,
                  available: project.available)
    }
}

extension AppProject {
    public init(entity: ProjectEntity) {
        self.init(id: entity.id,
                  name: entity.name,
                  lastModificationDate: entity.lastModificationDate,
                  creationDate: entity.creationDate,
                  localCopy: entity.localCopy,
                  lastPatchID: entity.lastPatchID,
                  creatorID: entity.creatorID,
                  owned: entity.owned,
                  path: entity.path,
                  photoURL: entity.photoURL,
                  bugWorkflow: entity.bugWorkflow,
                  dependencies: nil,
                  available: entity.available)
    }
}
