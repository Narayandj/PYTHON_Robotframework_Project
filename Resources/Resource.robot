*** Settings ***
Library     SeleniumLibrary

*** Variables ***


${url} =        https://demo.nopcommerce.com/
${browser} =    Chrome


*** Keywords ***
Enter Data for Login
    click link      xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    input text      id:Email    narayan@gmail.com
    input text      id:Password     Jadhav@123


Launch nopCommerce app
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1