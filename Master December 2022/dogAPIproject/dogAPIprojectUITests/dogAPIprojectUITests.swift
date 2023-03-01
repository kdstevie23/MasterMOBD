//
//dogAPIprojectUITests.swift
//dogAPIprojectUITests
//
//CreatedbyStevenNewmanon12/6/22.
//

importXCTest

finalclassdogAPIprojectUITests:XCTestCase{
    
    overridefuncsetUpWithError()throws{
        //Putsetupcodehere.Thismethodiscalledbeforetheinvocationofeachtestmethodintheclass.
        
        //InUItestsitisusuallybesttostopimmediatelywhenafailureoccurs.
        continueAfterFailure=false
        
        //InUItestsit’simportanttosettheinitialstate-suchasinterfaceorientation-requiredforyourtestsbeforetheyrun.ThesetUpmethodisagoodplacetodothis.
    }
    
    overridefunctearDownWithError()throws{
        //Putteardowncodehere.Thismethodiscalledaftertheinvocationofeachtestmethodintheclass.
    }
    
    functestExample()throws{
        //UItestsmustlaunchtheapplicationthattheytest.
        letapp=XCUIApplication()
        app.launch()
        
        //UseXCTAssertandrelatedfunctionstoverifyyourtestsproducethecorrectresults.
    }
    
    functestLaunchPerformance()throws{
        if#available(macOS10.15,iOS13.0,tvOS13.0,watchOS7.0,*){
            //Thismeasureshowlongittakestolaunchyourapplication.
            measure(metrics:[XCTApplicationLaunchMetric()]){
                XCUIApplication().launch()
            }
        }
    }
}
