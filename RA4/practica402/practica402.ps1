$fechaActual = Get-Date
Write-Host $fechaActual.Year
Write-Host "La contraseña caducará exactamente el" $fechaActual.AddDays(45)