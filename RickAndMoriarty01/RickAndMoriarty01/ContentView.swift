import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {
        NavigationView {
            List(networkingManager.dataList.results, id: \.id) {
                data in
                CellRow(data: data)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
