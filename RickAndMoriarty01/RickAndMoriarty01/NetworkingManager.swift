import Foundation

class NetworkingManager:ObservableObject {
    @Published var dataList = CharacterAPIList(results: [])
    
    init() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/") else { return }
        
        URLSession.shared
            .dataTask(with: url) {
                (data, _, _) in
                guard let data = data else { return }
                
                let dataList = try! JSONDecoder().decode(CharacterAPIList.self, from: data)
                
                DispatchQueue.main.async {
                    self.dataList = dataList
                    
                    print(dataList.results)
                }
        }.resume()
    }
}
