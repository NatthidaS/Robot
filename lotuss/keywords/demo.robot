*** Settings ***
Resource  ../import.robot

*** Keywords ***
open website
    open browser  ${weburl.url_lotuss}   ${browser.chrome}

login lotuss page
    wait until element is visible  ${elements.login_id} 
    Click element   ${elements.login_btn} 
    # Click button  xpath=//*[@id="header-register-btn"]/button  #register button
    wait until element is visible  id=username
    #input text  xpath= //*[@class = 'MuiInputBase-input MuiFilledInput-input']   ${login.username}
    input text  ${elements.input_user}  ${login.username}
    wait until element is visible  id=password
    #input text   xpath= //*[@class='MuiInputBase-input MuiFilledInput-input MuiInputBase-inputAdornedEnd MuiFilledInput-inputAdornedEnd']  ${login.password}
    input text  ${elements.input_password}   ${login.password}
    
    wait until element is visible  id=login
    Click button  xpath=//*[@id="login"]

    wait until element is visible  id=btn-decline
    Click button  xpath=//*[@id="btn-decline"]
    #Check login by userlogin
    wait until element is visible  xpath=//*[@id="my-profile-button"]/div  
    Element Text Should Be  xpath= //*[@class = 'one-line']  ${login.username}

    #Check login by button
    #wait until element is visible   xpath=//*[@id="activate-clubcard-button"]/button 
    #Element Text Should Be  xpath=//*[@id="activate-clubcard-button"]/button     เริ่มต้นใช้งาน มายโลตัส

random number keyword
  wait until element is visible  ${elements.search_bar} 
  ${public.v_random_number} =  random_number_lib 
  #Input text  ${elements.search_bar}   ข้าวหอมมะลิ 
  Input text   id=search-bar-input    ${public.v_random_number}  
  Press Keys  ${elements.search_bar}    ENTER
  wait until element is visible   id=product-result-title  30s

random number 
   open browser  ${weburl.url_lotuss}   ${browser.chrome}
   wait until element is visible   id=search-bar-input
   ${public.v_random_number} =  random_number_lib  
   Input text   id=search-bar-input    ${public.v_random_number} 
   Press Keys   id=search-bar-input    ENTER  
   wait until element is visible   id=product-homepage-back  10s










