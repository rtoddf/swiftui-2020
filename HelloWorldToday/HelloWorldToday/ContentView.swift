import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text("Todd Fleeman")
                    .font(.title)
                    .foregroundColor(.gray)
                Text("http://www/rtodd.net")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                HStack() {
                    Image(systemName: "t.square.fill")
                        .foregroundColor(.purple)
                    
                    Text("@rtoddf")
                        .font(.subheadline)
                        .foregroundColor(.purple)
                    .bold()
                    .italic()
                }
            }
        }
//            .frame(width: 300, height: 240)
//            .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
