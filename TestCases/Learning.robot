*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
learnTest
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  0.5seconds
    FillForm
    RadioButtom
    CheckBox
    close browser
    DropDown

*** keywords ***
FillForm
    # Fill the form
    #title should be  Practice Form
    ${"texto"}  set variable  xpath://input[@name='firstname']
    element should be visible  ${"texto"}
    element should be enabled  ${"texto"}
    input text  ${"texto"}     Rodrigo
    input text  //input[@name='lastname']     Charaba
    #click element   //button[@class='btn btn-success gradient2']

RadioButtom
    # Selecting radio buttons
    select radio button  sex    Male
    select radio button  exp    5

CheckBox
    # Selecting cehcbox
    select checkbox  BlackTea
    select checkbox  RedTea
    unselect checkbox  BlackTea

DropDown
    # Selecting dropdown
    select from list by label  continents   Antartica
    sleep  3
    select from list by index  continents   3
