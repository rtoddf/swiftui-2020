import SwiftUI

struct ContentView: View {
    var body: some View {
        URLImage(url: "https://rickandmortyapi.com/api/character/avatar/2.jpeg")
            .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
