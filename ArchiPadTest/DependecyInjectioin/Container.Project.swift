//
//  Container.Project.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation
import Factory
import Domain
import Data
import Remote

extension Container {
    var getProjectsUseCase: Factory<GetProjectsUseCase> {
        Factory(self) { GetProjectsUseCase(repository: self.projectRepository.resolve()) }
    }
    
    var projectRepository: Factory<ProjectsRepositoryProtocol> {
        self { ProjectRepository(remote: self.projectRemote.resolve()) }
    }
    
    var projectRemote: Factory<ProjectRemoteProtocol> {
        self { ProjectRemote() }
    }
    
    var projectInteractor: Factory<ProjectInteractor> {
        self { ProjectInteractor() }
            .singleton
    }
}
