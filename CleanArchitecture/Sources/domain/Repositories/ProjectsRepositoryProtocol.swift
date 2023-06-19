//
//  File.swift
//  
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation
import Combine

public protocol ProjectsRepositoryProtocol {
    func getProjects() -> AnyPublisher<[AppProject], Error>
}
