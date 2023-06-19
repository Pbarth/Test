//
//  ProjectResult.swift
//  
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation

struct ProjectResult: Codable {
    let jsonrpc: String?
    let result: [ProjectModel]?
}
