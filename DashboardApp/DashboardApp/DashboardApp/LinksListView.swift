import SwiftUI

struct LinksListView: View {
    let links: [Link]

    var body: some View {
        ForEach(links) { link in
            LinkRow(link: link)
                .padding(.horizontal)
                .padding(.vertical, 5)
        }
    }
}
