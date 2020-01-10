*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://stephsaephan.github.io/leaflet-map-example/

*** Test Cases ***
learnTest
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  0.5seconds
    SVGTest

*** keywords ***
SVGTest
    click element   //html[1]/body[1]/div[1]/div[1]/div[4]/img[1]
    sleep   3
    click element  //*[@id="mapid"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][2]
    sleep   3
    click element   //*[@id="mapid"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][1]
    sleep   3
    element text should be  //div[contains(text(),'I am a circle.')]      I am a circle.


