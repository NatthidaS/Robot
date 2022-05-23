*** Settings ***
Library   SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library  String
Library  DateTime
Library  pythonlibs/util.py
Resource   keywords/demo.robot
Variables   resources/variables.yaml
Variables   resources/elements.yaml
#Variables  resources/configs/${ENV}/config.yaml
#Variables  resources/testdata/${ENV}/user_data.yaml
#Variables  resources/testdata/message_${LANG}.yaml

