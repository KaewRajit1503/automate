# *** Variables ***
# ${a}      Doppio
# ${b}      Tester


# *** Keywords ***
# Test robot
#     [Arguments]     ${name}
#     IF   "${name}" == "Doppio" 
#         Log to console  Good 
#     ELSE
#         Log to console  input out of bound
#     END

# *** Test Cases ***
# TC_01
#     Test robot     ${a}


# *** Variables ***
# ${a}      Doppio
# ${b}      123
# ${c}      45

# *** Keywords ***
# Test robot
#     [Arguments]     ${name}
#     IF   "${name}" == "Doppio" 
#         Log to console  สุดยอด
#     ELSE IF  "${name}" == "123"
#         Log to console  ต้อง Doppio เท่านั้น
#     ELSE 
#         Log to console  Input out of bound
#     END

# *** Test Cases ***
# TC_01
#     Test robot     ${c}



# *** Variables ***
# @{hero}      batman  superman  wonder woman  Flash  Ironman  Aquaman


# *** Test Cases ***
# TC_01
#     FOR   ${index}  IN  @{hero}
#         Log to console  ${index}
#     END
# TC_02
#     FOR   ${index}  IN  @{hero}
#         continue for Loop if   "${index}" == "Ironman"
#         Log to console  ${index}
#     END
# TC_03
#     FOR   ${index}  IN  @{hero}
#         Log to console  ${index}
#         Exit for loop if  "${index}" == "Ironman"
#     END



*** Test Cases ***
TC_01
    Log to console     Loop over values frome 0 to 9
    FOR   ${index}  IN RANGE  10
        Log to console  ${index}
    END
TC_02
    Log to console     Loop over values frome 1 to 10
    FOR   ${index}  IN RANGE  1   11
        Log to console  ${index}
    END


# *** Keywords ***


# *** Variables ***
# @{hero}      batman  superman  wonder woman  Flash  Ironman  Aquaman

# *** Keywords ***
# Log All
#     FOR   ${index}  IN  @{hero}
#         Log to console   ${index}
#     END
# Skip Ironman
#     FOR   ${index}  IN  @{hero}
#         continue for Loop if   "${index}" == "Ironman"
#         Log to console  ${index}
#     END
# exit Iroman
#     FOR   ${index}  IN  @{hero}
#         Log to console  ${index}
#         Exit for loop if  "${index}" == "Ironman"
#     END
# *** Test Cases ***
# TC_01 Log All hero
#     [Tags]  TC1
#     Log All  
# TC_02 Skip Ironman
#     [Tags]  TC2
#     Skip Ironman 
# TC_03 exit Iroman
#     [Tags]  TC3
#     exit Iroman

# ใส่ tag เพื่อเลือกrun test case robot -i [ชื่อtag] 

# 1. SeleniumLibrary
# ใช้สำหรับ: การทดสอบ Web Application แบบอัตโนมัติ (UI Testing)
# 2. RequestsLibrary
# ใช้สำหรับ: การส่ง HTTP Requests เพื่อทดสอบ API
# 3. BuiltIn
# ใช้สำหรับ: ฟังก์ชันพื้นฐาน เช่น การล็อกข้อความ หรือจัดการคำสั่ง
# 4. Process
# ใช้สำหรับ: รันคำสั่งหรือโปรแกรมในระบบปฏิบัติการ
# 5. Collections
# ใช้สำหรับ: การจัดการ List หรือ Dictionary
# 6. ExcelLibrary
# ใช้สำหรับ: อ่าน/เขียนข้อมูลใน Excel
# 7. String
# ใช้สำหรับ: การจัดการข้อความ
# 8. DateTime
# ใช้สำหรับ: การจัดการวันและเวลา
# 9. DatabaseLibrary
# ใช้สำหรับ: เชื่อมต่อกับฐานข้อมูลและรันคำสั่ง SQL
# 10. OperatingSystem
# ใช้สำหรับ: การจัดการไฟล์ โฟลเดอร์ หรือคำสั่งในระบบ