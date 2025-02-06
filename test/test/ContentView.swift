import SwiftUI

struct TitleView: View {
    var body: some View {
        Text("Заголовок")
            .font(.largeTitle)
            .padding()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
            Text("Основний контент")
        }
    }
}

#Preview {
    ContentView()
}
