//
//  ProjectGridView.GridItemView.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation
import SwiftUI
import Domain

extension ProjectGridView {
    struct GridItemView: View {
        
        var project: AppProject
        
        var body: some View {
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomLeading) {
                    Image(project.image)
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .foregroundColor(Color.white)
                        .background(Color.gray)
                    
                    HStack {
                        Text(project.name ?? "")
                        Spacer()
                    }
                    .padding(.horizontal)
                    .background(Color.white.opacity(0.7))
                }
                //                }
                Divider()
                SyncStatusView(isSynced: project.isSynced, lastUpdate: project.lastModificationDate)
                    .padding()
            }
            
            .background(Color.white)
        }
    }
}

struct ProjectGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectGridView.GridItemView(project: AppProject.sample)
    }
}
