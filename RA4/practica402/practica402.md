1.- Comprobando el tipado dinámico

Declara una variable llamada $recurso y asígnale el valor numérico 8080. Muestra por pantalla el nombre de su tipo de dato. A continuación, en la línea siguiente, asígnale la cadena "Puerto HTTP" a esa misma variable y vuelve a mostrar su tipo de dato.

```
$recurso = 888
$recurso.GetType().name
$recurso = "Puerto HTTP"
$recurso.GetType().name
```
2.- Forzando el tipado estático

Declara con tipado estático una variable entera llamada $maxConexiones con valor 100 y una variable booleana llamada $firewallActivo con valor $true. Escribe en un comentario qué error exacto devuelve PowerShell si intentas ejecutar $maxConexiones = "Cien".