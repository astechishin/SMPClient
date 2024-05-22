//
//  MedicationPanel.swift
//  SMPClient
//
//  Created by Andrew Stechishin on 2024-05-19.
//

import SwiftUI

struct MedicationPanel: View {
    var statementId: String
    
    @State var medStmt: FhirApi.MedicationStatement? = nil
    
    var medDisplay: String {
        guard let medStmt else { return "- missing medication -" }
        
        if let display = medStmt.medicationCodeableConcept?.coding?[0].display {
            return display
        }
        
        return "- missing medication -"
    }
    
    var reasonList: [String] {
        var list = [String]()
        guard let medStmt, let reasonList = medStmt.reasonCode, !reasonList.isEmpty else { return list }
        
        for reason in reasonList {
            if let display = reason.coding?[0].display {
                list.append(display)
            }
        }
        return list
    }
    
    var body: some View {
        VStack {
            if let medStmt {
                Text(medDisplay)
                    .font(.title2)
                HStack {
                    Text("Source:")
                    Text(medStmt.informationSource?.display ?? "- none identified -")
                }
                HStack {
                    Text("Date:")
                    if let asserted = medStmt.dateAsserted {
                        Text(asserted, style: .date)
                    } else {
                        Text("- not recorded -")
                    }
                }
                if !reasonList.isEmpty {
                    Text("Reason for medication: \(reasonList.joined(separator: ", "))")
                }
            } else {
                ContentUnavailableView(label: {
                    Label("Data is being retrieved", systemImage: "display.and.arrow.down")
                }, description: {
                    Text("The selected medication details are being retrieved from the inter-cloudy-thingy")
                }, actions: {
                })

            }
        }
        .task {
            await getMedicationStatement()
        }
    }
    
    func getMedicationStatement() async {
        let referenceComponents = statementId.components(separatedBy: "/")
        if let id = referenceComponents.last, let retrievedStmt: FhirApi.MedicationStatement = await SMPApi().getResource(for: id) {
            medStmt = retrievedStmt
        }
    }
}

#Preview {
    return MedicationPanel(statementId: "smp-medstmt-1-1")
}
