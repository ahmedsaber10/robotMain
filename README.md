Project name :

TBD.test automation project for ui and api scopes.

Tech : 

TBD. please refer to requirements.txt

_Project Structure_

    -> src
        -> be  [for backend scope]
        -> ui   [for ui scope]
        -> dsl  [domain specific language ex: driverFactory, data readers, hooks .etc]
    -> tests    

_Test levels covered_ : **TBD**

_Test types_ [Tags] :

    Regression 
    Sanity 
    End to End

_run cmd_

*robot* -d reports --variable browser:safari tests  
       
    -d report -> reporting
    browser to pass browser name (def: chrome) 
   
   
 Note : for parrellel execution :
    https://stackoverflow.com/questions/63551392/how-can-we-run-test-cases-on-different-browser-at-once-in-robotframework-using-r

parallel run  : **pabot**  --pabotlib --argumentfile1 chromeRunConfig.txt --argumentfile2 safariRunConfig.txt  -d reports  tests
