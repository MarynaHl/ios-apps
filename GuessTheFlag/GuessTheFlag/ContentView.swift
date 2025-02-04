import SwiftUI

struct ContentView: View {
    // Дані для гри
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    var correctAnswer = Int.random(in: 0...2) // Випадковий правильний варіант

    var body: some View {
        ZStack {
            // Фон
            Color.blue
                .ignoresSafeArea() // Заливка фону до країв екрану

            VStack(spacing: 30) {
                // Текст із завданням
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white) // Білий текст для контрасту з синім фоном
                        .font(.headline)

                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }

                // Кнопки із прапорами
                ForEach(0..<3) { number in
                    Button {
                        print("Flag \(countries[number]) tapped")
                    } label: {
                        Image(countries[number]) // Прапор із ресурсу
                            .resizable()
                            .scaledToFit() // Масштабування для збереження пропорцій
                            .clipShape(Capsule()) // Форма кнопки
                            .shadow(radius: 5) // Тінь для візуальної чіткості
                    }
                }
            }
            .padding() // Відступи для зовнішньої VStack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
