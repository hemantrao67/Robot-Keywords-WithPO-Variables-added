*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***

Search for a product
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for product
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add product to cart
    Product.Add to cart
    Cart.Verify Product Added

Proceed to checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded


