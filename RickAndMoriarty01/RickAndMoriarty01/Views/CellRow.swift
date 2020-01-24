import SwiftUI

struct CellRow:View {
    var data:Results

    var body:some View {
        HStack {
            Text(data.name)
                .font(.headline)
        }
    }
}
