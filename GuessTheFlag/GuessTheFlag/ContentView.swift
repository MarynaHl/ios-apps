import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Радіальний градієнт
            RadialGradient(
                colors: [.blue, .black],
                center: .center,
                startRadius: 20,
                endRadius: 200
            )
            .ignoresSafeArea()

            Text("Radial Gradient Example")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
