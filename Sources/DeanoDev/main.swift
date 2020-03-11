import Foundation
import Plot
import Publish
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct DeanoDev: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case portfolio
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://deano.dev")!
    var name = "deano.dev"
    var description = "Findings and feelings on Apple platforms development."
    var language: Language { .english }
    var imagePath: Path? { nil }
    
}

// This will generate your website using the built-in Foundation theme:
try DeanoDev().publish(
    withTheme: .murphy,
    plugins: [.splash(withClassPrefix: "splash-")]
)
