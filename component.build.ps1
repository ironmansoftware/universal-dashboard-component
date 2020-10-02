$OutputPath = "$PSScriptRoot\output"

task Build {
	Remove-Item -Path $OutputPath -Force -ErrorAction SilentlyContinue -Recurse
	Remove-Item -Path "$PSScriptRoot\public" -Force -ErrorAction SilentlyContinue -Recurse	
	Set-Location $PSScriptRoot

	&{
		$ErrorActionPreference = 'SilentlyContinue'
		npm install
		npm run build
	}

	New-Item -Path $OutputPath -ItemType Directory

	Copy-Item $PSScriptRoot\public\*.* $OutputPath
	Copy-Item $PSScriptRoot\UniversalDashboard.*.psd1 $OutputPath
	Copy-Item $PSScriptRoot\UniversalDashboard.*.psm1 $OutputPath
}

task . Build
