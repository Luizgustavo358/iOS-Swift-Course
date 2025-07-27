
class Enemy {
    var health: Int
    var attackStrangth: Int
    
    init(health: Int, attackStranght: Int) {
        self.health = health
        self.attackStrangth = attackStranght
    }
    
    func takeDamage(amount: Int) {
        health -= amount
    }
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrangth) damage.")
    }
}
