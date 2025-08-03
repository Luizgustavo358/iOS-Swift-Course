/**
 * Creating the CanFly protocol.
 */
protocol CanFly {
    func fly()
}

/**
 * Creating the Bird class.
 */
class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
}

/**
 * Creating the Eagle class.
 * @extends       -> Bird class
 * @implements -> CanFly protocol
 */
class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

/**
 * Creating the Penguin class.
 * @extends -> Bird class
 */
class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

/**
 * Creating the FlyingMuseum struct.
 */
struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

/**
 * Creating the Airplane struct.
 * @implements -> CanFly protocol
 */
struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

myEagle.fly()
myPlane.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
