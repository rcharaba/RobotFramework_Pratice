*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.lmax.com/global/demo-login

*** Test Cases ***
loginTest
    open browser    ${url}  ${browser}
    loginToApplication
    close browser

*** keywords ***
loginToApplication
    input text  //input[@id='username']     abc
    input text  //input[@id='password']     abc
    click element   //button[@class='btn btn-success gradient2']
