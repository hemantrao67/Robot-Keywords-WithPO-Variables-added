*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_INPUT_SEARCH}      css=#global-search-input
${TOPNAV_BUTTON_SUBMIT}     css=#global-search-submit

*** Keywords ***
Search for product
    input text  ${TOPNAV_INPUT_SEARCH}  ${PRODUCT}
    click button  ${TOPNAV_BUTTON_SUBMIT}