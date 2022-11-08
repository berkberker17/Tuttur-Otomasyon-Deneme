*** Settings ***
Documentation    Suite description
Resource    ../po/tuttur.robot
*** Keywords ***
check the login
    tuttur.create session
    tuttur.click the login button
    tuttur.close session
check the dashboard buttons
    tuttur.create session
    tuttur.click the dashboard buttons
    tuttur.close session
check the footer buttons
    tuttur.create session
    tuttur.click the footer buttons
    tuttur.close session