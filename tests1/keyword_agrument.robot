# *** Settings *** 


# *** Variables ***
# ${hello}    hello

# *** Test Cases ***
# TC01 - Say Hello
#     Log say hello
#     Log say hello 2
#     Log To Console  ${hello}

# *** Keywords ***
# Log say hello
#     Log to Console  ${hello}

# Log say hello 2
#     Log To Console  ${hello}



*** Settings *** 


*** Variables ***
${hello}    hello

*** Test Cases ***
TC01 - Say Hello
    Log say hello   hi bro
TC02 - Say Hello
    Log say hello   Hi sis

*** Keywords ***
Log say hello
    [Arguments]     ${text}
    Log To Console      ${text}