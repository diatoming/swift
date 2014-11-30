// Playground - noun: a place where people can play

enum CarModel {
  case Honda
  case Mercedes
  case Ferrari
}

class Car {

  let model : CarModel

  init(model:CarModel) {
    self.model = model
  }

}

let myCar = Car(model: .Ferrari)

