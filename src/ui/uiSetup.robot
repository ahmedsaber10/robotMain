*** Settings ***

Documentation            This file is responsible for driver vars and init (browser, options ...etc)
Library                  SeleniumLibrary
Library                  Collections

*** Variables ***
&{BASE_URL_UI}           test=https://www.google.com/    satging= https://1www.google.com/           
${ENVIRONMENT}           test
${BROWSER}               chrome          


*** Keywords ***
Initialize browser
    ${list}     Create List    --start-maximized      --headless
    ${args} =     Create Dictionary    args=${list}
    ${options} =    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${options}    add_argument    --log-level\=3
    Call Method    ${options}    add_argument    --size
    Call Method    ${options}    add_argument    --window-size\=1920,1080
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-extensions
    Open Browser    about:blank    browser=${BROWSER}     alias=singleTone    options=${options}
    Set Selenium Speed    0.1
    Set Selenium Implicit Wait    5
    
Open web url     
    Open Browser    ${BASE_URL_UI}[${ENVIRONMENT}]    alias=singleTone    


##browser types 
# Firefox	firefox, ff
# Google Chrome	googlechrome, chrome, gc
# Headless Firefox	headlessfirefox
# Headless Chrome	headlesschrome
# Internet Explorer	internetexplorer, ie
# Edge	edge
# Safari	safari
