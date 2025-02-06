import SwiftUI

struct ContentView: View {
    var title: some View {
        Text("Заголовок")
            .font(.largeTitle)
            .padding()
    }
    
    var body: some View {
        VStack {
            title
            Text("Основний контент")
        }
    }
}

#Preview {
    ContentView()
}
