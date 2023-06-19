//
//  ProjectRemoteProtocol.swift
//  
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation
import Combine

public protocol ProjectRemoteProtocol {
    func getProjects() -> AnyPublisher<[ProjectEntity], Error>
}
