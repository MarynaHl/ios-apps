import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Лінійний градієнт
            LinearGradient(
                colors: [.white, .black],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea() // Фон заповнює весь екран

            Text("Linear Gradient Example")
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
