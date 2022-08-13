:: Change this target if you want to convert to a different expansion
:: cl=Classic, bc=BC, lk=WotLK, cata=Cata, mop=Panda, leg=Legion, wod=Draenor
set target=cl

:: This does the conversion
java -jar "jM2converter.jar" -in "Source/" -out "Result/" -f -%target%

:: Delete this line if you want the window to disappear after it's done
pause