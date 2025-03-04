*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Open demo application
    AppiumLibrary.Open application	
    ...     remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...	    platformVersion=12
    ...     deviceName="ascend_pixel_4"
    ...	    app=/Users/rajitkaew.j/Desktop/OneDrive_1_11-13-2024/MaterialX-3.2.apk
Close Popup
    AppiumLibrary.Wait Until Element Is Visible     id=com.material.components:id/bt_close
    AppiumLibrary.Click Element     id=com.material.components:id/bt_close
Verify the header should be MaterialX
    AppiumLibrary.Wait Until Element Is Visible     xpath=//android.widget.TextView[@text="MaterialX"]
    AppiumLibrary.Element Should Contain Text        xpath=//android.widget.TextView[@text="MaterialX"]     MaterialX
Scroll to find Sliders menu
   
    AppiumLibrary.Swipe    440    1782    451    720

Expand the Sliders menu 
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="com.material.components:id/item_menu_group_name" and @text="Sliders"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@resource-id="com.material.components:id/item_menu_group_name" and @text="Sliders"]

Open menu Light
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="com.material.components:id/item_menu_sub_group_name" and @text="Light"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@resource-id="com.material.components:id/item_menu_sub_group_name" and @text="Light"]    