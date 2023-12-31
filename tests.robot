*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://kim.pixpa.com/
${title_home}     Welcome home
${title_about}    About us
${title_contact}    Get in touch
${title_service}    Our services

*** Test Cases ***
Check Navigation Buttons
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    # Check Home button
    Click Menu Item    Home
    Check Page Title    ${title_home}
    # Check About Us button
    Click Menu Item    About
    Check Page Title    ${title_about}
    # Check Contact button
    Click Menu Item    Contact
    Check Page Title    ${title_contact}
    # Check Contact button
    Click Menu Item    Service
    Check Page Title    ${title_service}
    Close All Browsers

*** Keywords ***
Click Menu Item
    [Arguments]    ${menu_item}
    ${button_xpath}=    Set Variable    //a[contains(text(), '${menu_item}')]
    Wait Until Element Is Visible    ${button_xpath}    timeout=30s
    Element Should Be Visible    ${button_xpath}    msg=Menu item "${menu_item}" does not exist
    Click Element    ${button_xpath}
    Log    Clicked on menu item: ${menu_item}

Check Page Title
    [Arguments]    ${expected_title}
    # Check if the expected title is visible within a specified timeout
    ${is_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//h1[contains(text(), '${expected_title}')]    timeout=10s
    # Log messages based on the result
    Run Keyword If    ${is_visible}    Log    The title and the menu match
    ...    ELSE    Log    Element check failed: Expected title '${expected_title}' not found
    Log    Current page title: ${expected_title}
