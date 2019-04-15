// classes/ properties and functions

// This is an example code
print("\n ************************OOAD graduate presentation Demo using Swift - A simple program to demonstrate object principles ***********************\n")

print(" In this code, several object oriented properties are dealt with. First off, we have created root/ base classes such as House / Equipment, Electricity and Build. Next there are derived classes such as Brick, Tools. For Tools,  there are three derived  classes namely: Painting Tool, ChainSaw and Driller . We have showcased several properties and responsibilities of objects using swift.\n  ")
print(" \n First off we have created classes with attributes and methods in them. Used Inheritance to showcase derived classes and used the keyword Super to inherit the initialization function of the base class. Overriden the functions select() and use() in several areas, Overloading the select() function where the Brick can be made with/without Clay. created several instances/objects to exhibit the above mentioned properties using print statements. Next we created an abstract base class called Tools that inherits from Equipment class. Following this we created separate concrete classes such as Painting Tool, ChainSaw, Driller than can override methods in Tools class. Utilized access specifiers such as Private in several spaces. We tried to implement aggregation by saying that the chainsaw and the driller uses electricity thus  generating a  *HAS A* relationship. Finally we implemented Polymorphism by calling the construct operation on each equipment - brick,painting tool, chainsaw and driller." )
print("\n comments are provides everywhere to provide better insights \n")
print("\n output below \n")


class House { // House class encapsulates an array of materials and makes it into a string with the collect() method.
    
    let materials : [String]
    
    init(materials: [String]) {
        self.materials = materials
    }
    
    func collect() -> String{
        
        return materials.joined(separator: " ")
    }
}

class Equipment { // created base class as Equipment. Equipment is capitalized being the convention of swift
    
    let type: String
    
    init(type: String){
        self.type = type // to distinguish the property and parameter.
    }
    
    func select() -> String { // a placeholder method that crashes at runtime if called. Hence Equipment is an abstract class. select()  method must be overriden by a subclass.
        fatalError(" to implement below \(type)")
    }
    
    func use(_ house: House) -> String { // returns a string to be used.
        return house.collect()
    }
    
    func construct(_ house: House) { // first selects the equipment and then uses it for construction. Both methods work in symphony.
        print(select())
        print(use(house))
    }
    
}

// Inheritance and using super keyword

class Brick: Equipment { // Brick is a subclass of Equipment . All methods and properties are automatically inherited by the Brick class.
    let hasClay : Bool
    
    static let Silica = 50 // all Bricks have same percentage composition of Silica and Lime, this doesn't change so it is static
    static let Lime = 5
    
    init(type: String, hasClay : Bool = false) {
        self.hasClay = hasClay
        
        super.init(type: type) // super keyword to call the parent class initializer. super class init() takes care of initializing properties such as type
        
    }
    
    // method overriding
    
    override func select() -> String {   // override the select() method. This provides an implementation of select that doesn't call the fatalError() and makes the Brick do something.
        return "Correct equipment selection for  brand type \(type)."
        
    }
    
    override func use(_ house: House) -> String { // override the use() method and the super keyword to call the parent method in order to get the prepared materials and use the brick
        
        return use(house, usingClay: hasClay) // here the overloading is shown. brick can be made with or without clay. Overloading is the process where two functions have same name but different parameters.
    }
    
    //Method overloading
    
    func use(_ house: House, usingClay: Bool) -> String { // overloads use() for brick to consist of clay  if usingClay is true
        let preparedMaterials = super.use(house)
        if hasClay && usingClay {
            return "Build House with  \(preparedMaterials) and  with Clayed Bricks."
        }
        else {
            return "Build House with \(preparedMaterials)  and without Clayed Bricks."
        }
    }
}

//Creating instances:::

let b = Brick(type: "X", hasClay: true) // created an instance of brick class and tuned it.

b.select()

let h = House(materials: ["Mud", "Rock", "Concrete"]) // created an instance of House class
b.use(h , usingClay: false)

b.use(h)

Brick.Silica //  static so we don't need a specific instance to call them.
Brick.Lime

//   abstract base class ::::::

class Tools: Equipment { // A new class tools that inherits from Equipment. Just like Equipment, where functions select() and use() needs to be overriden in a subclass.
    let difficulty: String
    
    init(type: String, difficulty: String = "medium") {
        self.difficulty = difficulty
        super.init(type: type)
    }
}

// Concrete classes :::::::


class PaintingTool: Tools { //  concrete type that Inherits from Tools
    static let cost = 30
    static let size = 20
    
    override func select() -> String {
        return "select \(type) brush based on size and area to paint "
    }
    
    override func use(_ house: House) -> String {
        let preparedMaterials = super.use(house)
        return "Paint the house with  \(preparedMaterials)."
    }
}

let pt = PaintingTool(type: "Roller", difficulty: "medium") // created an instance of Painting Tool


pt.select()
pt.use(h)

// Using access specifiers:

class Electricity {  // also a root class like Equipment
    private var _vol: Int // private variable voltage can be accessed only inside the Electricity class. underscore at the beginning - private implementation.
    private(set) var isOn: Bool
    
    init() {
        isOn = false
        _vol = 0
    }
    
    func plug() {  // affects the state isOn
        isOn = true
    }
    
    func unplug() {
        isOn = false // affects the state isOn
    }
    
    var voltage: Int {
        get {
            return isOn ? _vol : 0  // drops the voltage to 0 if tool is not plugged in
        }
        set {
            _vol = min(max(newValue, 50), 150) // voltage is always clamped between a value from 50-150
        }
    }
}

// Aggregation

class ChainSaw: Tools { // concrete type that Inherits from Tools
    let el : Electricity  // ChainSaw uses electricity . "HAS - A RELATIONSHIP"
    static let cost = 120
    static let size = 20
    
    init(type: String, difficulty: String = "hard", el: Electricity) {
        self.el = el
        super.init(type: type, difficulty: difficulty)
    }
    
    override func select() -> String {
        el.plug()
        el.voltage = 100
        return "select \(type) chainsaw brand"
    }
    
    override func use(_ house: House) -> String {
        let preparedMaterials = super.use(h)
        return "Use \(preparedMaterials)  and chainSaw at voltage \(el.voltage)."
    }
}

// similarly:

class Driller: Tools { // concrete type that Inherits from Tools
    let el : Electricity  // Driller uses electricity. "HAS - A RELATIONSHIP"
    static let cost = 100
    static let size = 10
    
    init(type: String, difficulty: String = "medium", el: Electricity) {
        self.el = el
        super.init(type: type, difficulty: difficulty)
    }
    
    override func select() -> String {
        el.plug()
        el.voltage = 100
        return "select \(type) driller brand"
    }
    
    override func use(_ house: House) -> String {
        let preparedMaterials = super.use(h)
        return "Use \(preparedMaterials)  and driller at voltage \(el.voltage)."
    }
}


//creating instances again for ChainSaw and Driller

let el = Electricity()
let cs = ChainSaw(type: "Earthwise", difficulty: "hard", el: el)
cs.select()

let dr = Driller(type: "RBS", difficulty: "medium", el: el)
dr.select()


dr.el.voltage
cs.el.voltage


dr.el.unplug()
dr.el.voltage
cs.el.voltage

dr.el.plug()
dr.el.voltage
cs.el.voltage




// Polymorphism :::::::

final class Build {  // Build class has an equipment array.
    let equipment: [Equipment]
    
    init(equipment: [Equipment]) {
        self.equipment = equipment
    }
    
    func construct(_ house: House) { // constructing the house by calling a for loop for each equipment in the array.
        for e in equipment {
            e.construct(house)
        }
    }
}

let equipment = [b, pt, cs, dr] // final creation of instance for all innstruments.
let bld = Build(equipment: equipment)
bld.construct(h)













