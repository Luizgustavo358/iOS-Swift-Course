
let skeleton1 = Enemy(health: 100, attackStranght: 10)
let skeleton2 = Enemy(health: 100, attackStranght: 10)

skeleton1.takeDamage(amount: 10)

print("skeleton2 health: \(skeleton2.health)")

let dragon = Enemy(health: 1000, attackStranght: 100)
dragon.takeDamage(amount: 50)
print("Dragon health: \(dragon.health)")
