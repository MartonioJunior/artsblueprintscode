//
//  Summary.swift
//  Website
//
//  Created by Martônio Júnior on 21/08/2025.
//

import CSS
import Plot

public struct Description {
    // MARK: Variables
    var text: String

    // MARK: Initializers
    public init(_ text: String) {
        self.text = text
    }
}

// MARK: Self: Component
extension Description: Component {
    public var body: Component {
        Paragraph(text).apply(.description)
    }
}

// MARK: CSSClass (EX)
extension CSSClass {
    static var description: Self { "description" }
}
