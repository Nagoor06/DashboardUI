import SwiftUI

struct TabBarView: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "link")
                Text("Links")
            }
            .frame(maxWidth: .infinity)
            
            VStack {
                Image(systemName: "book")
                Text("Courses")
            }
            .frame(maxWidth: .infinity)
            
            VStack {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 44))
                    .foregroundColor(.blue)
            }
            .frame(maxWidth: .infinity)
            
            VStack {
                Image(systemName: "megaphone")
                Text("Campaigns")
            }
            .frame(maxWidth: .infinity)
            
            VStack {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
        .background(Color.white)
        .shadow(radius: 5)
    }
}
