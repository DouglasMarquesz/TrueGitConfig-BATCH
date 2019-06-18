@echo off
color A
rmdir /s /q .git
cls
echo ----------[%time%]-----------
echo.
echo Ideia original: Igor Bueno.
echo Desenvolvedor: Douglas j. Marques.
echo.
echo ----------[%time%]-----------
echo.
pause

:inicio
cls
color A
echo --------------------------------
set /p name=Digite seu nome: 
git config --global user.name "%name%"
set /p email=Digite seu email: 
git config --global user.email "%email"
echo --------------------------------
color A
echo.
echo --------------------------------
echo Configuracoes de Proxy.
echo.
echo 1 - Estou no computador de casa.
echo 2 - Estou conectador na escola.
echo.
set /p op= Opcao: 
echo --------------------------------
cls
color B
echo --------------------------------
echo Preencha as informacoes:
echo.
set /p commit= Digite o Commit: 
set /p remote= Digite a URL do diretorio: 
echo --------------------------------
color A

if %op%==1 (
	color E
		echo -----------------
		echo.
		echo -----------------
		echo Removendo Proxy...
			git config --global --unset http.proxy
			echo -----------------
		echo.

		echo -----------------
		echo Criando pasta git...
			git init
			echo -----------------
		echo.

		echo -----------------
		echo Adicionando todos arquivos...
			git add .
			echo -----------------
			cls
		echo.

		echo -----------------
		echo Colocando Commit... 
			git commit -m "%commit%"
			echo -----------------
		echo.
		echo -----------------
		echo Adicionando endereco URL...
			git remote add origin %remote%
			echo -----------------
		echo.
		echo -----------------
		echo Enviando arquivos... Aguarde...
			git push origin master
			echo -----------------
		echo. 
) else (
	git config --global http.proxy http://aluno:aluno@192.168.0.1:8080
	color E
		echo -----------------
		echo.
		echo -----------------
		echo Removendo Proxy...
			git config --global --unset http.proxy
			echo -----------------
		echo.

		echo -----------------
		echo Criando pasta git...
			git init
			echo -----------------
		echo.

		echo -----------------
		echo Adicionando todos arquivos...
			git add .
			echo -----------------
			cls
		echo.

		echo -----------------
		echo Colocando Commit... 
			git commit -m "%commit%"
			echo -----------------
		echo.
		echo -----------------
		echo Adicionando endereco URL...
			git remote add origin %remote%
			echo -----------------
		echo.
		echo -----------------
		echo Enviando arquivos... Aguarde...
			git push origin master
			echo -----------------
		echo. 
)
pause
cls
echo.
color A
echo Versao teste, caso tenha algum erro desculpa ae...
echo TrueGitConfig v1.0 /2019
echo MaxterDesigner-(DouglasMarques)
echo.
pause
exit