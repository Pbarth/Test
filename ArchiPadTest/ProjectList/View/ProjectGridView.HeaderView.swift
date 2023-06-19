//
//  ProjectGridView.HeaderView.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import SwiftUI

extension ProjectGridView {
    struct HeaderView: View {
        public var title: String
        var body: some View {
            VStack {
                HStack {
                    Text(title)
                    Spacer()
                }
                Divider()
            }
        }
    }
}

struct ProjectGridView_HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectGridView.HeaderView(title: "Preview title")
    }
}
