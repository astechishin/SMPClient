//
//  ContentView.swift
//  SMPClient
//
//  Created by Andy Stechishin on 2024-05-16.
//

import SwiftUI

struct ContentView: View {
    @Environment(PatientAndDrugs.self) private var patientAndDrugs
    
    @State private var medListId: String? = nil
    
    var sortedMedLists: [PatientAndDrugs.KnownList] {
        patientAndDrugs.knownLists.sorted { ($0.date ?? Date()) > ($1.date ?? Date()) }
    }

    var body: some View {
        if let patient = patientAndDrugs.patient {
            NavigationSplitView {
                VStack {
                    PatientGroupBox(patient: patient)
                    
                    if patientAndDrugs.knownLists.isEmpty {
                        ContentUnavailableView(label: {
                            Label("No known lists", systemImage: "list.bullet.clipboard")
                        }, description: {
                            Text("The selected patient does not have any retrievable Medication lists")
                        }, actions: {
                        })
                    } else {
                        List(selection: $medListId) {
                            ForEach(sortedMedLists) { list in
                                NavigationLink(value: list.id) {
                                    Text(list.title)
                                        .lineLimit(2)
                                }
                            }
                        }
                    }
                }
                .padding()
                .navigationSplitViewColumnWidth(ideal: 250)
            } detail: {
                if let medListId, let medList = patientAndDrugs.retrieveList(for: medListId) {
                    MedicationListPanel(medList: medList)
                    
                } else {
                    ContentUnavailableView(label: {
                        Label("List not selected", systemImage: "list.bullet")
                    }, description: {
                        Text("Please select an entry from the various Medication Lists found for this patient")
                    }, actions: {
                    })
                }
            }
        } else {
            SelectPatientPanel()
        }
    }
}

#if DEBUG
#Preview("", traits: .fixedLayout(width: 500, height: 400)) {
    var pAndD = PatientAndDrugs.fromPreviewData()
    return ContentView()
        .environment(pAndD)
}
#endif
