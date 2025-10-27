*** Settings ***
Library    SeleniumLibrary
Variables    Resources/Selectors.py

*** Keywords ***
Open SauceDemo
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

Close SauceDemo
    Close Browser
