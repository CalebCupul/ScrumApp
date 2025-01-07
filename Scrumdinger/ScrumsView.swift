//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Caleb Cupul on 07/01/25.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
        }
    }
    
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
