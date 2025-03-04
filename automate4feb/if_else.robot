# *** Settings *** 


# *** Variables ***


# *** Test Cases ***
# TC01 - Calculate grade
#     Calculate grade     69

# *** Keywords ***
# Calculate grade
#     [Arguments]     ${text}
#     IF  ${text}>=90
#         log to console  A
#     ELSE IF  ${text}>=80
#         log to console  B
#     ELSE IF  ${text}>=70
#         log to console  C
#     ELSE IF  ${text}>=60
#         log to console  D
#     ELSE IF  ${text}<60
#         log to console  F
#     END



*** Variables ***
${a}      98
${b}      85
${c}      78
${D}      65
${e}      59


*** Keywords ***
Calculate grade
    [Arguments]     ${text}
    IF  ${text}>=90
        log to console  A
    ELSE IF  ${text}>=80
        log to console  B
    ELSE IF  ${text}>=70
        log to console  C
    ELSE IF  ${text}>=60
        log to console  D
    ELSE IF  ${text}<60
        log to console  F
    END

*** Test Cases ***
TC_01
    Calculate grade     ${a}
TC_02
    Calculate grade     ${b}
TC_03
    Calculate grade     ${c}
TC_04
    Calculate grade     ${d}
TC_05
    Calculate grade     ${e}
