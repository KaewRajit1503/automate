# *** Variables ***
# ${username}     example_username
# ${timeout}     10
# ${pi}          3.1415

# *** Test Cases ***
# TEST-01
#     BuiltIn.Log to console     ${username} 
# TEST-02
#     BuiltIn.Log to console     ${timeout}
# TEST-03
#     BuiltIn.Log to console     ${pi} 
# TEST-04
#     ${username}    BuiltIn.Set Variable    new_username
#     BuiltIn.Log to console     ${username} 


# *** Variables ***
# @{MAESSAGES}    Robot    Framwork

# *** Test Cases ***
# Hello list
#   log to console     ${MAESSAGES}[0]
#   log to console     ${MAESSAGES}[1]

# *** Settings ***
# Library    Collections

# *** Variables ***
# @{MAESSAGES}    Robot    Framwork

# *** Test Cases ***
# Hello list
#   log to console     ${MAESSAGES}[0]
#   log to console     ${MAESSAGES}[1]
#   @{list}     BuiltIn.Create list    username     password
#   BuiltIn.log to console  ${list}[1]
#   Collections.Append to list  ${MAESSAGES}   testing
#   BuiltIn.log to console   ${MAESSAGES}[2]

# *** Settings ***
# Library    Collections

# *** Variables ***
# @{Movie}    Batman    Superman    wonder woman     Flash

# *** Test Cases ***
# Test-01
#   log to console     ${Movie}[2]
#   Collections.Append to list  ${Movie}   Aquaman
#   BuiltIn.log to console   ${Movie}[4]


*** Settings ***
Library    Collections

*** Variables ***
&{Movie}    Hero=Iroman    Villain=Thnos    Anti-hero=Deadpool     

*** Test Cases ***
Test-01
  log to console     ${Movie}[Villain]

