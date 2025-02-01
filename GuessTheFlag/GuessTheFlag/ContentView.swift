import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Фон гри - градієнт
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                // Заголовок
                Text("Guess the Flag")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                // Кнопки з прапорами
                VStack(spacing: 20) {
                    ForEach(0..<3) { _ in
                        Button(action: {
                            print("Flag tapped")
                        }) {
                            Image("example-flag") // Замініть на справжнє зображення
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 5)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
