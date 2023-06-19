//
//  DateFormatter.Extension.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation

extension DateFormatter {
    public convenience init(dateStyle: Style, timeStyle: Style) {
        self.init()
        self.dateStyle = dateStyle
        self.timeStyle = timeStyle
    }
    
    public static var projectListLastUpdate: DateFormatter {
        DateFormatter(dateStyle: .long, timeStyle: .none)
    }
}
