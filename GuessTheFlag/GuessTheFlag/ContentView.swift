import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Конічний градієнт
            AngularGradient(
                colors: [.red, .yellow, .green, .blue, .purple, .red],
                center: .center
            )
            .ignoresSafeArea()

            Text("Angular Gradient Example")
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
