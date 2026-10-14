# PRACATICA 1 DE LA UT3 JULIÁN ALMARZA ÁLVAREZ
1. Crea un script que muestre por pantalla la fecha y la hora del sistema
#!/BIN/BASH/
date
2. Mejora el script anterior para que muestre un mensaje de la forma: “Hoy es jueves día 15 de abril y son las 12:00 horas”. Tendrás que mirar la ayuda del comando date para poder extraer las diferentes partes de la fecha y hora.


![](./imagenes/Captura%20de%20pantalla%202026-10-07%20102355.png)


3. Crea un script que solicite la usuario dos números y luego imprima la suma de esos números


![](./imagenes/script4.png)


4. Crea un script que determine si un número introducido por el usuario es par o impar. Para realizar este ejercicio puedes utilizar el operador módulo, que es el símbolo %


![](./imagenes/practica4.png)


5. Escribe un script que solicite el nombre de un archivo y luego imprima cuántas líneas tiene ese archivo. Verifica que el archivo exista antes de contar las líneas.


![](./imagenes/script5.png)


6.  Escribe un script que imprima la tabla de multiplicar de un número introducido por el usuario.


![]()


7. Crea un script que solicite el nombre de un archivo y luego informe si el archivo tiene permisos de lectura, escritura y ejecución para el usuario actual.


![](./imagenes/script7.png)


(-d significa comprobar si existe y -w si puede escribir)
8.  Escribe un script que copie todos los archivos con una extensión específica desde un directorio de origen a uno de destino.



![](./imagenes/script8.png)


9.  Escribe un script que cuente cuántas palabras hay en un archivo y las muestre en la terminal

![](./imagenes/script5.png)


(en vez de poner -l tienes que poner -w)


10.  Crea un script que comprima todos los ficheros del directorio Escritorio que está dentro del directorio personal del usuario actual en un fichero llamado backup.DDMM.gz donde DD es el día del mes y MM el mes. Para comprimir puedes utilizar el comando tar de la siguiente manera:
```
tar -zcvf nombre-archivo.tar.gz nombre-directorio
```


![](./imagenes/script10.png)