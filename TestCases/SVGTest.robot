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
    close browser

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
    #sleep  1
    #click element at coordinates    //div[@id='map']    880    461
    move to  880  461
    mouse click  880  461
    #sleep  1
    move to  1500  461
    mouse click  1500  461
    #sleep  1
    move to  600  683
    mouse click  600  683
    #sleep  1
    move to  1500  683
    mouse click  1500  683
    #click element   //div[@id='map']
    click element  //div[@class='button-container active']//a[@class='leaflet-pm-action action-cancel'][contains(text(),'Cancel')]
    #sleep  1
    click element  //div[@class='control-icon leaflet-pm-icon-polyline']
    #sleep  1
    click element  //div[@class='leaflet-pane leaflet-marker-pane']//img[1]
    #sleep  1
    click element  //div[@class='leaflet-pane leaflet-marker-pane']//img[2]
    click element  //div[@class='button-container active']//a[@class='leaflet-pm-action action-finish'][contains(text(),'Finish')]
    #sleep  1
    click element  //div[@class='control-icon leaflet-pm-icon-polyline']
    #sleep  1
    click element  //div[@class='leaflet-pane leaflet-marker-pane']//img[3]
    #sleep  1
    click element  //div[@class='leaflet-pane leaflet-marker-pane']//img[4]
    click element  //div[@class='button-container active']//a[@class='leaflet-pm-action action-finish'][contains(text(),'Finish')]
    #sleep  1
    click element  //div[@class='control-icon leaflet-pm-icon-delete']
    #sleep  1
    click element  //*[@id="map"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][2]
    #sleep  1
    click element  //*[@id="map"]/div[1]/div[3]/*[name()="svg"]/*[name()="g"]/*[name()="path"][1]
    #sleep  1
    click element  //div[@class='button-container active']//a[@class='leaflet-pm-action action-cancel'][contains(text(),'Cancel')]

