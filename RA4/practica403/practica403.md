# PRACTICA 3 DE LA UT4 JULIÁN ALMARZA ÁLVAREZ

1. Normalizar a mayúsculas

Entrada: $sys = "Windows Server"
Salida: WINDOWS SERVER
```
$sys = "Windows Server"
Write-Host $sys.ToUpper()
```
2. . Normalizar a minúsculas

Entrada: $user = "ADMINISTRATOR"
Salida: administrator
```
$user = "ADMINISTRATOR"
Write-Host $user.ToLower()
```
3. Limpieza de espacios extremos

Entrada: $ip = " 192.168.1.10 "
Salida: 192.168.1.10

```
$ip = " 192.168.1.10 "
Write-Host $ip.Trim()
```
4.  Eliminación total de espacios

Entrada: $mac = "00 AA 11 BB 22 CC"
Salida: 00AA11BB22CC
```
$mac = "00 AA 11 BB 22 CC"
Write-Host $mac.Replace(" ","")
```
5.  Longitud de la cadena

Entrada: $pass = "P@ssw0rd123"
Salida: 11
```
 $pass = "P@ssw0rd123"
Write-Host $pass.Length
```
6.  Cambio de separadores de fecha

Entrada: $fecha = "2023.10.05"
Salida: 2023-10-05
```
$fecha = "2023.10.05"
Write-Host $fecha.Replace(".","-")
```
7. Actualización de dominio

Entrada: $web = "www.miempresa.es"
Salida: www.miempresa.com
```
$web = "www.miempresa.es"
Write-Host $var.web = "www.miempresa.com"
```
8.  Censura de datos

Entrada: $tarjeta = "1234-5678-9012-3456"
Salida: 1234-5678-9012-XXXX
```
$tarjeta = "1234-5678-9012-3456"
$targetaCensurada = $tarjeta -Replace "\d{4}$","xxxx"
Write-Host $targetaCensurada
```
9. Cambio de barra de rutas (Linux a Windows)

Entrada: $rutaLinux = "/home/usuario/docs"
Salida: \home\usuario\docs
```
$rutaLinux = "/home/usuario/docs"
Write-Host $rutaLinux.Replace("/","\")
```
10. Doble reemplazo (limpiar prefijo y sufijo)

Entrada: $valor = "(Software)"
Salida: Software (Pista: Puedes encadenar dos .Replace() seguidos)
```
$valor = "(Software)"
Write-Host $valor.Replace("(","").Replace(")","")
```
11. Extraer prefijo de país

Entrada: $tlf = "+34-600111222"
Salida: +34
```
$tlf = "+34-600111222"
Write-Host $tlf.Split("-")[0]
```
12. Extraer año fiscal (primeros 4 caracteres)

Entrada: $codigo = "2024-FACTURA-SEP"
Salida: 2024
```
$codigo = "2024-FACTURA-SEP"
Write-Host $codigo.Split("-")[0]
```
13.  Ignorar el primer carácter

Entrada: $idEmpleado = "E55421"
Salida: 55421
```
$idEmpleado = "E55421"
Write-Host $idEmpleado.Substring(1)
```
14. Extraer extensión de archivo (últimos 3)

Entrada: $fichero = "informe.pdf"
Salida: pdf
```
$fichero = "informe.pdf"
Write-Host $fichero.Split(".")[-1]
```
15. Relleno de ceros (Padding)

Entrada: $numero = "7"
Salida: 007
```
$numero = "7"
Write-Host $numero.PadLeft(3,"0")
```
16.  Obtener nombre de usuario desde email

Entrada: $email = "pepe.garcia@empresa.com"
Salida: pepe.garcia
```
$email = "pepe.garcia@empresa.com"
Write-Host $email.Split("@")[0]
```
17. Obtener dominio desde email
Entrada: $email = "pepe.garcia@empresa.com"
Salida: empresa.com
```
$email = "pepe.garcia@empresa.com"
Write-Host $email.Split("@")[-1]
```
18. Obtener nombre de archivo de una ruta larga

Entrada: $path = "C:\Users\Admin\Downloads\instaler.msi"
Salida: instaler.msi
```
$path = "C:\Users\Admin\Downloads\instaler.msi"
Write-Host $path.Split("\")[-1]
```
19.  Obtener letra de unidad

Entrada: $path = "D:\Datos\Backups"
Salida: D:
```
$path = "D:\Datos\Backups"
Write-Host $path.Split("\")[-3]
```
20.  Separar CSV manual

Entrada: $linea = "Juan;Marketing;Madrid"
Salida: Muestra solo Marketing
```
$linea = "Juan;Marketing;Madrid"
Write-Host $linea.Split(";")[-2]
```
21. Detección de usuario Admin (Boolean). Devuelve True si empieza por “ADM”, False si no.

Entrada: $u = "ADM_Lopez"
Salida: True
```
$u = "ADM_Lopez"
Write-Host $u.StartsWith("ADM")
```
22. Formato de nombre propio. Convierte la primera letra en mayúscula y el resto en minúscula.

Entrada: $nombre = "JAVIER"
Salida: Javier
23.  Limpieza de Distinguished Name (AD). Extrae el nombre común (CN).

Entrada: $dn = "CN=Beatriz,OU=Ventas,DC=dominio,DC=local"
Salida: Beatriz
```
$dn = "CN=Beatriz,OU=Ventas,DC=dominio,DC=local"
Write-Host $dn.Substring(3).Split(",")[-4]
```
24. Entrada:
$n = "Fernando"
$a = "Alonso"
Salida: F.A.