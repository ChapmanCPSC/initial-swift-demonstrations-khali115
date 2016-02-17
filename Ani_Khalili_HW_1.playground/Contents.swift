//: Playground - noun: a place where people can play

import UIKit

//simple variable examples
func favDessert(x: String, y: String ) -> String
{
    return "My favorite dessert is \(x) with \(y)"
}
print(favDessert("Cookies", y: "ice Cream"))

func favPie(x: String, topping y: String) -> String
{
    return "My favorite pie is \(x) with \(y)"
}
print(favPie("Blueberry", topping: "whipped cream"))

func favSeason(x: String, _ y: String) -> String
{
    return "I like to \(x) in the \(y)"
}
print(favSeason("swim", "summer"))

//Demonstrating Classes
print("Demonstrating Classes")
class Car
{
    //explicit initialization
    private var _Make : String = ""
    private var _Model : String = ""
    private var _Year : Int = 0
    private var _Color : String = ""
    
    //getter, setter
    var Make : String {
        get{
            return self._Make
        }
        set{
            if newValue == ""
            { self._Make = "-"}
            else
            {self._Make = newValue}
        }
    }
    
    //will, did set
    var Year : Int = 0 {
        willSet{
            print("Changing Year to \(newValue)")
        }
        didSet{
            print("The value has been changed from \(oldValue)")
        }
    }
    
    func Honk()
    {
        let honk = "Beep"
        print(honk)
    }
}

//object instantiation
var c = Car()
c.Honk()
c.Make = "BMW"
print(c.Make)
c.Year = 1990

/*can't do this, honk doesn't exist outside of the member function Honk
print(honk)
*/

//function parameters and function that returns a value, default parameters
func whichHouse(name: String = "Hufflepuff") -> String
{
    var house = "";
    
    if(name == "Harry")
    {
        house = "Gryffindor"
    }
    else if (name == "Luna")
    {
        house = "Ravenclaw"
    }
    else if(name == "Draco")
    {
        house = "Slytherin"
    }
    else
    {
        house = "Hufflepuff"
    }
    
    return house
}

var _house = whichHouse("Harry")
var h = whichHouse()
print(h)
print(_house)

//variadic parameters
func findMax(num: Int...) -> Int
{
    var max = Int()
    
    max = num[0]
    for n in num
    {
        if n > max
        {
            max = n
        }
    }
    
    return max
}

var _max = findMax(32,1,4,15,88)
print(_max)

//computed initializer
print("Computed Initializer")
var weight = 115.0
var moonWeight: Double =
{
    return weight*(1/6)
}()
print("On the moon you weigh \(moonWeight) pounds.")

//enums
print("Enums")
enum AnimalType
{
    case Tiger
    case Elephant
    case Dog
    case Fox
}

var patronus = AnimalType.Tiger
print(patronus)

//ranges, tuples
var array = [88,2,66]

for(idx, element) in array.enumerate()
{
    array[idx] = element*2
    print(array[idx])
}

var col = [1,2,3]
var row = [11,22,33]

var dotProd : Int =
{
    return col[0]*row[0]+col[1]*row[1]+col[2]*row[2]
}()
print(dotProd)

let personAddress = ("1 University Drive", "Orange", "CA", 92886)

//anonymous function
func anonFunc(someFunction: (x: String, y: String) -> String) -> String
{
    let res = someFunction(x: "CA", y:"Orange")
    return res
}

func disneyDiscount(a: String, b: String) -> String
{
    var disc = String()
    if a == "CA"
    {
        disc = "You get cali discount!"
        if b == "Orange" {
            disc = disc + "Hey, you get an additional discount!"
        }
    }
    else
    {disc = "Sorry, no discount for you"}
    
    return disc
    
}

var someAnon = anonFunc(disneyDiscount)
print(someAnon)
