
import SwiftUI

enum Barra{case Spese, Saldi, Foto}

struct ContentView: View {
    
    @State private var Barraselezionata : Barra = .Spese
    @State private var searchText = ""
    var Elenco = ElencoViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack { // title
                Text("🏖️")
                    .font(.system(size: 75))
                
                Text("Road Trip Sicily")
                    .bold()
                    .font(.title)
                
                HStack{
                    Picker("Selezione", selection: $Barraselezionata){
                        Text("Expenses").tag(Barra.Spese)
                        Text("Balances").tag(Barra.Saldi)
                        Text("Photos").tag(Barra.Foto)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)
                }
                
                HStack{ // money spent in total
                    VStack{
                        Text("My expenses")
                            .font(.system(size: 15))
                        Text("227,43€")
                            .bold()
                            .font(.system(size: 23, design: .rounded))
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("Total expenses")
                            .font(.system(size: 15))
                        Text("1914,24€")
                            .bold()
                            .font(.system(size: 23, design: .rounded))
                    }
                }
                .padding(.horizontal,40)
                .padding(.vertical, 10)
                // .border(Color.red)
                
                List{
                    Section(header:(Text("5 Agosto 2025"))){
                        ForEach(Elenco.elenco){ tizio in
                            HStack{
                                Text("💳")
                                    .font(.system(size: 40))
                                
                                VStack(alignment: .leading){
                                    Text("Refund")
                                    HStack{
                                        Text("Payed by " + tizio.nome)
                                    }
                                    .opacity(0.5)
                                }
                                
                                Spacer()
                                
                                Text(tizio.spesa)
                                    .font(.system(size: 16,weight: .bold, design: .rounded))
                            }
                        }
                        .listRowBackground(Color.gray.opacity(0.1))
                    }
                }
                .scrollContentBackground(.hidden)
                .listRowSpacing(10)
                .scrollIndicators(.hidden)
                
            }
            
            .toolbar {
                
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Button(action: {}) {Label("Edit", systemImage: "gear")}
                        Button(action: {}) {Label("Share", systemImage: "square.and.arrow.up")}
                        Button(role: .destructive, action: {}) {Label("Delete group", systemImage: "trash")}
                    } label: {Image(systemName: "ellipsis")}
                }
                
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}){
                        Image(systemName:"plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
