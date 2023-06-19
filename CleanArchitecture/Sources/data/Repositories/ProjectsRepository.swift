//
//  ProjectRepository.swift
//  
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation
import Combine
import Domain

public class ProjectRepository: ProjectsRepositoryProtocol {
    
    private var remote: ProjectRemoteProtocol
    
    public init(remote: ProjectRemoteProtocol) {
        self.remote = remote
    }
    
    public func getProjects() -> AnyPublisher<[AppProject], Error> {
        remote.getProjects()
            .map({ $0.map({ AppProject(entity: $0) }) })
            .eraseToAnyPublisher()
    }
}
