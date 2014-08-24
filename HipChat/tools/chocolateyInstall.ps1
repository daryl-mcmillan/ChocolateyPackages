$package = 'HipChat'

try {
  $params = @{
    PackageName = $package;
    FileType = 'msi';
    SilentArgs = '/quiet';
    Url = "https://www.hipchat.com/downloads/latest/qtwindows";
  }

  Install-ChocolateyPackage @params

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
