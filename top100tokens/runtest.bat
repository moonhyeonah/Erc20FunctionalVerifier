rem ..\common\ ���丮�� ���� ����
rem ���� ���丮 top100tokens ���丮

for /d %%d in (*) do (
  echo %%d

  mkdir ..\run\%%d
  cd ..\run\%%d
  
  truffle init
  del contracts\Migrations.sol

  mkdir build
  mkdir build\contracts

REM common�� �������� �� �� �� Ǯ�� ����!!

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

REM  �ؽ�Ʈ ��� ���
  truffle test --show-events > %%d_output_0730.txt

REM  json��� ���
REM   -     "> No events were emitted" ���Ե� ����
REM     truffle test --runner-output-only > %%d_output_json.txt

  cd ..\..\top100tokens

  time /T

REM ����� �� �� Ǯ�� ����!!
REM  pause

)

echo DONE
