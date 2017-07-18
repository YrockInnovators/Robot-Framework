*** Settings ***
Library           SikuliXRobotLibrary
Library           ExcelLibrary
Library           OperatingSystem
Library           robot.api.logger
Library           Selenium2Library
Library           Dialogs
Library           Collections
Library           String
Resource          ../Resources/c_var.robot
Resource          ../Resources/ui_size_param.robot
Resource          ../Resources/Clear_search_filters.robot

*** Variables ***

*** Test Cases ***
Prompt Dialog details
    ${username}=    Get Value From User    Input username    <username>
    ${password}=    Get Value From User    Input password    hidden=yes
    ${ENV_RUN}=    Get Value From User    Input Sub-Application    V4_SIT
    Set Suite Variable    ${username}
    Set Suite Variable    ${password}
    Set Suite Variable    ${ENV_RUN}

Login ControlM
    Set Image Library    ${Control_Image_library}
    Press Keyboard Key    WIN + r
    Paste String    ${ControlM_Application}
    Press Keyboard Key    ENTER
    Wait In Seconds    15
    Set New Search Region In Active App    420, 141, ${login_panel}
    Click Region
    Paste String    ${password}
    Set New Search Region In Active App    590, 146, ${login_panel}
    Click Region

Import data file
    [Tags]    file-reading
    ${FILE_CONTENT}=    Get File    ${import_file}
    Log    File Content: ${FILE_CONTENT}

Plan Jobs
    Set Image Library    ${Control_Image_library}
    Wait in Seconds    25
    Set New Search Region In Active App    45, 226, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Set New Search Region In Active App    116, 547, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Set New Search Region In Active App    572, 315, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Set New Search Region In Active App    699, 405, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Paste String    ${ENV_RUN}
    Set New Search Region In Active App    951, 465, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Set New Search Region In Active App    168, 546, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Set New Search Region In Active App    990, 602, ${dashboard_panel}
    Click Region

Clear All Job Search
    Set Image Library    ${Control_Image_library}
    Wait In Seconds    20
    Set New Search Region In Active App    164, 194, ${dashboard_panel}
    Click Region
    User clear dashboard Job name

Order Jobs
    Set Image Library    ${Control_Image_library}
    Wait in Seconds    5
    Set New Search Region In Active App    412, 249, ${dashboard_panel}
    Click Region
    Paste String    TEICMUATAPR3602L1WS
    Wait In Seconds    3
    Set New Search Region In Active App    446, 279, ${dashboard_panel}
    Click Region
    Wait In Seconds    3
    Right Click Region
    Set New Search Region In Active App    537, 464, ${dashboard_panel}
    Click Region
    Set New Search Region In Active App    367, 198, ${right_click_panel}
    Click Region

Monitoring Jobs
    Set Image Library    ${Control_Image_library}
    Wait In Seconds    15
    Set New Search Region In Active App    44, 321, ${dashboard_panel}
    Click Region
    Wait In Seconds    5
    Set New Search Region In Active App    216, 290, ${dashboard_panel}
    Click Region

Free-up Jobs
    Set Image Library    ${Control_Image_library}
    Wait In Seconds    15
    Set New Search Region In Active App    437, 90, ${dashboard_panel}
    Click Region
    Set New Search Region In Active App    390, 213, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Paste String    TEICMUATAPR3602L1WS
    Wait In Seconds    1
    Set New Search Region In Active App    429, 245, ${dashboard_panel}
    Click Region
    Wait In Seconds    2
    Right Click Region
    Set New Search Region In Active App    530, 445, ${dashboard_panel}
    Click Region
