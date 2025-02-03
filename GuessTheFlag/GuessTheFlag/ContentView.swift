import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Edit", systemImage: "pencil") {
                print("Edit button was tapped")
            }

            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
