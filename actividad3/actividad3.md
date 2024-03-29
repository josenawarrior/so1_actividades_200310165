# USAC - Ingeniería
## Sistemas Operativos 1 N - Actividad 3
## 9 de agosto de 2023
#
### Datos:

| Carné    | Nombre    |
|---------- |---------- |   
| 200310165 | *José Abraham Navarro de León*  |

<!-- Jose -->
---
## Parte 1: Gestión de Usuarios
**1.1 Creación de Usuarios:** Crea tres usuarios llamados "usuario1", "usuario2" y "usuario3".

Comando:

    sudo adduser usuario1

Salida:
![image](Media/cuser1.png)

Comando:

    sudo adduser usuario2

Salida:
![image](Media/cuser2.png)

Comando:

    sudo adduser usuario3

Salida:
![image](Media/cuser3.png)


**1.2 Asignación de Contraseñas:** Establece una nueva contraseñas para cada usuario creado.

Comando:

    sudo passwd usuario1

Salida:
![image](Media/pssuser1.png)

Comando:

    sudo passwd usuario2

Salida:
![image](Media/pssuser2.png)

Comando:

    sudo passwd usuario3

Salida:
![image](Media/pssuser3.png)


**1.3 Información de Usuarios:** Muestra la información de `usuario1` usando el comando `id`.

Comando:

    id usuario1

Salida:
![image](Media/iduser1.png)

**1.4 Eliminación de Usuarios:** Elimina `usuario3`, pero conserva su directorio principal. 

Comando:

    sudo deluser usuario3

Salida:
![image](Media/deluser3.png)

---
## Parte 2: Gestión de Grupos

**2.1 Creación de Grupos:**  Crea dos grupos llamados `grupo1` y `grupo2`.

Comando:

    sudo groupadd grupo1

Salida:
![image](Media/cgroup1.png)

Comando:

    sudo groupadd grupo2

Salida:
![image](Media/cgroup2.png)

**2.1 Agregar Usuarios a Grupos:**  Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`.

Comando:

    sudo adduser usuario1 grupo1

Salida:
![image](Media/user1group1.png)

Comando:

    sudo adduser usuario2 grupo2

Salida:
![image](Media/user2group2.png)


**2.3 Verificar Membresía:** Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`.

Comando:

    groups usuario1

Salida:
![image](Media/vergroup1.png)

Comando:

    groups usuario2

Salida:
![image](Media/vergroup2.png)

**2.4 Eliminar Grupo:**  Elimina `grupo2`.

Comando:

    sudo groupdel grupo2

Salida:
![image](Media/delgroup2.png)

## Parte 3: Gestión de Permisos

**3.1. Creación de Archivos y Directorios:**  

    
    3.1.1 Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.


Comandos:

Con el siguiente comando se ingresa al usuario en cuestión.

    su usuario1
![image](Media/user1.png)

Ahora se crea el archivo de texto, se escribe una linea de texto y se guarda con Ctrl+D.

    cat > archivo1.txt
    prueba archivo1 de texto en directorio principal de usuario1.
    Ctrl+D

![image](Media/archivo1.png)

    3.1.2 Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`.


Comandos:

    mkdir directorio1

![image](Media/mkdir1.png)

    cd directorio1
    cat > archivo2.txt
    prueba archivo2 de texto en directorio1 de usuario1.
    Ctrl+D

![image](Media/archivo2.png)

**3.2 Verificar Permisos:**   Verifica los permisos del archivo y directorio usando el comando `ls -l` y `ls -ld` respectivamente.

Comandos:

    ls -l


![image](Media/l.png)

    ls -ld

![image](Media/ld.png)

**3.3 Modificar Permisos usando `chmod` con Modo Numérico:**    Cambia los permisos del `archivo1.txt` para que sólo `usuario1` pueda leer y escribir (permisos `rw-`), el grupo pueda leer (permisos `r--`) y nadie más pueda hacer nada.

Se aprecian los permisos actuales
![image](Media/permisoactual.png)

Se hace el cambio de permisos.
Comandos:

    chmod 744 archivo1.txt

![image](Media/permiso1.png)

Nuevos permisos.

![image](Media/nuevopermiso.png)


**3.4 Modificar Permisos usando `chmod` con Modo Simbólico:**     Agrega permiso de ejecución al propietario del `archivo2.txt`.

Comando:

    chmod o+x archivo2.txt

![image](Media/permisosimx.png)

Se aprecia que la asignación en los permisos con la x.

![image](Media/permisosim1.png)

![image](Media/permisosim2.png)


**3.5 Cambiar el Grupo Propietario:**      Cambia el grupo propietario de `archivo2.txt` a `grupo1`.

Comando:

    chgrp grupo1 archivo2.txt

![image](Media/grupo1archivo2.png)


**3.6 Configurar Permisos de Directorio:**      Cambia los permisos del `directorio1` para que sólo el propietario pueda entrar (permisos `rwx`), el grupo pueda listar contenidos pero no entrar (permisos `r--`), y otros no puedan hacer nada.

Comando:

    chmod 740 directorio1

![image](Media/permisodir.png)

Cambio de permisos de directorio1.

![image](Media/permisodir01.png)

![image](Media/permisodir02.png)

**3.7 Comprobación de Acceso:**       Intenta acceder al `archivo1.txt` y `directorio1/archivo2.txt` como `usuario2`. Nota cómo el permiso de directorio afecta el acceso a los archivos dentro de él.

Comando:

    cat /home/usuario1/archivo1.txt
    

![image](Media/user1archivo1.png)

Comando:

    cat /home/usuario1/directorio1/archivo2.txt

![image](Media/user1archivo2.png)

**3.8 Verificación Final:**     Verifica los permisos y propietario de los archivos y directorio nuevamente con `ls -l` y `ls -ld`.   

Comando:

    ls -l

![image](Media/ls-l.png)

    ls -ld

![image](Media/ls-ld.png)


## Reflexión: (Opcional)

**¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?**  

Para que los accesos a los distintos archivos y directorios esten bien fiscalizados de tal manera no pueda haber accesos no autorizados a infomación de otras áreas.

**¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?**

Ninguna otra.