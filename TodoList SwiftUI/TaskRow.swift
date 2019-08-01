

import SwiftUI

struct TaskRow: View {
    let todo: ToDo
    @State var selectedDate = Date()
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            Text(todo.title)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: 22))
                .clipped()
                .minimumScaleFactor(0.6)
                .lineLimit(nil)
            
            Text(todo.due.compare(currentDate: selectedDate) ? "Today" : todo.due.string(format: "dd-MM-yyyy"))
                .bold()
                .foregroundColor(todo.due.compare(currentDate: selectedDate) ? Color.blue : Color.primary)
                .font(.system(size: 17))
                .frame(height: 20, alignment: .trailing)
        } .listRowBackground(todo.due.compare(currentDate: selectedDate) ? Color.green : Color.pink)
    }
}
