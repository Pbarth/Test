//
//  GetProjectsUseCase.swift
//  
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation
import Combine

public struct GetProjectsUseCase {
    public var repository: ProjectsRepositoryProtocol
    
    public init(repository: ProjectsRepositoryProtocol) {
        self.repository = repository
    }
    
    public func invoke() -> AnyPublisher<[AppProject], Error> {
        repository.getProjects()
    }
}
