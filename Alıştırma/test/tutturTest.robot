*** Settings ***
Resource    ../Resources/app/tutturApp.robot

*** Test Cases ***

verify check the login
    tutturApp.check the login
verify check the dashboard buttons
    tutturApp.check the dashboard buttons
verify check the footer buttons
    tutturApp.check the footer buttons