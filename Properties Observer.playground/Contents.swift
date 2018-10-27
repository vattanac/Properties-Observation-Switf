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
        }
    }
}

totalStep = 120


