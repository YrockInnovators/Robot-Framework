*** Settings ***
Library           SikuliXRobotLibrary

*** Variables ***
${clear_key}      DELETE

*** Keywords ***
User clear dashboard Job name
    Wait In Seconds    2
    Set New Search Region In Active App    412, 249, ${dashboard_panel}
    Click Region
    Wait In Seconds    3
    Press Keyboard Key    ${clear_key}

User clear dashboard Job description
    Wait In Seconds    2
    Set New Search Region In Active App    446, 279, ${dashboard_panel}
    Click Region
    Press Keyboard Key    ${clear_key}
