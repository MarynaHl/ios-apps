import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Що знаходиться за SwiftUI View?")
                .font(.title)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red) // Робимо фон червоним на весь екран
    }
}

#Preview {
    ContentView()
}
