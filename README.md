# `AzCopy` &mdash; Example using GitHub Actions and Azure Pipelines

Using `AzCopy` inside `GitHub Actions` and `Azure Pipelines`

- https://dev.azure.com/PetroKolosovProjects/AzCopyPipelines

## Steps

- Create a container for AzCopy tests
- Generate SAS token for test container
- Configure SAS token inside variable group in Azure DevOps
- Configure SAS token inside secrets in GitHub

## AzCopy log file locations

- Azure DevOps Windows: `C:/Users/VssAdministrator/.azcopy`
- Azure DevOps Linux: `/home/vsts/.azcopy/`
- GitHub Actions Windows: `C:/Users/runneradmin/.azcopy`
- GitHub Actions Linux: `/home/runner/.azcopy`

## Install AzCopy Linux

- https://gist.github.com/kolosovpetro/bd16b64f765749a994ea9d0613e789a3

## Install AzCopy Windows

- `choco install azcopy10`
