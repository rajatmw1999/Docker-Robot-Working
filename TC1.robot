*** Settings ***
Library     Selenium2Library
Library     XvfbRobot

*** Test Cases ***
Open Google
    Start Virtual Display    1920    1080
    Open Browser    firefox
    GoTo    http://google.com
    ${title}=       Get Title
    Should Be Equal    Google    ${title}