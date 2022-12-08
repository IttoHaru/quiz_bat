::menuc = menuchoice
::gs = game start
::prc = percentage
::ttl = total awnsers

@echo off
title 3D printing quiz
color 0a
::wrong and correct awnsers
set k=0
set w=0

:menu
    color 0a
    cls
    echo Welcome to quiz about 3D printing knowlage
    echo ------------------------------------------
    echo choose what you want
    echo ------------------------------------------
    echo.
    echo 1. start
    echo 2. info
    echo 3. exit
    echo.

    echo select
    set /p menuc= 

    if %menuc% == 1 goto gs
    if %menuc% == 2 goto info
    if %menuc% == 3 exit
    goto menu

:info
    cls
    title info
    color 04
    echo INFO
    echo ------------------------------------------
    echo made by: Ondrej Plzak I3.C
    echo ------------------------------------------
    echo.
    echo contacts
    echo ---------
    echo GitHub: @IttoHaru
    echo Discord: IttoHaru#2854
    echo.
    echo.
    echo.
    pause
    cls
    goto menu

:gs
    cls
    title game starting
    color 0c
    echo Hi, welcome to this quiz about 3D printing knowlage
    echo.
    ::K = value for correct awnsers
    echo For every good awnser, a point will be added to the K
    ::W = value for wrong awnsers
    echo For every wrong awnser, a point will be added to the W
    echo.
    echo In the end, we will calculate the percantage of correct awnsers
    echo -------------------------------------------------------------------
    echo Press any key to get in to the quiz!
    pause >nul
    goto q1

:q1
    cls
    title Question 1
    color 04
    echo Question 1
    echo -----------
    echo.
    echo What material is most common in 3D printing?
    echo.
    echo [A] = PLA
    echo [B] = ABS
    echo [C] = Nylon
    echo.
    set /p ans1= Awnser: 
    ::logging logic
    if %ans1%==a (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q2
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q2
    )
    
:q2
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 2
    color 0c
    echo Question 2
    echo -----------
    echo.
    echo Who is the biggest czech 3D printer manufaturer?
    echo.
    echo [A] = Creality
    echo [B] = Prusa
    echo [C] = Bamboolabs
    echo.
    set /p ans2= Awnser: 
    ::logging logic
    if %ans2%==b (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q3
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q3
    )
    
:q3
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 3
    color 04
    echo Question 3
    echo -----------
    echo.
    echo What type of hotend is better?
    echo.
    echo [A] = PTFE
    echo [B] = ALLMETAL
    echo.
    set /p ans3= Awnser: 
    ::logging logic
    if %ans3%==b (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q4
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q4
    )

:q4
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 4
    color 0c
    echo Question 4
    echo -----------
    echo.
    echo What temperature range is used the most for PLA? (degrees Celsius)
    echo.
    echo [A] = 120 - 250 
    echo [B] = 200 - 220
    echo [C] = 180 - 230
    echo [D] = 180 - and more
    echo.
    set /p ans4= Awnser: 
    ::logging logic
    if %ans4%==c (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q5
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q5
    )

:q5
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 5
    color 04
    echo Question 5
    echo -----------
    echo.
    echo What type of 3D printer is easier for post processing?
    echo.
    echo [A] = FDM
    echo [B] = SLA
    echo.
    set /p ans5= Awnser: 
    ::logging logic
    if %ans5%==a (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q6
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q6
    )

:q6
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 6
    color 0c
    echo Question 6
    echo -----------
    echo.
    echo What method does 3D printing use?
    echo.
    echo [A] = Adative manufacturing
    echo [B] = Subtractive manufacturing
    echo.
    set /p ans6= Awnser: 
    ::logging logic
    if %ans6%==a (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q7
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q7
    )

:q7
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 7
    color 04
    echo Question 7
    echo -----------
    echo.
    echo What does SLA printer use?
    echo.
    echo [A] = Pellets
    echo [B] = Filament
    echo [C] = Liquid resin
    echo.
    set /p ans7= Awnser: 
    ::logging logic
    if %ans7%==c (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q8
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q8
    )

:q8
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 8
    color 0c
    echo Question 8
    echo -----------
    echo.
    echo Are filament sensitive to humidity?
    echo.
    echo [A] = Yes, all of them
    echo [B] = None of them are
    echo [C] = Humidity is important for filament
    echo [D] = Some less, Some more
    echo.
    set /p ans8= Awnser: 
    ::logging logic
    if %ans8%==d (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q9
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q9
    )

:q9
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 9
    color 04
    echo Question 9
    echo -----------
    echo.
    echo Can you print ninjaflex on bowden tube setup?
    echo.
    echo [A] = Yes
    echo [B] = No
    echo.
    set /p ans9= Awnser: 
    ::logging logic
    if %ans9%==b (
    set /a k=%k%+1
    echo Correct!
    pause
    goto q10
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto q10
    )

:q10
    cls
    ::debug
    ::echo %k%
    ::echo %w%
    ::
    title Question 10
    color 0c
    echo Question 10
    echo -----------
    echo.
    echo What is the firmware used on most printers?
    echo.
    echo [A] = Teacup
    echo [B] = Grbl
    echo [C] = Sprinter
    echo [D] = Aprinter
    echo [E] = Marlin
    echo [F] = Klipper
    echo.
    set /p ans10= Awnser: 
    ::logging logic
    if %ans10%==e (
    set /a k=%k%+1
    echo Correct!
    pause
    goto finn
    ) else (
    set /a w=%w%+1
    echo Wrong!
    pause
    goto finn
    )

:finn
    cls
    title Finish
    set /a ttl=%k%+%w%
    set /a prc=(100/%ttl%)*%k%
    color 0a
    echo This is the end of the quiz
    echo ----------------------------
    echo Here are your results: 
    echo.
    echo You had %k% correct awnsers
    echo.
    echo You had %w% incorrect awnsers
    echo.
    echo That means, you had %prc% percent correct
    echo.
    echo.
    echo Return to menu? (y/n)
    set /p rtrn=

    if %rtrn% == y goto menu
    if %rtrn% == n exit
    goto finn
