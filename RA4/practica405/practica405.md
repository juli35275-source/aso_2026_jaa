## practica 405 de Julián Almarza Álvarez

```
$logsWeb = @"
POST /api/v1/auth/login?session=a8f93j2&token=expired [IP: 192.168.10.45] [Agent: Mozilla/5.0] [ERR-0040-AUTH]
GET /api/v2/products/search?q=laptop&sort=asc [IP: 10.0.2.15] [Agent: Chrome/110.0] [ERR-0200-OK]
DELETE /api/v1/admin/drop_table?confirm=true&force=1 [IP: 172.16.254.88] [Agent: ScriptBot/1.2] [ERR-0500-FATAL]
GET /api/v1/user/profile?id=9921&token=xyz [IP: 192.168.10.102] [Agent: Firefox/109.0] [ERR-0403-FORBIDDEN]
"@
#divir segun el salto de lineas
$lineas = $logsWeb.split("`n")
foreach ($linea in $lineas) {
    #dividimos toda la lista en lineas para que ea mas facil de operar y mas tarde las convertiremos en partes cada linea
    $linea = $linea.trim()

    #comprobamos si el error termina en ok
    if($linea.EndsWith("OK]")){ continue }
    Write-Host $linea

    #cogemos las lineas de antes y las dividos en partes par que se más facil de manipular
    $partes = $linea.split(" ")


    #extreamos el metodo, por ejemplo el get
    $metodos=$partes[0]

    
    #extraer la ruta hasta el igual
    $ruta=$partes[1].split("?")
    $ruta_buena=$ruta[0]


    #extraer la ip con la parte final encriptada y sin corchetes
    $ip=$partes[3].Replace("]","")
    $ip_final=$ip.Split(".")
    $mascara=$ip_final[3] -Replace '\d+','***'
    $ip_enmascarada=$ip_final[0] + "." + $ip_final[1] + "." + $ip_final[2] + "." + $mascara

    #extrar el agente sin corchetes
    $agente=$partes[4].replace("[","")
    $agente2=$partes[5].replace("]","")
    $agente_final=$agente + $agente2
    

    #sacar el codigo de fallo
    $fallo=$partes[6].Split("-")
    $codigo_error=$fallo[1]

    Write-Host  $codigo_error
    [PSCustomObject]@{
        Method = $metodos
        CleanPath  = $ruta_buena
        MaskedIP   = $ip_enmascarada
        ErrorCode   = $codigo_error
        Agent    = $agente_final
    }
}
$reporte | Export-Csv -Path "auditoria-web.csv" -Encoding UTF8 -NoTypeInformation