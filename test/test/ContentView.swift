import SwiftUI

struct ContentView: View {
    @State private var isRed = true
    
    var body: some View {
        Text("Натисни на мене")
            .padding()
            .background(isRed ? Color.red : Color.blue)
            .onTapGesture {
                isRed.toggle()
            }
    }
}

#Preview {
    ContentView()
}
