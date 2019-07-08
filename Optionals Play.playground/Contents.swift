// Lesson: Optionals - Swift Programming
// Adapted from https://cocoacasts.com/swift-fundamentals-optionals

// MARK: Unwrapping Optionals
// Optionals are a new type - String and String? aren't the same kind of thing
var aString:String = "Hello" // Initializing a String
print(aString)

// Watch for the different behavior between String and Optional String
var myString:String
var myOptionalString:String?

//TODO: remove the comment on the next line and fix the ERROR that it causes
//print(myString)
print(myOptionalString) // this line should give a warning

// MARK: Unwrapping an Optional converts it to the base data type
myOptionalString = "world."
print(myOptionalString!) // this line should give a warning
// Rewrite the line above to use myOptionalString! to "implicitly unwrap" the Optional. This will convert the Optional to a String and remove the warning

//TODO: remove the comment on the next line and fix the ERROR that it causes
//let newMessage:String = myOptionalString

print(aString.uppercased())
//TODO: remove the comment on the next line and fix the ERROR that it causes
print(myOptionalString?.uppercased())

// MARK: Optional Binding (if let)
var anotherString:String? = "hi"

if let bString = anotherString {

    print("Say \(aString) \(bString.uppercased()) with Optional Binding" )
}
// Initialize anotherString="Hello" just before the Optional Binding


// MARK: Nil-Coalescing Operator ??
// TODO: Use the ?? operator instead of the Optional Binding (if let) above to print out "Hello WORLD"
var cString:String = anotherString ?? "World"
print("cString: \(cString)")

// MARK: GO FURTHER _ Make your own Optionals
//The struct creates a new data type called "User"
struct User {
    let first: String
    var balance: Float
    
    // This function may return a value of nil
    mutating func makePayment(amount: Float) -> String? {
        if amount < balance {
            balance -= amount
            return "\(first) made a payment of $\(amount)."
        }
        return nil
    }
}
// Create a User
var user: User = User(first: "Ian", balance: 21.0)
// Optional Chaining to conditionally make a payment
if let output = user.makePayment(amount: 20.0)?.uppercased(){
    print(output)
}
print("\(user.first)'s Balance:  \(user.balance)")

// Create an Optional User
var user2:User?
user2 = User(first:"Barb", balance:10.0)
//TODO: remove the comment on the next line and fix the ERRORs that it causes
//user2.makePayment(amount: 5.0).uppercased()



/*#############################
 
 */
var num: String = "bleh"
var number: Int? = Int(num)

if number != nil {
    print(number!)
} else {
    print("not a number!")
}
//if its nil
