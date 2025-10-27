*** Settings ***
Resource    Resources/Common.robot
Test Setup  Open SauceDemo
Test Teardown  Close SauceDemo

*** Test Cases ***
Login Test Case
    [Tags]    feature:login    smoke
    Input Text      ${SELECTORS["input_username"]}    standard_user
    Input Text      ${SELECTORS["input_password"]}    secret_sauce
    Click Button    ${SELECTORS["login_button"]}
    Page Should Contain Element    ${SELECTORS["menu_button"]}
    Sleep    ${Delay}
