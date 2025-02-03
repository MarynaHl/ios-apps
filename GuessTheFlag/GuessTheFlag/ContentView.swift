import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("Button was tapped")
            } label: {
                Text("Custom Button")
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
