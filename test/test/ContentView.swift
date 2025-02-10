import SwiftUI

struct ContentView: View {
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")

    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }

    var body: some View {
        VStack {
            motto1.foregroundStyle(.red)
            motto2.foregroundStyle(.blue)
            
            spells
                .font(.headline)
                .padding()
                .background(Color.yellow)
                .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
