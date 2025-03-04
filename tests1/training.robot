# 1. Keywords คือ สร้างชุดคำสั่งไว้เรียกใช้
# 2. Arguments คือ ไว้รับค่าข้อมูล
# 3. RETURN คือ ทำให้จบ และไปแทนค่าในตัวแปร


# *** Keywords ***
# log hello to console
#     log to console  Hello Kaew !
# *** Test Case ***
# Test case
#     log hello to console



# *** Keywords ***
# log kaew to console
#     log to console  Hello Word!


# *** Test Case ***
# Test case
#     log kaew to console

# *** Keywords ***
# log hello to console
#     [Arguments]     ${name}
#     log to console   ${name} 


# *** Test Case ***
# Test case
#     log hello to console    


# 3. RETURN คือ ทำให้จบ และไปแทนค่าในตัวแปร
# *** Keywords ***
# log hello to console
#     [Arguments]     ${name}
#     log to console  hello ${name} !
#     RETURN  ${name}

# *** Test Case ***
# Test case
#     ${my_name}   log hello to console   kaew

# *** Keywords ***
# log hello to console
#     [Arguments]     ${name}    ${age}   
#     log to console  hello  
#     RETURN  ${name}   ${age}

# *** Test Case ***
# Test case
#     ${my_name}   ${my_age}  log hello to console   Kaew  18
#     log to console   ${my_name}   ${my_age}



*** Keywords ***
Sum of two number
    [Arguments]     ${first_number}      ${second_number}   
    ${result}   Evaluate  ${first_number} + ${second_number}
    RETURN  ${result}

*** Test Case ***
Test case
    ${result}   Sum of two number   1  2
    log to console    ${result}