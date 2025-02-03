import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") { }
                .buttonStyle(.bordered)

            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)

            Button("Button 3") { }
                .buttonStyle(.borderedProminent)

            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
