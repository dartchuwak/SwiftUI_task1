import SwiftUI

struct ContentView: View {
    let rectangleHeight:CGFloat = 50
    var body: some View {
        TabView {
                ScrollView {
                    ForEach(1...100, id: \.self) { number in
                        Text("\(number)")
                            .font(.system(size: 24))
                            .foregroundStyle(Color.gray)
                            .frame(maxWidth: .infinity)
                    }
                }
                .safeAreaInset(edge: .bottom, spacing: 0) {
                    Rectangle()
                        .frame(height: rectangleHeight)
                        .foregroundColor(Color.red.opacity(0.75))
            }
            .tabItem {
                Label("First", systemImage: "star.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
