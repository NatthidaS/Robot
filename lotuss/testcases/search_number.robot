*** Settings ***
Resource  ../import.robot

***Test Cases ***
Use random number keyword to search
   random number

   #robot lotuss/testcases/search_number.robot