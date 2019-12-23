*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_BUTTON_ADDTOCART}  css=body > div.js-content > div > div > div.js-body-content > div > div.atf-content > div > div.atf-content > div > div > div > div > div.Grid > div.Grid > div:nth-child(2) > div:nth-child(2) > div > div > div.prod-CallToActionSection.hf-BotRow > div > div > div.prod-product-cta-add-to-cart.display-inline-block > button

*** Keywords ***
Verify Page Loaded
    wait until element is visible  ${PRODUCT_BUTTON_ADDTOCART}

Add to cart
    click button  ${PRODUCT_BUTTON_ADDTOCART}