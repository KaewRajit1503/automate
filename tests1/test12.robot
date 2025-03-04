# *** Keywords ***
# log hello to console
#     log to console  Hello Kaew !
# *** Test Case ***
# Test case
#     log hello to consle


*** Keywords ***
log hello to console
    [Arguments]     ${name}
    log to console   ${name} 


*** Test Case ***
Test case
    log hello to console   Kawe


    //*[@id="app"]/section/div/div[1]/span/span/input
    //*[@id="app"]/section/div/div[1]/span/span/span/button/span/svg