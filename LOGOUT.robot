*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Logout Test Case
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Input Text      id=user-name    standard_user
    Input Text      id=password     secret_sauce
    Sleep    3
    Click Button    id=login-button
    Wait Until Element Is Visible    id=react-burger-menu-btn
    Sleep    3
    Click Button    id=react-burger-menu-btn
    Wait Until Element Is Visible    id=logout_sidebar_link
    Sleep    3
    Click Element   id=logout_sidebar_link
    Wait Until Element Is Visible    id=login-button
    Element Should Be Visible        id=login-button
    Sleep    5
    Close Browser