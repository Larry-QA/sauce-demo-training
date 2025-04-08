*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Sauce Demo Site
    Open Browser    https://www.saucedemo.com/    chrome
    Page Should Contain    Swag Labs

    # Locate username field by ID
    Input Text    id:user-name    standard_user

    # Locate password field by NAME
    Input Text    name:password    secret_sauce

    # Locate login button by CSS selector
    Click Button    css:input#login-button

    Capture Page Screenshot
    Sleep    5
    Close Browser