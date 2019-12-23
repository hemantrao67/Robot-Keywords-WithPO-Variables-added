*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCHRESULTS_LINK_1STPRODUCT}  css=#searchProductResult > ul > li.Grid-col.u-size-6-12.u-size-1-4-m.u-size-1-5-xl.search-gridview-last-col-item.search-gridview-first-grid-row-item > div > div.search-result-gridview-item.clearfix.arrange-fill > div:nth-child(5) > div > a
${SEARCHRESULTS_TEXT_RESULTS}  results

*** Keywords ***
Verify Search Completed
    wait until page contains  ${SEARCHRESULTS_TEXT_RESULTS}

Click Product link
#    click link  ul li:nth-child(5) a[class^=product-title]
    click link  ${SEARCHRESULTS_LINK_1STPRODUCT}

