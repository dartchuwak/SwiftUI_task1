import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack(spacing: 0) {
                ScrollView {
                    LazyVStack {
                        ForEach(1...100, id: \.self) { number in
                            Text("\(number)")
                                .font(.system(size: 24))
                                .foregroundStyle(Color.gray)
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
                .scrollClipDisabled()
                Rectangle() // Видимый Rectangle
                    .frame(height: 50)
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
