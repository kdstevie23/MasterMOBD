import UIKit

struct Item {
    let name: String
    let price: Double
}

enum OrderStatus {
    case open, paid
}

class Order {
    var items: [Item] = []
    private(set) var status: OrderStatus = .open

    func add(item: Item, quantity: Int) {
        (0..<quantity).forEach { _ in
            items.append(item)
        }
    }

    var totalPrice: Double {
        return items.reduce(0, { return $0 + $1.price })
    }
    
    func set(status: OrderStatus) {
        self.status = status
    }
}

class SMSAuth {
    private(set) var authorized = false
    
    func verify(code: String) {
        print("Verifying code: \(code)")
        self.authorized = true
    }
}

protocol PaymentProcessor {
    func pay(order: Order)
}

class DebitPaymentProcessor: PaymentProcessor {
    
    var securityCode: String
    var authorizer: SMSAuth
    
    init(securityCode: String, authorizer: SMSAuth) {
        self.securityCode = securityCode
        self.authorizer = authorizer
    }
    
    func pay(order: Order) {
        guard authorizer.authorized else {
            fatalError("Not authorized")
        }
        print("Processing debit payment type")
        print("Verifying security code: \(securityCode)")
        order.set(status: .paid)
    }
    
    func authSms(code: String) {
        print("Verifying SMS code \(code)")
    }
}

class CreditPaymentProcessor: PaymentProcessor {
    var securityCode: String
    
    init(securityCode: String) {
        self.securityCode = securityCode
    }
    
    func pay(order: Order) {
        print("Processing credit payment type")
        print("Verifying security code: \(securityCode)")
        order.set(status: .paid)
    }
}

class PaypalPaymentProcessor: PaymentProcessor {
    let emailAddress: String
    var authorizer: SMSAuth
    
    init(email: String, authorizer: SMSAuth) {
        self.emailAddress = email
        self.authorizer = authorizer
    }
    
    func pay(order: Order) {
        guard authorizer.authorized else {
            fatalError("Not authorized")
        }
        print("Processing Paypal payment type")
        print("Verifying email address: \(emailAddress)")
        order.set(status: .paid)
    }
    
    func authSms(code: String) {
        print("Verifying SMS code \(code)")
    }
}

let order = Order()
order.add(item: Item(name: "Keyboard", price: 50), quantity: 1)
order.add(item: Item(name: "SSD", price: 150), quantity: 1)
order.add(item: Item(name: "USB Cable", price: 5), quantity: 3)

let authorizer = SMSAuth()
authorizer.verify(code: "849588")

let paymentProcessor = PaypalPaymentProcessor(email: "ryanplitt@gmail.com", authorizer: authorizer)
print(order.totalPrice)
paymentProcessor.pay(order: order)
