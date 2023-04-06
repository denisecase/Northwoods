# Script to build the documentation

Write-Host  "Building documentation..."
Set-Location ..

Write-Host "Building documentation..."
jupyter-book build Northwoods

Write-Host "Returning to Northwoods folder..."
Set-Location Northwoods


Write-Host "Copying _build/html/* to docs folder..."
Copy-Item -Path _build/html/* -Destination docs -Recurse -Force

Write-Host "Done!"
