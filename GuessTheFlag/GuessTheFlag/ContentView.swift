import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Градієнтний фон
            LinearGradient(
                gradient: Gradient(colors: [.blue, .black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea() // Фон займає весь екран

            // Текст у центрі
            VStack {
                Text("Gradient Background Example")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.7)) // Прозорий чорний фон
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
