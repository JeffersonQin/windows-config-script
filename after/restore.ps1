# get script path
$ScriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition

if (![System.IO.File]::Exists($ScriptPath + "\..\path.json")) {
	Write-Error "Path Configuration File Does not Exist..."
	Pause
	Exit
}
# get config contents
$FileContents = [System.IO.File]::ReadAllBytes($ScriptPath + "\..\path.json")
# get object from json
$BackupConfig = [Text.Encoding]::UTF8.GetString($FileContents) | ConvertFrom-Json

foreach ($name in $BackupConfig.psobject.properties.name) {
	$BakObject = $BackupConfig.$name
	$BakObject.path = $BakObject.path `
		-replace "%APPDATA%", $env:APPDATA `
		-replace "%LOCALAPPDATA%", $env:LOCALAPPDATA `
		-replace "%HOMEPATH%", $env:HOMEPATH `
		-replace "%HOMEDRIVE%", $env:HOMEDRIVE
	$BakObject.bak = $ScriptPath + "\..\bak\" + $BakObject.bak
	Write-Output ("Restore: " + $BakObject.bak + "`n==>      " + $BakObject.path)
	if ([System.IO.File]::Exists($BakObject.path) -or `
		[System.IO.Directory]::Exists($BakObject.path)) {
			Remove-Item $BakObject.path
	}
	if (!(Test-Path -path (Split-Path -Parent $BakObject.path)) `
		-and [System.IO.File]::Exists($BakObject.bak)) {
		New-Item (Split-Path -Parent $BakObject.path) -Type Directory
	}
	Copy-Item $BakObject.bak -Destination $BakObject.path -recurse -verbose
}
