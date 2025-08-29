//
//  FooterView.swift
//  Website
//
//  Created by Martônio Júnior on 24/06/25.
//

import HTML

public struct FooterView {
    // MARK: Initializers
    public init() {}
}

// MARK: Self: Component
extension FooterView: Component {
    public var body: Component {
        Footer {
            Paragraph("© 2025 Martônio Júnior")
            Paragraph {
                Text("Website built in Swift using ")
                Link("Publish", url: "https://github.com/johnsundell/publish")
            }
            Paragraph {
                Link("RSS", url: "/feed.rss")
                Text(" | ")
                Link("Github", url: "https://github.com/martoniojunior")
            }
        }
    }
}
