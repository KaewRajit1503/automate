*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#url
${url}    https://training-platform.doppio-tech.com/
${BROWSER}            chrome
#Locator
${search_bar_locator}    xpath=//input[@placeholder='input search text']
${search_button_locator}    xpath=//span[@class='ant-input-group-addon']/button
${product_locator}    xpath=//div[contains(text(),'Doppee phone')]
${add_cart_button_locator}    xpath=//div[@class='cart-add']/button

#variable
${keyword_product}    Doppee phone

*** Keywords ***
Open Website
    SeleniumLibrary.Open browser    ${url}    ${BROWSER}

Search Product
    SeleniumLibrary.Wait Until Element Is Visible    ${search_bar_locator}    # ตรวจ Locator ก่อนว่าแสดงไหม
    SeleniumLibrary.Input Text    ${search_bar_locator}    ${keyword_product}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_button_locator}
    SeleniumLibrary.Click Element    ${search_button_locator}

Click Card
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator}
    SeleniumLibrary.Click Element    ${product_locator}

Click Add to cart button
    SeleniumLibrary.Wait Until Element Is Visible    ${add_cart_button_locator}
    SeleniumLibrary.Click Element    ${add_cart_button_locator}

# Verify Popup Successfully
#     SeleniumLibrary.Wait Until Element Is Visible    ${add_cart_button_locator}

*** Test Cases ***
TC_01 Verify user can add product to cart successfully
    Open Website
    Search Product
    Click Card
    Click Add to cart button
    