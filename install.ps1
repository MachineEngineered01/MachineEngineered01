$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
$testadmin = $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
if ($testadmin -eq $false) {
Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
exit $LASTEXITCODE
}


Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade chocolatey -y --force
choco install 7zip -y --force
choco install googlechrome -y --force
choco install vscode -y --force
choco install vscode-code-runner -y --force
choco install python -y --force
choco install androidstudio -y --force
choco install android-sdk -y --force
choco install microsoft-visual-cpp-build-tools
choco install vcredist2017 -y --force
choco install msvisualcplusplus2013-redist -y --force
choco install arduino -y --force
choco install vlc -y --force
choco install rufus -y --force

choco install utorrent -y --force
choco install server-jre -y --force
choco install oracle17jdk -y --force
choco install jdk11 -y --force
choco install apache-netbeans.portable -y --force
choco install putty.install -y --force
choco install git -y --force