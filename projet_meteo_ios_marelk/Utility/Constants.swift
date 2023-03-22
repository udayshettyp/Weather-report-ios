//
//  Constants.swift
//  projet_meteo_ios_marelk
//
//  Created by user on 21/03/23.
//  Copyright © 2023 user. All rights reserved.

import Foundation
struct UserdefaultConstants{
    static let searchedLocation = "searchedLocation"
}
struct ServerUrl{
    static let baseUrl = "https://api.openweathermap.org/data/2.5"
}
public struct PrintLog {
    public static func print(_ items: Any..., separator: String = " ", terminator: String = "\n", _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
#if DISABLE_LOG
        // let prefix = modePrefix(Date(), file: file, function: function, line: line)
        let stringItem = items.map {"\($0)"} .joined(separator: separator)
        Swift.print("\(stringItem)", terminator: terminator)
#endif
    }
}
