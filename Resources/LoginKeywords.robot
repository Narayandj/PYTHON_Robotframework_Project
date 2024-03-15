*** Settings ***
Library  SeleniumLibrary

Variables  ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    open browser        ${SiteUrl}      ${Browser}
    maximize browser window


Enter Username
    [Arguments]     ${username}
    input text      ${Username_txt}     ${username}

Enter Password
    [Arguments]     ${password}
    input text      ${Password_txt}    ${password}


Click Login
    click button        ${Login_btn}

Veirfy Successful Login
    title should be        Login: Mercury Tours

Close my Browser
    close all browsers
