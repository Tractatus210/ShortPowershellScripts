$downloads = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
$path = $downloads + "\libre.msi"
Invoke-WebRequest -Uri "https://download.documentfoundation.org/libreoffice/stable/7.4.4/win/x86_64/LibreOffice_7.4.4_Win_x64.msi" -OutFile $path

Install-Package $path