//
//  ProjectModel.Mapper.swift
//  
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation
import Data

extension ProjectEntity {
    public init(model: ProjectModel) {
        self.init(id: model.id,
                  name: model.name,
                  lastModificationDate: model.lastModificationDate,
                  creationDate: model.creationDate,
                  localCopy: model.localCopy,
                  lastPatchID: model.lastPatchID,
                  creatorID: model.creatorID,
                  owned: model.owned,
                  path: model.path,
                  photoURL: model.photoURL,
                  bugWorkflow: model.bugWorkflow,
                  dependencies: nil,
                  available: model.available)
    }
}

extension ProjectModel {
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
