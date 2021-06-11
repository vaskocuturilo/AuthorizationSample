# The simple example project how to work with XCUITest framework

## Test scenario:
- Create simpler application with Authorization(Login and Register).
- Create automation scripts for Authorization application. 
- Generate report for automation scripts. 
    
## Requirements:
- Use any *object-oriented language* (Objective-C or Swift).
- Use automation patterns like *PageObject*, *data-driven* tests, etc.
- Use any testing frameworks (XCTest). 
- provide code and clear instructions how to run it.

**Note**: please put your code in public repository.

**Note**: Please send link to this repo when you are done.


You will need the following technologies available to try it out:
* Git
* XCTest
* Swift 5
* Xcode 
* Web browser Chrome

### Ho w to run

```xcodebuild test -workspace AuthorizationSample.xcworkspace -scheme AuthorizationSample -destination 'platform=iOS Simulator,name=iPhone 8,OS=14.0' -resultBundlePath TestResults```

- [x] ability to run tests for different browsers/os by configuring;
- [x] ability to run tests for different environments(urls) by configuring/by command-line.

```.``` 

### Generate Allure report 

```./xcresults export TestResults.xcresult/ outputDirectory```

### Open Allure report in browser

```allure serve outputDirectory/```


![](https://d.radikal.ru/d32/2106/a0/a3b1d287548e.png) 

![](https://b.radikal.ru/b24/2106/62/17255f025b74.png)
