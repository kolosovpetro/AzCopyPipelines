param(
    [string] $SourceFolder = ".\test-images",
    [string] $StorageAccount = "storterraformd01",
    [string] $StorageContainer = "azcopycontainer",
    [string] $SasToken = $env:SAS_TOKEN,
    [string] $TargetFolderPrefix = "from-powershell"

)

cd $PSScriptRoot

$TargetUrl = "https://$StorageAccount.blob.core.windows.net/$StorageContainer/$TargetFolderPrefix`?$SasToken"

$SourceFolderAbsPath = (Get-Item $SourceFolder).FullName

Write-Host "Source folder Abs Path: $SourceFolderAbsPath"
Write-Host "Target url: $TargetUrl"

$SourceFolderForAzCopy = "$SourceFolderAbsPath\*"

Write-Host "Source folder for Az Copy: $SourceFolderForAzCopy"

azcopy copy "$SourceFolderForAzCopy" "$TargetUrl" --recursive=true
