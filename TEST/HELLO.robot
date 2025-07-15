*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Test Cases ***
Hello Test Case
    Log To Console    Hello, Japan

First Test Case
    Open Browser    https://www.saucedemo.com/    chrome
    sleep    5
    Close Browser
