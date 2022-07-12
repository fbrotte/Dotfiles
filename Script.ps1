# Install Chocolatey

# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
cls


$file_data = Get-Content $PSScriptRoot\packages\windows.list;


#  Install windows program
foreach ($i in $file_data)
{
    choco install $i --confirm;
}


# Read-Host -Prompt "Press Enter to exit"