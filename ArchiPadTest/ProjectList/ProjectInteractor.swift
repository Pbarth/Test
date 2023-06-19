//
//  ProjectInteractor.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import Foundation
import Combine
import Domain
import Factory

public class ProjectInteractor {
    
    @Injected(\.getProjectsUseCase) private var getProjectsUseCase: GetProjectsUseCase
    
    public var projectPublisher: AnyPublisher<[AppProject], Error> {
        projectSubject.eraseToAnyPublisher()
    }
    
    private(set) public var projects: [AppProject] = [AppProject]()
    
    private var projectSubject: PassthroughSubject<[AppProject], Error> = PassthroughSubject<[AppProject], Error>()
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    func fetchProjects() {
        getProjectsUseCase.invoke()
            .receive(on: RunLoop.main)
            .sink { completion in
                if case let .failure(completion) = completion {
                    print(completion.localizedDescription)
                    self.projectSubject.send(completion: .failure(completion))
                } else {
                    self.projectSubject.send(completion: .finished)
                }
            } receiveValue: { (projects: [AppProject]) in
                self.projects = projects
                self.projectSubject.send(projects)
            }
            .store(in: &cancellables)
    }
}
