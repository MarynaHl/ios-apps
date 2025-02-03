import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Delete selection", role: .destructive) {
                print("Now deleting…")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
