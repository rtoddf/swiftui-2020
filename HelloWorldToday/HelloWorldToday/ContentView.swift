import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            Image("lego-todd")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.white, lineWidth: 2))
                .shadow(radius: 3  )
                .frame(width: 150, height: 150, alignment: .center)
            VStack(alignment: .leading) {
                Text("Todd Fleeman")
                    .font(.title)
                    .foregroundColor(.white)
                Text("http://www/rtodd.net")
                    .font(.subheadline)
                    .foregroundColor(.white)
                HStack() {
                    Image(systemName: "t.square.fill")
                        .foregroundColor(.white)
                    
                    Text("@rtoddf")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .bold()
                        .italic()
                }
            }
        }
        .frame(width: 380, height: 200)
        .background(Color.orange)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
