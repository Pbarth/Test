//
//  AppProject.Sample.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation
import Domain

extension AppProject {
    public static var sample: AppProject {
        AppProject(id: "322280893250493237",
                   name: "Test",
                   lastModificationDate: nil,
                   creationDate: 1687127770,
                   localCopy: false,
                   lastPatchID: nil,
                   creatorID: nil,
                   owned: true,
                   path: nil,
                   photoURL: nil,
                   bugWorkflow: false,
                   dependencies: nil,
                   available: true)
    }
}

extension ProjectGridViewModel {
    public static var sample: ProjectGridViewModel {
        let viewModel = ProjectGridViewModel()
        viewModel.projects = [AppProject.sample, AppProject.sample]
        return viewModel
    }
}
