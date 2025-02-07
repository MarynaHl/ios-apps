import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding() // Перший шар відступів
            .background(Color.red) // Червоний фон
            .padding() // Другий шар відступів
            .background(Color.blue) // Синій фон
            .padding() // Третій шар відступів
            .background(Color.green) // Зелений фон
            .padding() // Четвертий шар відступів
            .background(Color.yellow) // Жовтий фон
    }
}

#Preview {
    ContentView()
}
