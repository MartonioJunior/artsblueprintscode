//
//  Publish+PageFeature.swift
//  Website
//
//  Created by Martônio Júnior on 20/08/2025.
//

import Plot
import Publish
import PageFeature

// MARK: Page (EX)
public extension Page {
    var isTemplate: Bool {
        path.absoluteString.hasPrefix("/templates/")
    }
}

// MARK: PageView (EX)
public extension PageView {
    init<Site: Website>(
        _ context: PublishingContext<Site>,
        section: Site.SectionID? = nil,
        @ComponentBuilder content: @escaping () -> Component
    ) {
        self.init(
            context.site.name,
            description: context.site.description,
            navigation: .init(context.sections.ids.map(\.self), selected: section),
            content: content
        )
    }
}

// MARK: PublishingError (EX)
public extension PublishingError {
    static func blockPublish(of page: Page) -> Self {
        .init(infoMessage: "The page \(page.title) at \(page.path) should not be published!")
    }
}
