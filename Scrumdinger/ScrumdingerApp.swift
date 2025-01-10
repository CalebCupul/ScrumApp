//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Caleb Cupul on 26/12/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
