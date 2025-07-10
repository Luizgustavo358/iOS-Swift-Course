struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String : Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defences increased!")
    }
}

var anotherTown = Town(name: "New York", citizens: ["Pedro", "Geralda", "Luiz"], resources: ["Population": 8000000])

anotherTown.citizens.append("Perla")
print(anotherTown.citizens)

var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed": 1])

anotherTown.citizens.append("Wilson")

ghostTown.fortify()
