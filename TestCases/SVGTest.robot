*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://leafletjs.com/examples/quick-start/example.html

*** Test Cases ***
learnTest
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  0.5seconds
    SVGTest

*** keywords ***
SVGTest
    click element   //img[@class='leaflet-marker-icon leaflet-zoom-animated leaflet-interactive']
    sleep   3
    click element  //*[@id="mapid"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][2]
    sleep   3
    click element   //*[@id="mapid"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][1]
    sleep   3
    #element text should be  //div[contains(text(),'I am a circle.')]      I am a circle.

