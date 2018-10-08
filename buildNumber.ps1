$masterBranch="master"
if ("$(Build.SourceBranchName)" -eq $masterBranch)
{
  echo "setting package version for master"
  Write-Host "##vso[task.setvariable variable=PackageVersion]$(Build.BuildNumber)"
}
else
{
  echo "prerelease branch version"
  Write-Host "##vso[task.setvariable variable=PackageVersion]$(Build.BuildNumber)-beta"
}