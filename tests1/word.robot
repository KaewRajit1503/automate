*** Settings *** 
Library  Collections

*** Variables ***
@{my_list}    apple    banana    cherry

*** Test Cases ***
Test List Contains Value
    Collections.List Should Contain Value    ${my_list}    Apple      msa=ไม่ผ่าน
