//
//  AppProject.Extension.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 19/06/2023.
//

import Foundation
import Domain

extension AppProject {
    public var isCached: Bool {
        localCopy ?? false
    }
    
    public var isSynced: Bool {
        isCached && (lastPatchID != nil)
    }
    
    public var image: String {
        print(id)
        print(photoURL)
        if let photo = photoURL {
            return photo
        } else if !isCached {
            return "cloud_big"
        } else {
            return "folder_big"
        }
    }
}
