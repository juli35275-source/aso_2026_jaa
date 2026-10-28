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
1. Ordenación descendente: obtén un listado de todos los procesos actuales del sistema ordenados por su consumo de memoria de trabajo (WS) de mayor a menor.
``` Get-Process |sort ws -Descending```
2. Auditoría de servicios con agrupación: agrupa todos los servicios del sistema (Get-Service) según su tipo de inicio (StartType) para saber de un vistazo cuántos servicios son automáticos, manuales o están deshabilitados.
```Get-Service |group StartType```
3. Agrupación por múltiples criterios: agrupa las cuentas de usuario locales (Get-LocalUser) en función de si están habilitadas (Enabled) y si requieren contraseña (PasswordRequired).
```Get-LocalUser |group enabled,passwordrequired```
4. Cálculo de estadísticas de ficheros: dirígete al directorio C:\Windows\System32 (o indícalo como ruta en Get-ChildItem) y calcula el tamaño (Length) mínimo, máximo y el promedio de los archivos que se encuentran directamente en esa carpeta.
```Get-ChildItem|measure Length -Average -maximum -minimum```
Bloque 3: Filtrado de objetos (Where-Object)
1. Filtrado básico (Sintaxis moderna): muestra todos los servicios del sistema cuyo estado (Status) sea exactamente Running. Utiliza la sintaxis simplificada (sin llaves ni $_).
```Get-Service |Where-Object status -Like running```
2. Filtrado clásico (Scriptblock): muestra todas las cuentas de usuario locales que estén deshabilitadas (Enabled igual a $false) utilizando obligatoriamente la sintaxis de bloque de script ({ $_... }).
```Get-LocalUser |Where-Object {$_.enabled -like $false}```
3. Filtrado con comodines: busca todos los procesos en ejecución cuyo nombre (Name) empiece por la letra ”s” y tenga cualquier cadena detrás.
```Get-Process |Where-Object name -Like s*```
4. Filtrado numérico: obtén un listado de los procesos cuyo identificador (Id) sea mayor o igual a 5000.
```Get-Process |Where-Object {$_.id -ge 5000}```