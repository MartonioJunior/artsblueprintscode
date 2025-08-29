//
//  Post.swift
//  Website
//
//  Created by Martônio Júnior on 14/08/2025.
//

import Foundation
import Plot
import TagsFeature

public struct Post {
    public typealias Content = Component

    // MARK: Variables
    var content: Content
    var date: Date
    var summary: String
    var title: String
    var url: URL
    var tags: [Tag]

    // MARK: Initializers
    public init(
        title: String,
        summary: String,
        date: Date,
        url: URL,
        tags: [Tag],
        content: Content
    ) {
        self.content = content
        self.date = date
        self.summary = summary
        self.tags = tags
        self.title = title
        self.url = url
    }
}
