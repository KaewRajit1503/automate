# *** Settings ***
# Library         SeleniumLibrary

# *** Test Cases ***
# TEST-01
#    Open Browser    https://www.google.com/?hl=th    browser=chrome


# *** Settings ***
# Library         SeleniumLibrary

# *** Test Cases ***
# TEST-01
#    SeleniumLibrary.Open browser       file:///Users/rajitkaew.j/Downloads/OneDrive_1_11-16-2024 (1)/locator.html     browser=chrome
#    SeleniumLibrary.Input text        //*[@id="txtEmail"]    doppio
#    SeleniumLibrary.Input text        //*[@class="name-box"]  Doppio
#    SeleniumLibrary.Input text        //*[@name="pwdEle"]     1234
#    SeleniumLibrary.Click element    //*[@class="submitCls"]  
#    SeleniumLibrary.Close browser 
   


# *** Settings ***
# Library         SeleniumLibrary

# *** Test Cases ***
# TEST-01
#    SeleniumLibrary.Open browser       file:///Users/rajitkaew.j/Downloads/OneDrive_1_11-16-2024 (1)/locator.html     browser=chrome
#    SeleniumLibrary.Input text        id=txtEmail   doppio
#    SeleniumLibrary.Input text        class=name-box  Doppio
#    SeleniumLibrary.Input text        name=pwdEle     1234
#    SeleniumLibrary.Click element     class=submitCls 
#    BuiltIn.Sleep    1s
#    SeleniumLibrary.Close browser 


*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
TEST-01
   SeleniumLibrary.Open browser       file:////Users/rajitkaew.j/Downloads/OneDrive_1_11-16-2024 (1)/locator2.html    browser=chrome
   SeleniumLibrary.Input text        xpath=//input[@automate-element='email']   doppio
   SeleniumLibrary.Input text        xpath=//div[@id="zoneOfName"]/input      Doppio
   SeleniumLibrary.Input text        xpath=//input[@id="txtPwd-fsalsaSdssUss"]      1234
   SeleniumLibrary.Input text        xpath=//label[@label-id="confirmPwd"]/following-sibling::input   1234
   SeleniumLibrary.Input text        xpath=//label[contains(text(),"Nickname")]/following-sibling::input    Kaew
   SeleniumLibrary.Input text        xpath=//input[@b="pro"]    Bangkok
   SeleniumLibrary.Input text        xpath=//input[@b="post"]    16547
   SeleniumLibrary.Input text        xpath=//input[@a="id2"]    Thai
   SeleniumLibrary.Click element     xpath=//button[@class="submitCls"]
   BuiltIn.Sleep    10s
   SeleniumLibrary.Close browser 
   



