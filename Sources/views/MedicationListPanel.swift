//
//  MedicationListPanel.swift
//  SMPClient
//
//  Created by Andrew Stechishin on 2024-05-19.
//

import SwiftUI

struct MedicationListPanel: View {
    var medList: FhirApi.List
    
    var body: some View {
        VStack {
            Text("Medications: \(medList.title ?? "-missing-")")
                .font(.title)
            HStack {
                Text("\(medList.mode.rawValue.capitalized) on")
                Text(medList.date ?? Date(), style: .date)
            }
            HStack {
                Text("status:")
                    .font(.caption)
                Text(medList.status.rawValue)
                    .bold()
            }
            
            NavigationStack {
                List {
                    ForEach(medList.entryDisplays) {entry in
                        NavigationLink(value: entry.id) {
                            VStack(alignment: .leading) {
                                Text(entry.display)
                                Text(entry.date, style: .date)
                                    .padding([.leading], 20)
                                    .font(.caption)
                                    .italic()
                            }
                            .padding([.leading], 5)
                        }
                    }
                }
                .navigationDestination(for: String.self) { id in
                        MedicationPanel(statementId: id)
                    }
            }
        }
    }
}

#if DEBUG
#Preview("", traits: .fixedLayout(width: 500, height: 400)) {
    var pAndD = PatientAndDrugs.fromPreviewData()
    return MedicationListPanel(medList: pAndD.knownLists[0].medList)
}
#endif
