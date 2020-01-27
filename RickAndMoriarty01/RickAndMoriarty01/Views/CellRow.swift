import SwiftUI
import Combine

struct CellRow:View {
    var data:Results

    var body:some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageView(imageUrl: data.image)
            Text(data.name)
        }
    }
}

class ImageLoader: ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()
    
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    
    init(imageUrl:String) {
        // fetch image data
        guard let url = URL(string: imageUrl) else {return}
        
//        print(url)
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
//                print(data.count)
                self.data = data
            }
        }.resume()
    }
}

struct ImageView:View {
    @ObservedObject var imageLoader:ImageLoader
    
    init(imageUrl:String) {
        imageLoader = ImageLoader(imageUrl: imageUrl)
    }
    
    var body: some View {
        Group {
        Print("bob: \(imageLoader.data.count)")
            Image(uiImage: (imageLoader.data.count == 0) ? UIImage(systemName: "t.square.fill")! : UIImage(data: imageLoader.data)!)
            .resizable()
            .frame(width: 200, height: 200)
        }
        
    }
}

extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}

//class RemoteImageUrl: BindableObject {
//    var didChange = PassthroughSubject<Data, Never>()
//
//    var data = Data() {
//        didSet {
//            didChange.send(data)
//        }
//    }
//
//    init(imageURL: String) {
//        guard let url = URL(string: imageURL) else { return }
//
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data = data else { return }
//
//            DispatchQueue.main.async {
//                self.data = data
//            }
//        }.resume()
//    }
//}
