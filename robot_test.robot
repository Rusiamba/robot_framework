*** Settings ***
Library     DateTime
Library     RequestsLibrary

*** Variable ***
${base_url}  https://timeapi.io/

*** Test Cases ***
STEP 1 Date
    ${date}  Get Current Date  result_format=%D/%M/%Y %H:%M:%S
    Log To Console  CURRENT TIME AND DATE ${date}

    Create Session  get_time    ${base_url}
    ${response}=    Get On Session     get_time    url=api/Time/current/zone?timeZone=Europe/
    Log To Console  ${response.status_code}
    #Log To Console  ${response.content}

