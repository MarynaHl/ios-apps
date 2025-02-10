import SwiftUI

struct ContentView: View {
    @State private var useRedText = false

    var body: some View {
        VStack {
            Button("Tap me!") {
                useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red : .blue) // Умовна зміна кольору

            Text("Color changes dynamically")
                .padding()
                .background(useRedText ? Color.yellow : Color.gray) // Умовний фон
                .cornerRadius(10)
                .animation(.easeInOut, value: useRedText) // Анімація зміни стану
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
