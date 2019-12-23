*** Settings ***
Resource  ../Resources/walmartApp.robot
Resource  ../Resources/common.robot

Suite Setup  common.Create Dummy data  #This keyword runs at the very begining, before first test case.
Test Setup  common.Begin web test  #opens the browser at the start of each test case
Test Teardown  common.End web test  #closes the browser at the end of each test case
Suite Teardown  common.Delete Dummy data  #This keyword runs at the very end, after all test cases are run.

*** Variables ***
${BROWSER}  GC
${URL}  https://www.walmart.com/
${PRODUCT}  Ferrari

*** Test Cases ***
Walmart shopping - Search for a product
    [Tags]
    walmartApp.Search for a product

Walmart shopping - View product
    [Tags]
    walmartApp.Search for a product
    walmartApp.Select Product from Search Results

Walmart shopping - Add to cart
    [Tags]
    walmartApp.Search for a product
    walmartApp.Select Product from Search Results
    walmartApp.Add product to cart

Walmart shopping - proceed to checkout
    [Tags]  current
    walmartApp.Search for a product
    walmartApp.Select Product from Search Results
    walmartApp.Add product to cart
    walmartApp.Proceed to checkout






