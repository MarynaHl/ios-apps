import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Перехід кольорів у VStack
            VStack(spacing: 0) {
                Color.red.frame(height: UIScreen.main.bounds.height / 2)
                Color.blue.frame(height: UIScreen.main.bounds.height / 2)
            }
            .ignoresSafeArea()

            // Текст поверх фону
            VStack {
                Text("Color Transition Example")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .background(Color.black.opacity(0.6))
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
