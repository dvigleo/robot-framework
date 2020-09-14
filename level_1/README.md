# Robot Framework

## Basic project structure
```py
/Project
    |-Tests
        |- main-script.robot    # No reference to SeleniumLibrary
    |-Resources
        |- resource.robot       # References page objects
        |- common.robot         # References SeleniumLibrary, uses keywords to begin and end tests
        |- PO
            |- cart.robot       # References Selenium Library
    |-Results
```

## Commands

### To run a single test case
```robot
    robot -d results tests/my-script.robot
```

### To run tests with a particular tag
```robot
    robot -d results -include smoke tests/my-script.robot
    robot -d results -i smoke tests/my-script.robot 
```

### To run multiple suites
```robot
robot -t "testname" tests -d results
```

## Style: Procedural vs Gherkin
### Procedural
```robot
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Common.Begin Web Test
    AmazonApp.Search for Products
    AmazonApp.Select Product 
    AmazonApp.Save product
    Sleep  2s
    Common.End Web Test
```
 ### Gherkin
```robot
User must sign in to check out
    [Tags]  Smoke
    Given Common.Begin Web Test
    and AmazonApp.Search for Products
    and AmazonApp.Select Product
    When AmazonApp.Save Product
    Sleep  3s
    Then Common.End Web Test
```

## Keywords
* Allow for multiple test cases to be reused. 
* Improve our understanding of the intention of the script
* Improves our abiity to decipher test results

```py
	*** Settings ***

	*** Test Cases ***
	Test case 1
	    Do Something
	    Do Something Else
	Test case 2
	    Do Another Thing
	    Do Something Else
	*** Keywords ***
	Do Something
	    Log  I am doing something
	Do Something Else
	    Log  I am doing something else
	Do Another Thing
    Log  I am doing another thing
```


## Variables
* Used to centralize input data
* Reduce code repetition
* Enable differnt input values at runtime

### Scalar
* Hold *single* values
    * First name
    * Browser
    * Credit card number

#### **Syntax for setting**
* ```robot ${VARIABLE NAME} =  your data ```
    * Used in the *Variables* section in the script file
* ```robot ${variable name} = Set Variable  your data ```
    * Used within a test case
* [Arguments] 

#### **Syntax for retrieving**
* ```robot Log  {variable name} ```


### List variables
* Hold *multiple* data
    * Username/password
    * Series of Coordinates

#### **Syntax for setting**
* ```robot @{VARIABLE NAME} =  data 1  data 2   data 3 ```
    * Used in the *Variables* section in the script file
* ```robot @{variable name} =  Create List  data 1  data 2  data 3 ```
    * Used within a test case
* Notice the two spaces between the data

#### **Syntax for retrieving**
* ```robot Log   @{variable name}[0] ```
* Looping

### Variable scope
Limit the scope of the variables to avoid unexpected behaviour of different test cases and keywords from changing the data of the variable. 
* **Global**: Information is accessible from all tests and keywords
* **Suite**: Information is only accessible to test cases within the suite file
* **Test case**: Information is only accessible within the test
* **Keyword**: Only accessible within the keyword when:
    * Passing a variable into a keyword
    * Create a variable within a keyword

#### **Naming conventions**
* Use upper case to denote the global variables
* Use lower case to denote the test/keyword variables

#### **Precedence**
Global variable declared can be overwritten in different locations
```robot
    Command > script > keyword
```

### Passing arguments to keywords
* Create modular, reusable units of logic
    * Can act upon variable input data
* Examples
    * Switchng URLs
    * Different test user data for enrollment

```robot
*** Test Cases ***
User can search for products
    Begin Web Test www.amazon.com gc

*** Keywords ***
Begin Web Test
    [Arguments] ${START URL}  ${BROWSER}
    Open Browser ${START URL} ${BROWSER}
    Cloase Browser
```

### Supply input data at runtime 
* Differnet input data without changing script
* Command line option/flag
```robot
    robot -v MY VARIABLE: A new value
```

## Semantic Sugar
* Results file should never be confusing
* Refactor page objects locators: To know what's being tested and know what failed 
    * Move locators from keywords into varible section to: 
        * Abstract technical complexity
        * Imparts business vernacular into scripts (use meaniinful name for locators)
* Use qutotes to identify UI elements
    * Instead of: Enter First Name Value
    * Use: Enter: "First Name" Value