*** Settings ***
Library           SikuliXRobotLibrary

*** Variables ***
${computer_login_panel}    -756, -486    #Computer size
${computer_dashboard_panel}    -1280, -984
${computer_right_click_panel}    -500, -222
${computer_free_right_click_panel}    -229, -395

*** Keywords ***
Return screen size
    [Arguments]    ${coordinate x}    ${coordinate y}
    ${login_panel}    Set Variable    ${computer_login_panel}
    Screen size adjustments    ${coordinate x}    ${coordinate y}    ${login_panel}

Screen size adjustments
    [Arguments]    ${position x}    ${position y}    ${screen_size}
    Set New Search Region In Active App    ${position x},${position y}, ${screen_size}
