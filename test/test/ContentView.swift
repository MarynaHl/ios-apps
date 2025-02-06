import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Цей текст зелений")
            Text("Цей теж")
        }
        .foregroundColor(.green) // Застосовується до всіх елементів
    }
}

#Preview {
    ContentView()
}
