//
//  EntryPoint.swift
//  SMPClient
//
//  Created by Andy Stechishin on 2024-05-16.
//

import Foundation
import SwiftUI

let isUITesting = false /* your UI test detection here */

@main
struct EntryPoint {
    static func main() {
        if isUITesting {
            UITestApp.main()
        } else if NSClassFromString("XCTestCase") == nil {
            SMPClientApp.main()
        } else {
            TestApp.main()
        }
    }
}

struct UITestApp: App {
    var body: some Scene {
        WindowGroup {
            //.. prod app bootstrapped for UI tests
            Text("Run the UI tests")
        }
    }
}

struct TestApp: App {
    var body: some Scene {
        WindowGroup {  }
    }
}
