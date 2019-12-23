*** Settings ***
Library  SeleniumLibrary



*** Keywords ***
Load
    go to  ${URL}

Verify Page Loaded
    wait until page contains  Delivering to