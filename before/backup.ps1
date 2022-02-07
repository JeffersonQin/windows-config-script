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

if ([System.IO.Directory]::Exists($ScriptPath + "\..\bak")) {
	Remove-Item ($ScriptPath + "\..\bak") -recurse
}

foreach ($name in $BackupConfig.psobject.properties.name) {
	$BakObject = $BackupConfig.$name
	$BakObject.path = $BakObject.path `
		-replace "%APPDATA%", $env:APPDATA `
		-replace "%LOCALAPPDATA%", $env:LOCALAPPDATA `
		-replace "%HOMEPATH%", $env:HOMEPATH `
		-replace "%HOMEDRIVE%", $env:HOMEDRIVE
	$BakObject.bak = $ScriptPath + "\..\bak\" + $BakObject.bak
	Write-Output ("Backup: " + $BakObject.path + "`n==>     " + $BakObject.bak)
	if (!(Test-Path -path (Split-Path -Parent $BakObject.bak)) `
		-and [System.IO.File]::Exists($BakObject.path)) {
		New-Item (Split-Path -Parent $BakObject.bak) -Type Directory
	}
	Copy-Item $BakObject.path -Destination $BakObject.bak -recurse -verbose
}
