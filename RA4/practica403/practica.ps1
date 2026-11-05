$dn = "CN=Beatriz,OU=Ventas,DC=dominio,DC=local"
Write-Host $dn.Substring(3).Split(",")[-4]