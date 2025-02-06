import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Правильний порядок модифікаторів")
                .font(.title)
                .padding()
                .background(Color.red) // Спочатку фон, потім межі
                .border(Color.black, width: 5)
        }
    }
}

#Preview {
    ContentView()
}
