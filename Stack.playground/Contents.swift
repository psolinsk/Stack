public struct Stack<Element> {
    
    private var elements = [Element]()
    
    public init() {}
    
    public mutating func pop() -> Element? {
        return self.elements.popLast()
    }
    
    public mutating func push(element: Element){
        self.elements.append(element)
    }
    
    public func peek() -> Element? {
        return self.elements.last
    }
    
    public func isEmpty() -> Bool{
        return self.elements.isEmpty
    }
    
    public var count:Int {
        return self.elements.count
    }
}

var namesStack = Stack<String>()

namesStack.push(element: "Rafal")
namesStack.push(element: "Karol")

namesStack
namesStack.pop()
namesStack.pop()
namesStack.isEmpty()

// mamy imiona Rafał, Karol, Kuba, Krzysiek w zadanej kolejności, utworz algorytm który odwróci kolejnośc zadanych imion

var arrayOfName:[String] = ["Rafał", "Karol", "Kuba", "Krzysiek", "Olek"]
var arrayOfName2:[String] = []

func addToNameStackFromArray(arrayNameIndex:Int){
    namesStack.push(element: String(arrayOfName[arrayNameIndex]))
}

func reverseOrder(){
    var x:Int = namesStack.count
    
    repeat {
        addToNameStackFromArray(arrayNameIndex: x)
        x+=1
    } while x != arrayOfName.count
    
    arrayOfName.removeAll()
    
    repeat {
        //arrayOfName2.append(namesStack.pop()!)
        arrayOfName.append(namesStack.pop()!)
        x-=1
    } while x != 0
}

reverseOrder()

arrayOfName2
arrayOfName
namesStack
