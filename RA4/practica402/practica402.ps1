$fechaActual = Get-Date
Write-Host $fechaActual.Year
Write-Host "La contrasenia caducara exactamente el" $fechaActual.AddDays(45)