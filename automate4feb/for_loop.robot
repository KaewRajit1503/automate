*** Variables ***
@{hero}      ironman  batman  captain  superman  hulk  shazam  thor  flash  blackwindow  wonder woman  hawkeye


*** Test Cases ***
# TC_01
#     ${i}   Set Variable  0
#     FOR   ${index}  IN  @{hero}
#         ${number}   Evaluate   ${i}%2
#         Log to console    ${number}
#         IF  ${number}==0
#             Log to console   ${i} 
#         END
#         ${i}    Evaluate  ${i}+1
#         Exit for loop if  "${index.lower()}" == "blackwindow"
#     END
# TC_02
#     FOR   ${index}  IN  @{hero}
#         Log to console  ${index}
#     END
# TC_03
#     FOR   ${index}  IN  @{hero}
#         Log to console  ${index}
#         Exit for loop if  "${index}" == "blackwindow"
#     END
TC_04
    ${i}   Set Variable  0
    FOR   ${index}  IN  @{hero}
        ${number}   Evaluate   ${i}%2
        Log to console    ${number}
        IF  ${number}==0
            Log to console   ${index} 
        END
        ${i}    Evaluate  ${i}+1
        Exit for loop if  "${index.lower()}" == "blackwindow"
    END