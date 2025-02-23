import SwiftUI
import CoreML // Додаємо Core ML для роботи з машинним навчанням

struct ContentView: View {
    // Вхідні дані користувача
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1

    // Дані для алерту
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // Вибір часу пробудження
                Text("When do you want to wake up?")
                    .font(.headline)
                
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()

                // Вибір бажаної кількості годин сну
                Text("Desired amount of sleep")
                    .font(.headline)

                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)

                // Вибір кількості чашок кави
                Text("Daily coffee intake")
                    .font(.headline)

                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 1...20)
            }
            .navigationTitle("BetterRest") // Заголовок у навігації
            .toolbar {
                Button("Calculate", action: calculateBedtime) // Кнопка розрахунку
            }
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK") { }
            } message: {
                Text(alertMessage)
            }
        }
    }

    // Функція для прогнозування ідеального часу засинання
    func calculateBedtime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config) // Завантажуємо модель

            // Отримуємо години та хвилини часу пробудження у секундах
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60 // Переводимо години у секунди
            let minute = (components.minute ?? 0) * 60 // Переводимо хвилини у секунди

            // Виконуємо прогнозування на основі введених даних
            let prediction = try model.prediction(
                wake: Double(hour + minute),
                estimatedSleep: sleepAmount,
                coffee: Double(coffeeAmount)
            )

            // Обчислюємо ідеальний час засинання
            let sleepTime = wakeUp - prediction.actualSleep

            // Відображаємо результат у вигляді алерту
            alertTitle = "Your ideal bedtime is…"
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)

        } catch {
            // Обробка помилок
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
        }

        // Показуємо алерт з результатом
        showingAlert = true
    }
}

#Preview {
    ContentView()
}
