import SwiftUI

struct MainView: View {
    var Trip = TripViewModel()
    //    @State private var isModalPresented = false
    @State private var users = ["Paolo", "Francesca", "Giacomo"]
    
    var body: some View {
        NavigationStack {
            VStack {
                List {  // list of trips present on the main screen
                    Section() {
                        ForEach(Trip.trip) { tizio in
                            NavigationLink(destination: ContentView()) {
                                HStack {
                                    Text(tizio.immagine)
                                        .font(.system(size: 55))
                                    
                                    Text(tizio.nome)
                                        .font(.system(size: 22))
                                        .bold()
                                }
                            }
                        }
                        .listRowBackground(Color.gray.opacity(0.1))
                    }
                }
                .scrollContentBackground(.hidden)
                .listRowSpacing(10)
            }
            .navigationTitle(Text("Tricount"))
            
            .toolbar{
                // profile button
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {}) {
                        Image(systemName:"person.crop.circle.fill")
                            .foregroundColor(Color.gray.opacity(0.8))
                            .font(.system(size:23))
                    }
                }
                
                //add trip button
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {}){
                        Image(systemName:"plus")
                    }
                }
                
                //edit button
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                
            }
            //            .sheet(isPresented: $isModalPresented) {
            //                ProfileModalView(isPresented: $isModalPresented)
            //            }
        }
    }
}

#Preview {
    MainView()
}
