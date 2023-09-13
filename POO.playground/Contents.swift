// Sistema de gerenciamento de pedidos para uma loja online.

import Foundation

// Enum para representar os estados de um pedido
enum OrderStatus {
    case pending
    case processing
    case shipped
    case delivered
    case cancelled
}

// Struct para representar um produto
struct Product {
    let name: String
    let price: Double
}

// Classe para representar um pedido
class Order {
    let orderID: String
    var products: [Product]
    var status: OrderStatus

    init(orderID: String, products: [Product]) {
        self.orderID = orderID
        self.products = products
        self.status = .pending
    }

    func calculateTotalPrice() -> Double {
        return products.reduce(0) { $0 + $1.price }
    }

    func updateStatus(newStatus: OrderStatus) {
        self.status = newStatus
    }
}

// Criando alguns produtos
let product1 = Product(name: "iPhone 13", price: 999.99)
let product2 = Product(name: "MacBook Pro", price: 1999.99)
let product3 = Product(name: "AirPods Pro", price: 199.99)

// Criando um pedido
let order = Order(orderID: "123456", products: [product1, product2])

// Função para imprimir os detalhes de um pedido
func printOrderDetails(order: Order) {
    print("Pedido ID: \(order.orderID)")
    print("Produtos:")
    for product in order.products {
        print("- \(product.name): $\(product.price)")
    }
    print("Status: \(order.status)")
    print("Total: $\(order.calculateTotalPrice())")
}

// Testando o código
printOrderDetails(order: order)

// Simulando uma atualização de status do pedido
order.updateStatus(newStatus: .shipped)
printOrderDetails(order: order)
