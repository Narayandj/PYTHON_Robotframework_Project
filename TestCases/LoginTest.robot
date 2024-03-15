*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot


*** Variables ***
${Siteurl}=     https://demo.guru99.com/test/newtours/index.php
${BrowserChrome}=     Chrome
${BrowserEdge}=     Edge
${user}=    tutorial
${pwd}=     tutorial
${Browser} =    ${Empty}

*** Test Cases ***
Mercury Demo LoginTest
    Open my Browser     ${SiteUrl}      ${Browser}
    Enter Username      ${user}

    Enter Password      ${pwd}
    Click Login
    Veirfy Successful Login
    Close my Browser
