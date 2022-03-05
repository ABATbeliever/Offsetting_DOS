echo Log=%LOG%
cd ..
set col=While
if exist "colg.dll" (
  set col=Green
)
if exist "colb.dll" (
  set col=Blue
)
if exist "colr.dll" (
  set col=Red
)
if exist "coly.dll" (
  set col=Yelow
)
echo Color=%col%