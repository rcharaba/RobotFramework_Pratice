*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library         SeleniumLibrary
Variables       ../PageObjects/Locators.py

*** Variables ***
${SERVER}         www.practiceselenium.com
${BROWSER}        chrome
${DELAY}          0
${FORM URL}      http://${SERVER}/practice-form.html


*** Keywords ***
Open Browser To Form Page
    Open Browser    ${FORM URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    #Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login Page

Enter First Name
    [Arguments]     ${firstName}
    input text      ${txt_FirstName}    ${firstName}

Enter Last Name
    [Arguments]     ${lastName}
    input text      ${txt_LastName}     ${lastName}