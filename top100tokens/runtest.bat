rem ..\common\ 디렉토리에 공통 파일
rem 현재 디렉토리 top100tokens 디렉토리

for /d %%d in (*) do (
  echo %%d

  mkdir ..\run\%%d
  cd ..\run\%%d
  
  truffle init
  del contracts\Migrations.sol

  mkdir build
  mkdir build\contracts

REM common을 변경했을 때 한 번 풀고 실행!!

  copy /Y ..\..\common\build\contracts\ERC20Test.json build\contracts\
  copy /Y ..\..\common\build\contracts\ERC20TokenInterface.json build\contracts\
  copy /Y ..\..\common\build\contracts\Migrations.json build\contracts\

  copy /Y ..\..\common\migrations\2_deploy_contracts.js migrations\

  copy /Y ..\..\common\truffle-config.js .
  copy /Y ..\..\common\test\erc20test.js test\

  copy /Y ..\..\top100tokens\%%d\*.sol contracts\
  copy /Y ..\..\top100tokens\%%d\initialize.js test\

  python ..\..\common\GetVersionInfo.py contracts\Target.sol truffle-config.js

  npm install js-sha3

REM  텍스트 기반 출력
  truffle test --show-events > %%d_output_0730.txt

REM  json기반 출력
REM   -     "> No events were emitted" 포함됨 주의
REM     truffle test --runner-output-only > %%d_output_json.txt

  cd ..\..\top100tokens

  time /T

REM 디버깅 할 때 풀고 실행!!
REM  pause

)

echo DONE
