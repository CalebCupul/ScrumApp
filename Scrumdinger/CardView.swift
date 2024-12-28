//
//  CardView.swift
//  Scrumdinger
//
//  Created by Caleb Cupul on 26/12/24.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    var data = DailyScrum.sampleData[0]
    return CardView(scrum: data)
        .background(data.theme.mainColor)
}
