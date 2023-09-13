// Sistema de gerenciamento de tarefas 


import Foundation

// Enum para representar as prioridades das tarefas
enum Priority: String {
    case high = "Alta"
    case medium = "Média"
    case low = "Baixa"
}

// Protocolo para representar uma tarefa
protocol Task {
    var title: String { get }
    var priority: Priority { get }
    func perform()
}

// Struct para representar uma tarefa comum
struct CommonTask: Task {
    let title: String
    let priority: Priority

    func perform() {
        print("Executando tarefa comum: \(title)")
    }
}

// Struct para representar uma tarefa importante
struct ImportantTask: Task {
    let title: String
    let priority: Priority

    func perform() {
        print("Executando tarefa importante: \(title)")
    }
}

// Função que executa tarefas de acordo com a prioridade
func executeTasks(_ tasks: [Task]) {
    for task in tasks {
        task.perform()
    }
}

// Criando algumas tarefas
let task1 = CommonTask(title: "Limpar a casa", priority: .low)
let task2 = CommonTask(title: "Fazer compras", priority: .medium)
let task3 = ImportantTask(title: "Preparar apresentação", priority: .high)
let task4 = ImportantTask(title: "Resolver problemas críticos", priority: .high)

// Criando uma lista de tarefas
let tasks: [Task] = [task1, task2, task3, task4]

// Filtrando tarefas por prioridade alta
let highPriorityTasks = tasks.filter { $0.priority == .high }

// Executando tarefas
executeTasks(tasks)

// Imprimindo tarefas de alta prioridade
print("Tarefas de alta prioridade:")
for task in highPriorityTasks {
    print("- \(task.title)")
}

