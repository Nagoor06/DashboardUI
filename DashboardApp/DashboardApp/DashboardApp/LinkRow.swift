import SwiftUI

struct LinkRow: View {
    let link: Link

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: link.originalImage)) { image in
                image.resizable()
                     .frame(width: 50, height: 50)
                     .cornerRadius(8)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(link.title)
                    .font(.headline)
                Text(link.webLink)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(link.totalClicks) Clicks")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
