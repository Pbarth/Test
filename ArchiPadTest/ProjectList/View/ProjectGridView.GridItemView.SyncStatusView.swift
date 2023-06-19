//
//  ProjectGridView.GridItemView.SyncStatusView.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import SwiftUI

extension ProjectGridView.GridItemView {
    struct SyncStatusView: View {
        public var isSynced: Bool = false
        public var lastUpdate: Date?
        var body: some View {
            if isSynced {
                if let lastUpdate = lastUpdate {
                    VStack(alignment: .leading) {
                        Text("Last update")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 12))
                        Text(DateFormatter.projectListLastUpdate.string(from: lastUpdate))
                            .font(.system(size: 13))
                    }
                } else {
                  EmptyView()
                }
            } else {
                Text("This project needs to be synchronized")
                    .font(.system(size: 14))
                    .foregroundColor(Color.red)
            }
        }
    }
}

struct ProjectGridView_GridItemView_SyncStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectGridView.GridItemView.SyncStatusView()
    }
}
