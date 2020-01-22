import SwiftUI

struct ContentView: View {
    var quotes: [Quote]
    
    //    var quotes: [Quote] = [
//        Quote(quote: "Four score and seven years ago, ...", author: "Abraham Lincoln"),
//        Quote(quote: "Four score and seven years ago, ...", author: "Abraham Lincoln"),
//        Quote(quote: "Four score and seven years ago, ...", author: "Abraham Lincoln"),
//        Quote(quote: "Four score and seven years ago, ...", author: "Abraham Lincoln"),
//        Quote(quote: "Four score and seven years ago, ...", author: "Abraham Lincoln"),
//        Quote(quote: "Four score and seven years ago, ...", author: "Abraham Lincoln")
//    ]
    
    var body: some View {
        VStack {
            CircleImage(imageName: "lilly", imageWidth: 250, imageHeight: 250)
                .padding(.top, 20)
                .padding(.bottom, 20)
            MainView(quotes: self.quotes)
            Spacer()
        }
        .background(Image("motivation_bg")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all))
        
    }
}

struct MainView: View {
    var quotes: [Quote]
    var body: some View {
        VStack {
            HStack {
                Text("\(self.quotes.count) Quotes Available")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.white)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.quotes, id: \.author) {
                        quote in
                        VStack {
                            CircleImage(imageName: "lilly", imageWidth: 100, imageHeight: 100)
                            Text(#" "\#(quote.quote)" "#)
                                .font(.headline)
                            Divider()
                            
                            Text(quote.author)
                                .font(.custom("Hevetica neue", size: 14))
                                .italic()
                        }
                        .frame(width: 300, height: 300)
                        .foregroundColor(.gray)
                        .padding(14)
                        .background(Color.white)
                        .cornerRadius(13)
                    }
                }
            }
        }
    }
}

struct CircleImage: View {
    var imageName: String
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle()
            .stroke(Color.gray, lineWidth: 2))
            .shadow(radius: 10)
            .frame(width: imageWidth, height: imageHeight)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
