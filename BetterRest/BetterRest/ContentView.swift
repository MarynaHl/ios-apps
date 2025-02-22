import SwiftUI // Імпортуємо SwiftUI

struct ContentView: View {
    // @State змінні для збереження вибору користувача
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) { // Відстань між елементами
                // Вибір часу пробудження
                Text("When do you want to wake up?")
                    .font(.headline)

                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden() // Приховує мітку

                // Вибір бажаної кількості годин сну
                Text("Desired amount of sleep")
                    .font(.headline)

                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)

                // Вибір кількості чашок кави
                Text("Daily coffee intake")
                    .font(.headline)

                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 1...20)
            }
            .navigationTitle("BetterRest") // Заголовок навігації
            .toolbar {
                Button("Calculate", action: calculateBedtime) // Кнопка у верхньому меню
            }
        }
    }

    // Метод для обчислення часу засинання
    func calculateBedtime() {
        // Логіка буде додана пізніше
    }
}

#Preview {
    ContentView() // Попередній перегляд у SwiftUI
}
