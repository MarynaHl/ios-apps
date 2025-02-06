import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            exampleView()
        }
    }
    
    func exampleView() -> some View {
        Text("Це `some View`")
            .font(.title)
            .padding()
            .background(Color.green)
    }
}

#Preview {
    ContentView()
}
