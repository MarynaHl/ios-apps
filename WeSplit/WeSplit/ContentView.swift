import SwiftUI // Імпортуємо SwiftUI для створення інтерфейсу

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"] // Масив з іменами студентів
    @State private var selectedStudent = "Harry" // Вибраний студент (змінюється)

    var body: some View {
        NavigationStack { // Додає навігаційну панель
            Form { // Форма для групування елементів
                Picker("Select your student", selection: $selectedStudent) {
                    // Створюємо Picker з двостороннім зв’язуванням
                    ForEach(students, id: \.self) { student in
                        Text(student) // Відображаємо ім’я студента
                    }
                }
            }
            .navigationTitle("Students") // Заголовок у навігаційній панелі
        }
    }
}

#Preview {
    ContentView() // Відображення попереднього перегляду
}
