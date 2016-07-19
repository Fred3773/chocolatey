﻿# For debugging
#Import-Module C:\ProgramData\Chocolatey\helpers\chocolateyInstaller.psm1

$packageName = 'autodesk-fusion360'

$tooldir = $(Convert-Path $( Join-Path $MyInvocation.MyCommand.Definition ".."))
$env:PSModulePath = $env:PSModulePath + ";" + $tooldir
$commonDir = $(Convert-Path $( Join-Path $tooldir "../../Common") -ErrorAction SilentlyContinue)
if ("$commonDir" -ne "") {
    $env:PSModulePath = $env:PSModulePath + ";" + $commondir
}
Import-Module autodesk-shared

uninstall-autodeskapp $MyInvocation '73e72ada57b7480280f7a6f4a289729f'