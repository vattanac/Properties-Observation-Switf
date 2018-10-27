import UIKit


//EXAMPLE 1:
print("===EXAMPLE 1===")
//Tracking/Observer on Properties


//willSet is called just before the value is stored.
//didSet is calleed immdiately after the new value has been strored.
var myGrade: Int = 80 {
    willSet(bb) {
        print("myGrade = \(myGrade) ;New Value =  \(bb)")
       }
    didSet(aa){
        print("myGrade = \(myGrade);Old Value = \(aa) ")
    }
}

myGrade = 100


//EXAMPLE 2:
print("===EXAMPLE 2===")
var totalStep:Int = 20 {
    willSet (newTotalStep){
        print("About to set totalStep to \(newTotalStep)")
    }
    didSet(oldTotalStep){
        if totalStep > oldTotalStep {
            print("Added \(totalStep - oldTotalStep)")
        }else{
            print("Logic Error")
        }
    }
}

totalStep = 120
totalStep = 70


//EXAMPLE 3:
print("=== EXAMPLE3 ===")
var isUserLoggedIN = false {
   
    willSet(newValue){
        print("The user try something")
    }
    didSet{
        if isUserLoggedIN {
            print("user has switch from \(oldValue) to \(isUserLoggedIN)")
        }else{
            print(isUserLoggedIN)
        }
    }
        
}

isUserLoggedIN = true

isUserLoggedIN = false

isUserLoggedIN = true

