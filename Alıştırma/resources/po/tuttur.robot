*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    DebugLibrary
*** Variables ***
${HOMEPAGE}    https://www.tuttur.com/
${BROWSER}    chrome


*** Keywords ***
## Başarılı bir Login durumu
create session
    open browser      ${HOMEPAGE}    ${BROWSER}
    maximize browser window
    wait until element is visible     xpath=//*[@id="header"]/div/div[1]/div[1]/div
click the Login button

    click element     xpath=//*[@id="header"]/div/div[1]/div[1]/div/div/div[2]/a[1]
    wait until page contains    GİRİŞ YAP
    sleep    2s
    click element     xpath=//*[@id="modal"]/div/div[2]/div[2]/div/div/form/div[1]/div[1]/div/div/input
    input text    xpath=//*[@id="modal"]/div/div[2]/div[2]/div/div/form/div[1]/div[1]/div/div/input   34834172350
    click element    xpath=//*[@id="modal"]/div/div[2]/div[2]/div/div/form/div[1]/div[2]/div/div[1]/input
    input text    xpath=//*[@id="modal"]/div/div[2]/div[2]/div/div/form/div[1]/div[2]/div/div[1]/input   Berk1903
    click element    xpath=//*[@id="modal"]/div/div[2]/div[2]/div/div/form/div[1]/div[3]/div/label/input
    click element    xpath=//*[@id="modal"]/div/div[2]/div[2]/div/div/form/button
    wait until element is visible    xpath=//*[@id="header"]/div/div[1]/div[1]/div/div/div[4]/div[1]/div/img
    sleep    2s
## Dashboard butonların kontrolü
click the dashboard buttons
    click element    xpath=//*[@id="header"]/div/div[2]/div/a[1]
    sleep    2s
    wait until page contains element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div[2]/div/div[1]/div[1]
    click element    xpath=//*[@id="header"]/div/div[2]/div/a[2]
    sleep    2s
    wait until page contains element    xpath=//*[@id="tabButtonActive"]
    click element    xpath=//*[@id="header"]/div/div[2]/div/a[3]
    wait until page contains element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div/div/div[2]/div[2]
    sleep    2s
    click element    xpath=//*[@id="header"]/div/div[2]/div/a[4]
    wait until element is visible    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div[2]/div/div[2]/img
    sleep    2s
    click element    xpath=//*[@id="header"]/div/div[2]/div/a[5]
    wait until page contains element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div/div[1]/div
    sleep    2s
    click element    xpath=//*[@id="header"]/div/div[2]/div/a[6]
    wait until page contains element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div[1]/div
    sleep    2s
    click element    xpath=//*[@id="header"]/div/div[2]/div/a[8]
    wait until page contains element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div[1]
    sleep    2s
## Dashboard footerlar kontrolü
click the footer buttons

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element    xpath=//*[@id="footer"]/div/div[1]/div/div/div[3]/div[1]/nav/ul/li[2]/a
    wait until page contains element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div/div[1]/div
    sleep    2s
    click element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div/div[1]/a
    wait until page contains element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div[3]/div[2]/div/div[1]/span
    sleep    2s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element    xpath=//*[@id="footer"]/div/div[1]/div/div/div[3]/div[1]/nav/ul/li[3]/a
    wait until page contains    KİŞİSEL VERİLER
    click element    id=tabButton
    sleep    2s
    click element    xpath=//*[@id="modal"]/div/div[2]/div[1]/button
    sleep    2s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element    xpath=//*[@id="footer"]/div/div[1]/div/div/div[3]/div[1]/nav/ul/li[4]/a
    wait until page contains    İletişim
    sleep    2s
    click element    xpath=//*[@id="layout"]/div[14]/div[1]/div/div/div/div/div[1]/a
    sleep    2s
close session
    close browser