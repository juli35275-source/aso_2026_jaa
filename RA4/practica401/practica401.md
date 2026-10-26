# PRACTICA 2 DE LA UT3 JULIÁN ALMARZA ÁLVAREZ
Bloque 1: Inspección y selección de objetos (Get-Member y Select-Object)
1. Descubriendo tipos de objetos: ejecuta el comando que lista los servicios del sistema ```(Get-Service)``` y canaliza su salida para averiguar qué tipo de objeto (TypeName) devuelve exactamente.
```PS C:\WINDOWS\system32> Get-Service|Get-Member```
2. Explorando métodos y propiedades: lista únicamente las propiedades (Properties) que tienen los objetos devueltos por el comando Get-Process. ¿Qué propiedad almacena la ruta del ejecutable o el identificador del proceso (PID)?
```PS C:\WINDOWS\system32> Get-Process |Get-Member -MemberType Properties```
3. Acceso directo a propiedades: utilizando la sintaxis de paréntesis y el punto (Comando).Propiedad, muestra por pantalla únicamente el estado (Status) del servicio de Windows Update (wuauserv).
```PS C:\WINDOWS\system32> (Get-Service wuauserv).status```
4. Selección de propiedades específicas: muestra un listado de todos los usuarios locales del equipo (Get-LocalUser), pero haz que solo se muestren por pantalla las propiedades Name, Enabled y LastLogon.
```PS C:\WINDOWS\system32> Get-LocalUser|Select-Object -Property name,enabled,lastlogon```
5. Inspección completa: muestra absolutamente todas las propiedades y sus valores para el proceso explorer utilizando caracteres comodín.
```PS C:\WINDOWS\system32> Get-Process explorer |Get-Member *```
Bloque 2: Ordenación, agrupación y medición (Sort, Group, Measure)
1. 