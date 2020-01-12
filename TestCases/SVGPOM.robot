*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/SVGKeywords.robot

*** Test Cases ***
SVGTest
    Open Browser To SVG Page
    Click New Marker
    Create New Marker   880  461
    Create New Marker  1500  461
    Create New Marker  600  683
    Create New Marker  1500  683
    Cancel Marker Creation
    Click New Trail
    Create New Trail    1   2
    Finish Trail Creation
    Click New Trail
    Create New Trail    3   4
    Finish Trail Creation
    Click Delete Objetcs
    Delete Trail    2
    Delete Trail    1
    Finish Trail Delete
