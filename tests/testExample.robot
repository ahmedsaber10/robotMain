*** Settings ***
Documentation            This file is responsible for driver vars and init (browser, options ...etc)
Library                  SeleniumLibrary
Resource                  ../src/ui/uiSetup.robot
Test Setup             ui.Initialize browser

# *** Variables ***
*** Test Cases ***
Verify 
     [Tags]     regression/smoke     component/integratiom/e2e
     ui.Initialize browser
     ui.Open web url