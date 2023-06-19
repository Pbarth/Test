//
//  ProjectRemote.swift
//  
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation
import Combine
import Data

public class ProjectRemote: ProjectRemoteProtocol {
    
    public init() {
        
    }
    
    public func getProjects() -> AnyPublisher<[ProjectEntity], Error> {
        if let path = Bundle.main.path(forResource: "remoteProjects", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let result = try decoder.decode(ProjectResult.self, from: data)
                
                if let projects = result.result {
                    return Just(projects)
                        .setFailureType(to: Error.self)
                        .map({ $0.map({ ProjectEntity(model: $0) }) })
                        .eraseToAnyPublisher()
                } else {
                    return Just([ProjectEntity]())
                        .setFailureType(to: Error.self)
                        .eraseToAnyPublisher()
                }
                
            } catch let error {
                return Fail(error: error)
                    .eraseToAnyPublisher()
            }
        } else {
            return Just([ProjectEntity]())
                .setFailureType(to: Error.self)
                .eraseToAnyPublisher()
        }
    }
}
