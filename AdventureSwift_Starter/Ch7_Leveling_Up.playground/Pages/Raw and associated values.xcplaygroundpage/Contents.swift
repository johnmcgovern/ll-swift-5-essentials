/*:
 # Raw and Associated Values
 ---
 
 ## Topic Essentials
 Enumerations can be expanded to include raw values, which can store unique or sequential values, or associated values, which can capture case specific parameters for use in their respective code blocks.
 
 ### Objectives
 + Declare an enum with a raw value
 + Declare an enum with associated values
 + Add a method inside the enum to execute a switch statement for each case
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Raw values
enum NonPlayableCharacters: String{
    case Village = "Common, not much useful info there"
    case Blacksmith = "One per village, will have quest information"
    case Merchant = "No limit per village, will make you cool stuff"
}

var blacksmith = NonPlayableCharacters.Blacksmith
print(blacksmith.rawValue)

// Associated values
enum PlayerState {
    case Alive
    case KO(Level: Int)
    case Unknown(debugError: String)
    
    func evaluateCase() {
        switch self {
        case .Alive:
            print("Still Kicking")
        case .KO(let restartLevel):
            print("Sorry, back to level \(restartLevel) for you...")
        case .Unknown(debugError: let message):
            print(message)
        default:
            print("Unkown state encountered...")
        }
    }
}
