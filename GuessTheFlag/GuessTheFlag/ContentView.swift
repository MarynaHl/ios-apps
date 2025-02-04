import SwiftUI

struct ContentView: View {
    // Дані для гри
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    // Змінні для алерта
    @State private var showingScore = false
    @State private var scoreTitle = ""

    var body: some View {
        ZStack {
            // Фон
            Color.blue
                .ignoresSafeArea()

            VStack(spacing: 30) {
                // Текст із завданням
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.headline)

                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }

                // Кнопки із прапорами
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number) // Виклик методу для перевірки
                    } label: {
                        Image(countries[number])
                            .resizable()
                            .scaledToFit()
                            .clipShape(Capsule())
                            .shadow(radius: 5)
                    }
                }
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion) // Кнопка для продовження гри
        } message: {
            Text("Your score is ???") // Змінити на динамічний рахунок у майбутньому
        }
    }

    // Перевірка правильності відповіді
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }

    // Оновлення гри
    func askQuestion() {
        countries.shuffle() // Перетасовуємо прапори
        correctAnswer = Int.random(in: 0...2) // Нова правильна відповідь
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
