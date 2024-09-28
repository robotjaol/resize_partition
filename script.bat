@echo off
echo Shrinking volume...

echo select volume 2 > shrink_volume.txt
echo shrink desired=1000 >> shrink_volume.txt  :: Replace with the amount of space you want to shrink (in MB)

diskpart /s shrink_volume.txt

del shrink_volume.txt

echo Volume shrunk successfully.
pause
