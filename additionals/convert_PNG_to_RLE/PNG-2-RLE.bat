@echo ***************************************
@echo Converting .RLE file to .PNG File.
@echo Downloaded From http://yagyagaire.blogspot.com
@echo -By Yagya Gaire.
@echo.
@echo ***************************************
echo.
echo Make Sure You have got all PNG Files In Files Folder.
FOR %%F IN (PNG-Images/*.PNG) DO (
@echo Converting File : %%F
@echo.
@echo STEP 1 : Converting to RAW format.
@bin\convert -depth 8 PNG-Images/%%F rgb:RAW-Images/%%F.raw
@echo.
@echo STEP 2 : Converting to final RLE format.
@bin\to565 -rle < RAW-Images/%%F.raw > RLE-Images/%%F.rle
@echo.
@echo ***************************************
@echo Conversion Done!
@echo -By Yagya Gaire.
@echo.
@echo ***************************************
@echo.
PAUSE)