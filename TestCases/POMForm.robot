*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/FormKeywords.robot
Library         DataDriver      ../TestData/TestData.xlsx       sheet_name=Sheet1

Suite Setup         Open Browser To Form Page
Test Template       Names

*** Test Cases ***
FillForm using ${fName} and ${lName}

*** keywords ***
Names
    [Arguments]     ${fName}    ${lName}
    Enter First Name    ${fName}
    Enter Last Name     ${lName}