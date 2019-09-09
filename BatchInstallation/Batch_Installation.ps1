#Install choco .exe and add choco to PATH
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#Install all the packages
for /F "eol=#" %%G in (packages.txt) do choco upgrade %%G -y
