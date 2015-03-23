// Playground - noun: a place where people can play

enum CarModel {
  case Honda
  case Mercedes
  case Ferrari
}

struct Car {

  let model : CarModel

}

extension Car {
  func carModel () -> String {
    return "\(self.model)"
  }
}

let ferrari = Car(model: .Ferrari)
println(ferrari.carModel())
