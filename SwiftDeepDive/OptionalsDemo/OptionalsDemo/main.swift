struct MyOptional {
    var property = 123
    
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

print(myOptional?.property)
print(myOptional?.method())
