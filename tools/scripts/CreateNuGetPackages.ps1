$srcPath = [System.IO.Path]::GetFullPath(($PSScriptRoot + '\..\..\src'))
$installPackageFolder = "$srcPath\nuget\content\Admin\tools"
$installPackagePath = "$installPackageFolder\install-oauth-google.zip"

# delete existing packages
Remove-Item $PSScriptRoot\*.nupkg

if (!(Test-Path $installPackageFolder))
{
	New-Item $installPackageFolder -Force -ItemType Directory
}

Compress-Archive -Path "$srcPath\nuget\snadmin\install-oauth-google\*" -Force -CompressionLevel Optimal -DestinationPath $installPackagePath

nuget pack $srcPath\SenseNet.OAuth.Google\SenseNet.OAuth.Google.nuspec -properties Configuration=Release -OutputDirectory $PSScriptRoot
nuget pack $srcPath\SenseNet.OAuth.Google\SenseNet.OAuth.Google.Install.nuspec -properties Configuration=Release -OutputDirectory $PSScriptRoot
