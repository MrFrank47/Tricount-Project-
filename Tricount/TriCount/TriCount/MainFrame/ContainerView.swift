import SwiftUI

struct ContainerView: View {
    var body: some View {
        TabView{
            Tab("Tricounts", systemImage: "house") {MainView()}
            Tab("Requests", systemImage: "dollarsign") {Text("non")}
            Tab("Credit Card", systemImage: "creditcard") {Text("c'è")}
 //         Tab("Profile", systemImage: "person.crop.circle") {Text("nulla")} - hidden because I finally implemented the profile button
            Tab(role: .search){}
        }
    }
}

#Preview {
    ContainerView()
}
