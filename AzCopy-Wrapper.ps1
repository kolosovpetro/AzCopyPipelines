param(
    [string] $SourceFolder = ".\test-images",
    [string] $StorageAccount = "storterraformd01",
    [string] $StorageContainer = "azcopycontainer",
    [string] $SasToken = $env:SAS_TOKEN,
    [string] $TargetFolderPrefix = "from-powershell"

)

Set-Location $PSScriptRoot

$SourceFolderAbsPath = (Get-Item $SourceFolder).FullName
Write-Host "Source folder Abs Path: $SourceFolderAbsPath"

$SourceFolderForAzCopy = "$SourceFolderAbsPath\*"
Write-Host "Source folder for Az Copy: $SourceFolderForAzCopy"

$TargetUrl = "https://$StorageAccount.blob.core.windows.net/$StorageContainer/$TargetFolderPrefix`?$SasToken"
Write-Host "Target prfix: $TargetFolderPrefix"
Write-Host "Target url: $TargetUrl"

azcopy copy "$SourceFolderForAzCopy" "$TargetUrl" --recursive=true

# example of call
#.\upload-to-azure.ps1 -SourceFolder "C:\Users\YourUser\test-images" `
#                       -StorageAccount "storterraformd01" `
#                       -StorageContainer "azcopycontainer" `
#                       -SasToken $env:SAS_TOKEN `
#                       -TargetFolderPrefix "from-powershell"
