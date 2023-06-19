//
//  ProjectGridView.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 18/06/2023.
//

import SwiftUI
import Domain

struct ProjectGridView: View {
    
    @StateObject private var viewModel: ProjectGridViewModel = ProjectGridViewModel()
    
    @State private var showDialog: Bool = false
    
    let columns = [
        GridItem(.adaptive(minimum: 200))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                Section {
                    ForEach(viewModel.projects.filter({ !$0.isCached }), id: \.id) { project in
                        ProjectGridView.GridItemView(project: project)
                            .onTapGesture {
                                self.showDialog.toggle()
                            }
                        
                    }
                } header: {
                    ProjectGridView.HeaderView(title: "Projects in the Cloud")
                }
                
                Section {
                    ForEach(viewModel.projects.filter({ $0.isCached }), id: \.id) { project in
                        ProjectGridView.GridItemView(project: project)
                            .onTapGesture {
                                self.showDialog.toggle()
                            }
                    }
                } header: {
                    ProjectGridView.HeaderView(title: "Projects already downloaded")
                }
            }
            .padding(.horizontal)
        }
        .background(Color.gray.opacity(0.2))
        .confirmationDialog("", isPresented: $showDialog) {
            Button("Open") {
                print("open")
            }
            
            Button("Synchronize") {
                print("synchronize")
            }
            
            Button("Duplicate") {
                print("Duplicate")
            }
            
            Button("Export to iTunes") {
                print("Export to iTunes")
            }
            
            Button("Delete") {
                print("Delete")
            }
            .foregroundColor(Color.red)
        }
        .onAppear {
            viewModel.fetchProjects()
        }
    }
}

struct ProjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectGridView()
    }
}
