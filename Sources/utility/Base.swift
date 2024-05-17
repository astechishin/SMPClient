//
//  Base.swift
//  SMPClient
//
//  Created by Andy Stechishin on 2024-05-16.
//

import Foundation
import OSLog
import AppStandard

@AppBase
public struct Base {
    static let expenseYear = 2022
    
    public static let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? "Unknown app name"
    
    enum LogCategoryType: String {
        case login
        case dbAction
        case importTx
        case importData
        case exportDB
        case testing
    }
}
