*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library         SeleniumLibrary
Library     ../Resources/MyLibrary.py
Variables       ../PageObjects/Locators.py

*** Variables ***
${SERVER}         https://stephsaephan.github.io/leaflet-map-example/
${BROWSER}        chrome
${DELAY}          0.5


*** Keywords ***
Open Browser To SVG Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    wait until element is visible   ${leaflet_Map}

Click New Marker
    click element  ${new_Marker}

Create New Marker
    [Arguments]     ${Xposition}    ${Yposition}
    move to  ${Xposition}  ${Yposition}
    mouse click  ${Xposition}  ${Yposition}

Cancel Marker Creation
    click element  ${new_Marker_Cancel}

Click New Trail
    click element  ${new_Trail}

Create New Trail
    [Arguments]     ${SourceNE}     ${DestNE}
    click element  //div[@class='leaflet-pane leaflet-marker-pane']//img[${SourceNE}]
    click element  //div[@class='leaflet-pane leaflet-marker-pane']//img[${DestNE}]

Finish Trail Creation
    click element  ${new_Trail_Finish}

Click Delete Objetcs
    click element  ${delete_Objetcts}

Delete Trail
    [Arguments]     ${TrailName}
    click element  //*[@id="map"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][${TrailName}]

Finish Trail Delete
    click element  ${delete_Objetcts_Cancel}





