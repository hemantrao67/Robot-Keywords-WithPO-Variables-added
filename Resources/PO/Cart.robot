*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CART_BUTTON_CHECKOUT}  css=#cart-root-container-content-skip > div > div > div.Cart-PACModal.standard-pac.pac-added.pac-new-ny.no-price-fulfillment.pac-vanilla-hf > div > div > div > div > div.Cart-PACModal-Body-right-rail.Grid-col.u-size-1.u-size-1-2-m.u-size-1-2-l > div > div > div.Grid-col.u-size-1-2.pos-actions-container > div > div.new-ny-styling.cart-pos-proceed-to-checkout > div > button.button.ios-primary-btn-touch-fix.hide-content-max-m.checkoutBtn.button--primary

*** Keywords ***
Verify Product Added
    wait until page contains  You just added 1 item

Proceed to Checkout
    click button  ${CART_BUTTON_CHECKOUT}