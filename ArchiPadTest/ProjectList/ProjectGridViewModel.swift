//
//  ProjectGridViewModel.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation
import Combine
import Domain
import Factory

public class ProjectGridViewModel: ObservableObject {
    @Published public var projects: [AppProject] = [AppProject]()
    
    @Injected (\.projectInteractor) private var interactor: ProjectInteractor
    
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    func fetchProjects() {
        interactor.projectPublisher
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { completion in
                if case let .failure(completion) = completion {
                    print(completion.localizedDescription)
                }
            }, receiveValue: { (projects: [AppProject]) in
                self.projects = projects
            })
            .store(in: &cancellables)
        
        interactor.fetchProjects()
    }
}
