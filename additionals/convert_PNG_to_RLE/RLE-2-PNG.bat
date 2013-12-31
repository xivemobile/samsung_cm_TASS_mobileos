@echo ***************************************
@echo Converting .RLE file to .PNG File.
@echo Downloaded From http://yagyagaire.blogspot.com
@echo -By Yagya Gaire.
@echo ***************************************
echo.
echo This is a batch conversion tool.
echo Make Sure You have got all RLE Files In RLE-Images Folder.
FOR %%F IN (RLE-Images/*.RLE) DO (
@echo Converting File : %%F
@echo.
@echo STEP 1 : Converting to RAW format.
@bin\5652rgb -rle < RLE-Images/%%F > RAW-Images/%%F.raw
@echo.
@echo STEP 2 : Converting to final PNG format.
@bin\convert -depth 8 -size 240x320 rgb:RAW-Images/%%F.raw PNG-Images/%%F.png
@echo ***************************************
@echo Conversion Done!
@echo -By Yagya Gaire.
@echo.
@echo ***************************************
@echo ***************************************
PAUSE)