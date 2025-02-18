import SwiftUI // Імпортуємо SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime // Використання значення за замовчуванням

    var body: some View {
        Form {
            Section(header: Text("Select your wake-up time")) {
                DatePicker("Wake-up time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden() // Приховуємо мітку для кращого UI
            }

            Section(header: Text("Formatted Time Examples")) {
                Text("Time: \(wakeUp.formatted(date: .omitted, time: .shortened))")
                Text("Full Date: \(wakeUp.formatted(date: .long, time: .shortened))")
                Text("Custom Format: \(wakeUp, format: .dateTime.day().month().year())")
            }
        }
    }

    // Обчислення 8:00 ранку як значення за замовчуванням
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
}

#Preview {
    ContentView() // Попередній перегляд у SwiftUI
}
