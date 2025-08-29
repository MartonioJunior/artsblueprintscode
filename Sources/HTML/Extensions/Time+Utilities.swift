//
//  Time+Utilities.swift
//  Website
//
//  Created by Martônio Júnior on 29/08/2025.
//

import Foundation
import Plot

public extension Time {
    init(
        _ date: Date,
        dateFormat: Date.FormatStyle.DateStyle = .abbreviated,
        timeFormat: Date.FormatStyle.TimeStyle = .shortened
    ) {
        self.init {
            Text(date.formatted(date: dateFormat, time: timeFormat))
        }
    }
}
