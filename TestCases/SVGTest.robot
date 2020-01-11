*** Settings ***
Library     SeleniumLibrary
Library     ../Resources/MyLibrary.py

*** Variables ***
${browser}  chrome
${url}  https://leafletjs.com/examples/quick-start/example.html

*** Test Cases ***
learnTest
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  0.5seconds
    #SVGTest
    SVGTest2

*** keywords ***
SVGTest
    click element   //img[@class='leaflet-marker-icon leaflet-zoom-animated leaflet-interactive']
    sleep   3
    click element  //*[@id="mapid"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][2]
    sleep   3
    click element   //*[@id="mapid"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][1]
    sleep   3
    #element text should be  //div[contains(text(),'I am a circle.')]      I am a circle.

SVGTest2
    go to       https://stephsaephan.github.io/leaflet-map-example/
    wait until element is visible   //div[@id='map']
    click element   //div[@class='control-icon leaflet-pm-icon-marker']
    sleep  3
    #click element at coordinates    //div[@id='map']    880    461
    move to  880  461
    click element   //div[@id='map']
    sleep  3
    click element  //div[@class='button-container active']//a[@class='leaflet-pm-action action-cancel'][contains(text(),'Cancel')]
