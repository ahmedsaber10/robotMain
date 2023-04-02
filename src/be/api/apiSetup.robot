*** Settings ***

Documentation            FakeAPI: https://fakerestapi.azurewebsites.net/index.html
Library                  RequestsLibrary
Library                  Collections

*** Variables ***
#base url stores environment base urls  we will use BASE_URL[ENVIRONMENT] which could be set from robot runner command line.
&{BASE_URL}              test=https://fakerestapi.azurewebsites.net/api/v1     satging= https://1fakerestapi.azurewebsites.net/api/v1           
${ENVIRONMENT}           test
${ALIAS}                 fakeAPI


*** Keywords ***
Create session exampleApi 
#this would be costumized per api 
     [Arguments]    ${endpoint}     ${headers} 
    Create Session       ${ALIAS}         ${BASE_URL} + ${endpoint} 

