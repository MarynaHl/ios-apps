import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Заголовок гри
            Text("Guess the Flag")
                .font(.largeTitle)
                .fontWeight(.bold)

            // Градієнтний фон
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            // Зображення прапора
            Image("flag") // Замініть на реальне зображення прапора
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)

            // Кнопка вибору прапора
            Button("Select this flag") {
                print("Flag selected!") // У майбутньому тут буде логіка гри
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
