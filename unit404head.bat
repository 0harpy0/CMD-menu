@REM EXERCICIO DE ARQUIVO DE LOTE
@ECHO OFF
cls
:MENU
ECHO menu
ECHO 1. exibir o ip do computador 
ECHO 2. listar o conteudo de um arquivo
ECHO 3. trocar a data do computador - precisa ser adm
ECHO 4. trocar a hora do computador - precisa ser adm
ECHO 5. exibir o nome do computador
ECHO 6. exibir os arquivos da area de trabalho
echo 7. listar drivers intalados
ECHO 8. sair
echo 9. proxima pagina 
SET /P OPCAO=ESCOLHA UMA OPCAO:
REM ECHO A OPCAO ESCOLHIDA FOI %OPCAO%
IF %OPCAO%==1 GOTO IP
IF %OPCAO%==2 GOTO searchf
IF %OPCAO%==3 GOTO tdata
IF %OPCAO%==4 GOTO thora
IF %OPCAO%==5 GOTO symyname
IF %OPCAO%==6 GOTO ardtrblho
IF %OPCAO%==7 GOTO ldi
IF %OPCAO%==8 GOTO SAIR
IF %OPCAO%==9 GOTO MENU2

bat

:ERRO
ECHO OPCAO INVALIDA!
PAUSE
CLS
GOTO MENU

:IP
IPCONFIG
PAUSE
CLS
GOTO MENU


:searchf
SET /P arquivo="escreva o caminho ate o arquivo! e nao esqueca de escrever a sua extensao tbm! : " :
type %arquivo%
pause
cls
goto menu


:tdata
echo nao se esqueca que voce precisa ser o adm pra isso!
date 	
pause
cls
goto menu


:thora
echo nao se esqueca que voce precisa ser o adm pra isso!
time 
pause
cls
goto menu

:symyname
hostname
echo este e o seu nome??
pause
cls
goto menu


:ldi
echo se prepare para ver uma grande lista sobre seu computador!
pause
driverquery /FO list /v
pause
echo isso q voce queria??
pause
cls
goto menu


:ardtrblho
dir C:\Users\LabInfo\Desktop
echo isso q voce queria??
pause
cls
goto menu

:

REM OUTRAS OPCOES


:MENU2
cls
ECHO menu
ECHO 1. vida computador - precisa ser adm
ECHO 2. examinar e reparar arquivos do sistema - precisa ser adm
ECHO 3. trocar a data do computador
ECHO 4. trocar a hora do computador
ECHO 5. exibir o nome do computador
ECHO 6. exibir os arquivos da area de trabalho
echo 7. listar drivers intalados
ECHO 8. sair
echo 9. proxima pagina 
echo 10. pagina anterior
SET /P OPCAO=ESCOLHA UMA OPCAO:
REM ECHO A OPCAO ESCOLHIDA FOI %OPCAO%
IF %OPCAO%==1 GOTO health
IF %OPCAO%==2 GOTO ufc
IF %OPCAO%==3 GOTO tdata
IF %OPCAO%==4 GOTO thora
IF %OPCAO%==5 GOTO symyname
IF %OPCAO%==6 GOTO ardtrblho
IF %OPCAO%==7 GOTO ldi
IF %OPCAO%==8 GOTO SAIR
IF %OPCAO%==9 GOTO 
IF %OPCAO%==10 GOTO MENU
	
:SAIR
ECHO ate logo!!
PAUSE
CLS

:health
ECHO voce escolheu a opcao de dar uma olhada na saude de seu computador! nao se esqueça que voce precisa ser o adm para isso!
PAUSE
powercfg/energy
ECHO ate logo!!
PAUSE
CLS
goto MENU2

:ufc
ECHO voce escolheu a opcao de examinar a integridade dos seus arquivos de sistema! nao se esqueça que voce precisa ser o adm para isso!
PAUSE
sfc /scannow
ECHO ate logo!!
PAUSE
CLS
goto MENU2
