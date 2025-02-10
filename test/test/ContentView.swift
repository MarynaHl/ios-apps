import SwiftUI

// Кастомний View з повторюваним стилем
struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundStyle(.white) // Індивідуальний колір
            CapsuleText(text: "Second")
                .foregroundStyle(.yellow) // Індивідуальний колір
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
