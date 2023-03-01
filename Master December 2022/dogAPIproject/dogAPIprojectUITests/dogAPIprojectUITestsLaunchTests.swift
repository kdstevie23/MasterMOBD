//
//dogAPIprojectUITestsLaunchTests.swift
//dogAPIprojectUITests
//
//CreatedbyStevenNewmanon12/6/22.
//

importXCTest

finalclassdogAPIprojectUITestsLaunchTests:XCTestCase{

overrideclassvarrunsForEachTargetApplicationUIConfiguration:Bool{
true
}

overridefuncsetUpWithError()throws{
continueAfterFailure=false
}

functestLaunch()throws{
letapp=XCUIApplication()
app.launch()

//Insertstepsheretoperformafterapplaunchbutbeforetakingascreenshot,
//suchasloggingintoatestaccountornavigatingsomewhereintheapp

letattachment=XCTAttachment(screenshot:app.screenshot())
attachment.name="LaunchScreen"
attachment.lifetime=.keepAlways
add(attachment)
}
}
