$user = $env:UserName
$desktopPath = -join("C:\Users\",$user,"\Desktop")
$desktopContents = Get-ChildItem -Path $desktopPath -Name
$chrome = "Google Chrome.lnk"
$chromeDesk = "$desktopPath\$chrome"
$edge = "Microsoft Edge.lnk"
$edgeDesk = "$desktopPath\$edge"
$chromeSh = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk"
$edgeSh = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"


if ($desktopContents.Contains($chrome)){
    $input = Read-Host "There is a Chrome desktop shortcut. Do you want to remove it? Y or N"
    if ($input -eq "Y"){Remove-Item -Path $chromeDesk}
    }else{
        $input = Read-Host "There is no Chrome desktop shortcut. Do you want to add it? Y or N"
        if ($input -eq "Y"){Copy-Item $chromeSh -Destination $desktopPath}
    }

if ($desktopContents.Contains($edge)){
    $input = Read-Host "There is an Edge desktop shortcut. Do you want to remove it? Y or N"
    if ($input -eq "Y"){Remove-Item -Path $edgeDesk}
    }else{
        $input = Read-Host "There is no Edge desktop shortcut. Do you want to add it? Y or N"
        if ($input -eq "Y"){Copy-Item $edgeSh -Destination $desktopPath}
    }
    