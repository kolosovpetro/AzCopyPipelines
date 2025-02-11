# `AzCopy` &mdash; Example via Azure Pipelines

Azure pipelines and GitHub Actions involving AzCopy utility.

- https://dev.azure.com/PetroKolosovProjects/AzCopyPipelines

## Azure DevOps tasks and GHA used

- [AzureFileCopy@4 - Azure file copy v4 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v4?view=azure-pipelines)
- [AzureCLI@2 - Azure CLI v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-cli-v2?view=azure-pipelines)
- [Azure/login Action](https://github.com/Azure/login)

## Steps

- Create a container for AzCopy tests
- Generate SAS token for test container
- Configure SAS token inside variable group in Azure DevOps
- Configure ARM service connection in Azure DevOps

## Install AzCopy Linux

- https://gist.github.com/kolosovpetro/bd16b64f765749a994ea9d0613e789a3

## Install AzCopy Windows

- `choco install azcopy10`
