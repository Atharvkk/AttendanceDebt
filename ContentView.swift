import SwiftUI

struct ContentView: View {
    @State private var days: Int = 0

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 40) {
                Text("Attendance Balance")
                    .font(.title)
                    .fontWeight(.semibold)

                Text("\(days)")
                    .font(.system(size: 80, weight: .bold))
                    .foregroundColor(days >= 0 ? .green : .red)
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 25))

                HStack(spacing: 30) {
                    Button(action: { days -= 3 }) {
                        Label("Absent", systemImage: "minus.circle.fill")
                            .font(.title2)
                            .padding()
                            .frame(width: 140)
                            .background(Color.red.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                    }

                    Button(action: { days += 1 }) {
                        Label("Present", systemImage: "plus.circle.fill")
                            .font(.title2)
                            .padding()
                            .frame(width: 140)
                            .background(Color.green.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                    }
                }
            }
            .padding()
        }
    }
}
