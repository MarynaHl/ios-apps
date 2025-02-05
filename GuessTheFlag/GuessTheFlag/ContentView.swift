import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var userScore = 0 // Зберігання рахунку користувача
    @State private var currentQuestion = 1 // Лічильник запитань
    @State private var showingFinalScore = false // Фінальний алерт після 8 запитань

    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline.weight(.heavy))

                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold))
                }

                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 120)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                }

                // Відображення рахунку
                Text("Score: \(userScore)")
                    .foregroundStyle(.white)
                    .font(.title2.weight(.bold))
            }
            .padding()
        }
        // Алерт після кожного вибору
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(userScore)")
        }
        // Фінальний алерт після завершення гри
        .alert("Game Over", isPresented: $showingFinalScore) {
            Button("Restart", action: resetGame)
        } message: {
            Text("Your final score is \(userScore) out of 8")
        }
    }

    // Логіка обробки вибору прапора
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            userScore += 1
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
        }

        // Перевірка кількості запитань
        if currentQuestion == 8 {
            showingFinalScore = true
        } else {
            showingScore = true
        }
    }

    // Перехід до наступного запитання
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        currentQuestion += 1
    }

    // Перезапуск гри
    func resetGame() {
        userScore = 0
        currentQuestion = 1
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
